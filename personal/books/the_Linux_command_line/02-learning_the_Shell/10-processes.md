---
reviewed_on: "2025-06-30"
---

# Processes

- `ps`: report a snapshot of current processes.

- `top`: display tasks.

- `jobs`: list active jobs.

- `bg`: place a job in the background.

- `fg`: place a job in the foreground.

- `kill`: send a signal to a process.

- `killall`: kill processes by name.

- `nice`: run a program with modified scheduling priority.

- `renice`: alter priority of running processes.

- `nohup`: run a command line immune to hang ups.

- `halt/poweroff/reboot`: halt, power-off, or reboot the system.

- `shutdwon`: shut down or reboot the system.

## How a process works

When a system starts up, the kernel initiates a few of its own activities as processes and launches a program called "init". `init`, in turn, starts `systemd` which starts all the system services...

The fact that a program can launch other programs is expressed in the process scheme as a **parent process** producing a **child process**.

...Like files, processes also have owners and user IDs, effective user IDs, and so on.

## Viewing processes

```bash
ps # Show the processes associated with the current terminal session

ps x # Show the list of processes you own, regardless of whether they have a controlling terminal.
```

With the `x` option, a new column called `STAT` is added.

| state | meaning                                                                                                               |
|:-----:|:--------------------------------------------------------------------------------------------------------------------- |
|  `R`  | running.                                                                                                              |
|  `S`  | sleeping.                                                                                                             |
|  `D`  | uninterruptible sleep. The process is waiting for I/O.                                                                |
|  `T`  | stopped.                                                                                                              |
|  `Z`  | A defunct or "zombie" process. This is a child process that has terminated but has not been cleaned up by its parent. |
|  `<`  | high-priority process. This property of a process is called niceness.                                                 |
|  `N`  | low-priority process.                                                                                                 |

```bash
ps aux # Show all processes
```

...Using the options without the leading dash invokes the command with "BSD-style" behavior...

| header  | meaning                                                                         |
|:-------:|:------------------------------------------------------------------------------- |
| `USER`  | user ID. This is the owner of the process.                                      |
| `%CPU`  | CPU.                                                                            |
| `%MEM`  | memory.                                                                         |
|  `VSZ`  | virtual memory size.                                                            |
|  `RSS`  | resident set size. This is the amount of RAM the process is using in kilobytes. |
| `START` | time when the process started.                                                  |

### Viewing processes dynamically with `top`

```bash
top

# top - 14:59:20 up 6:30, 2 users, load average: 0.07, 0.02, 0.00
# Tasks: 109 total, 1 running, 106 sleeping, 0 stopped, 2 zombie
# Cpu(s): 0.7%us, 1.0%sy, 0.0%ni, 98.3%id, 0.0%wa, 0.0%hi, 0.0%si
# Mem: 319496k total, 314860k used, 4636k free, 19392k buff
# Swap: 875500k total, 149128k used, 726372k free, 114676k cach
```

`top` displays a continuously updating (by default, every three seconds) display of the system processes listed in order of process activity...The `top` display consists of two parts: a system summary at the top of the display, followed by a table of processes sorted by CPU activity.

| row |      field      | meaning                                                                 |
|:---:|:---------------:|:----------------------------------------------------------------------- |
|  1  |      `top`      | name of the program.                                                    |
|     |   `14:59:20`    | current time of day.                                                    |
|     |    `up 6:30`    | **uptime**. It is the amount of time since the machine was last booted. |
|     |    `2 users`    | users logged in.                                                        |
|     | `load average:` | it refers to the number of processes that are waiting to run.           |
|  2  |    `Tasks:`     | summary of processes and their status.                                  |
|     |    `0.7%us`     | $7\%$ of the CPU is being used for **user** processes.                  |
|     |    `1.0%sy`     | $1\%$ of the CPU is being used for **system** (kernel) processes.       |
|     |    `0.0%ni`     | $0\%$ of the CPU is being used by "nice" (low-priority) processes.      |
|     |    `98.3%id`    | $98.3\%$ of the CPU is idle                                             |
|     |    `0.0%wa`     | $0\%$ of the CPU is waiting for I/O.                                    |
|  4  |     `Mem:`      | RAM usage description.                                                  |
|  5  |     `Swap:`     | swap space (virtual memory) usage description.                          |

## Controlling processes

### Interrupting a process

In a terminal, pressing `CTRL + c` **interrupts** a program. This means we are politely asking the program to terminate...

Many (but not all) command line programs can be interrupted by using this technique.

### Putting a process in the background

...Think of the terminal as having a **foreground** (with stuff visible on the surface, like the shell prompt) and a **background** (with stuff hidden behind the surface). To launch a program in the background, we can follow the command with an ampersand (`&`) character.

```bash
xlogo &

# [1] 28236
```

