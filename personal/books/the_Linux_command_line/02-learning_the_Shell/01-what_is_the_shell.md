---
reviewed_on: "2025-06-30"
---

# What is the shell?

## Terminal emulators

When using a graphical user interface (GUI), we need another program called a **terminal emulator** to interact with the shell...

## Making your first keystrokes

```
[me@linuxbox ~]$
```

This is called a **shell prompt**, and it will appear whenever the shell is ready to accept input. While it might vary in appearance somewhat depending on the distribution, it will typically include your `username@machinename`, followed by the current working directory and a dollar sign.

> If the last character of the prompt is a pound sign (`#`) rather than a dollar sign, the terminal session has **superuser** privileges...

### Command history

...Most Linux distributions remember the last $1,000$ commands by default...

## Try some simple commands

- `date`.

- `cal`: display the calendar of the current month.

- `uptime`: displays how long the system has been run­ning and the average number of processes running over various periods of time.

- `df`: display the current amount of free space on our disk drives.

- `free`: display the amount of free memory.

## Ending a terminal session

- `exit`: close the terminal emulator window or you can also use `CTLR-D`.

### The console behind the curtain

Even if we have no terminal emulator running, several terminal sessions continue to run behind the graphical desktop. We can access these sessions, called **virtual terminals** or **virtual consoles**, by pressing `CTRL-ALT-F1` through `CTRL-ALT-F6` on most Linux distributions. When a session is accessed, it presents a login prompt into which we can enter our username and password. To switch from one virtual console to another, press `ALT-F1` through `ALT-F6`. On most systems, we can return to the graphical desktop by pressing `ALT-F7`.