The returned message is part of a shell feature called **job control**. With this message, the shell is telling us that we have started job number 1 (`[1]`) and that it has PID 28236.

```bash
ps

#   PID TTY TIME CMD
# 10603 pts/1 00:00:00 bash
# 28236 pts/1 00:00:00 xlogo
# 28239 pts/1 00:00:00 ps
```

The shell's job control facility also gives us a way to list the jobs that have been launched from our terminal...

```bash
jobs

# [1]+ Running    xlogo &
```

### Returning a process to the foreground

To return a process to the foreground, use the `fg` command.

```bash
jobs

# [1]+ Running

# ----------------------------------------------------------------------- #

fg %1

# xlogo
```

After that, the job with the job number (called **jobspec**) specified is returned to the foreground.

> The jobspec can be omitted if there is only one job in the background.

### Stopping (pausing) a process

...To stop a foreground process and place it in the background, press `CTRL + z`...

```bash
xlogo

# [1]+ Stopped

# ----------------------------------------------------------------------- #

bg %1 # Resume the pro­gram's execution in the background

# [1]+ xlogo &
```

As with `fg`, the jobspec is optional if there is only one job.

Why would we want to launch a graphical program from the command line? There are two reasons:

- The program you want to run might not be listed on the window manager's menus.

- By launching a program from the command line, you might be able to see error messages that would otherwise be invisible if the program were launched graphically...

### Changing process priority

Niceness can be ad­justed with the `nice` and `renice`. It is important to remember that only the superuser may increase the priority of a process and that regular users may only decrease the priority of processes that they own.

`nice` launches a process with a specified niceness. Niceness adjustments are expressed from $-20$ (the most favorable) to 19 (the least favorable) with a default of value of zero (no adjustment).

```bash
nice -n 10 cpu-hog
```

`renice` adjusts the priority of a running process.

```bash
renice -n 19 379215
```

## Signals

`kill` is used to "kill" processes.

```bash
xlogo &

# [1] 28401

# ----------------------------------------------------------------------- #

kill 28401

# [1]+ Terminated    xlogo
```

> The PID or jobspec can be used to refer to a process.

...`kill` does not exactly "kill" processes; rather, it sends them **signals**. Signals are one of several ways that the operating system communicates with programs...

- `CTRL + c`: sent a signal called INT (interrupt).

- `CTRL + z`: sent a signal called TSTP (terminal stop).

...Programs, in turn, "listen" for signals and may act upon them as they are received...

### Sending signals to processes with `kill`

```
kill [-SIGNAL] PID...
```

If no signal is specified on the command line, then the TERM (terminate) signal is sent by default...

| number | name  | meaning                                                                          |
|:------:|:-----:|:-------------------------------------------------------------------------------- |
|   1    |  HUP  | hang up.                                                                         |
|   2    |  INT  | interrupt.                                                                       |
|   3    | QUIT  |                                                                                  |
|   9    | KILL  | signal send to the kernel to immediately terminates the process.                 |
|   11   | SEGV  | segmentation violation.                                                          |
|   15   | TERM  | terminate.                                                                       |
|   18   | CONT  | continue.                                                                        |
|   19   | STOP  | signal send to the kernel to immediately pause the process without terminating.  |
|   20   | TSTP  | terminal stop.                                                                   |
|   28   | WINCH | window change. This is the signal sent by the system when a window changes size. |

> The PID or jobspec can be used to refer to a process.

...Note that signals may be specified either by number or by name, including the name prefixed with the letters `SIG`.

Processes, like files, have owners, and you must be the owner of a process (or the supe­ruser) to send it signals with `kill`.

```bash
kill -SIGINT 28401

# [1]+  Interrupt               xlogo
```

Processes, like files, have owners, and you must be the owner of a process (or the superuser) to send it signals with `kill`.

### Making a process hang up proof

Many command line programs will respond to the `HUP` by terminating when its controlling terminal "hangs up" (i.e. closes or disconnects). To prevent his behavior, we can launch the program with `nohup`.

```bash
nohup xlogo
```

### Sending signals to multiple processes with `killall`

It is also possible to send signals to multiple processes matching a specified program or username by using the `killall` command...

```bash
# killall [-u USER] [-SIGNAL] name...

xlogo &

# [1] 18801

xlogo &

# [2] 18802

killall xlogo

# [1]- Terminated xlogo
# [2]+ Terminated xlogo
```

> Remember, as with `kill`, we must have superuser privileges to send signals to processes that do not belong to us.

## Shutting down the system

The process of shutting down the system involves the orderly termination of all the processes on the system, as well as performing some vital housekeeping chores (such as syncing all the mounted file systems) before the system powers off. There are four commands that can perform this function:

- `halt`.

- `poweroff`.

- `reboot`.

- `shutdown`.

`poweroff`, `reboot`, and `halt` take the same options.
