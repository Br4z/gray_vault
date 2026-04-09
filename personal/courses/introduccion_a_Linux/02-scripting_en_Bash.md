# Scripting en Bash

## 1 - Scripting en Bash

We will build a terminal browser for the Hack The Box machines stored on the [htbmachines](https://htbmachines.github.io) page.

1. `curl -s -X GET https://htbmachines.github.io/bundle.js`.

	> `-s` to use it in the silent mode.

	> `-X` to change the method to use when starting the transfer.

	We could bring the information about the machines from the Internet every time we need it, but that is not efficient.

2. `cat bundle.js | js-beautify | sponge bundle.js`: beautify the `bundle.js` with the "js-beautify" tool.

## 7 - Scripting en Bash

### Martingala

The Martingale system is a betting strategy based on recovering your losses. The idea is that with every losing roulette spin, you double your wager. In theory, this means that if you eventually win again, you will recover any previous losses plus gain a small profit.

## Labouchere

1. Decide how much you would like to win, and split that number into smaller, random numbers.

	For example, our $10 goal could become 1, 2, 4, 1, 2.

2. Combine your numbers.

	Take the furthest left number and the furthest right number from the sequence. In this example that would be 1 and 2. Combine these to make your first bet for $3.

3. Place your bet.

	Place the bet on an even bet like red, black, odd, even, 1-18 or 19-36.

4. Repeat the second step.

	- If you win, you cross off the furthest left and furthest right numbers from your sequence. Here you would be left with 2, 4, 1.

	- If you lose, do not cross off any numbers and add the bet you just made ($3) to the far right of your sequence. You should have 2, 4, 1 and 3 now.

5. Repeat until you win.

	Repeat the steps until you have cleared your sequence and won your goal number.

### Inverse Labouchere

The Reverse Labouchere betting system is based on the idea of turning the tables on the original Labouchere system, which is a negative progression strategy. This means that in the traditional Labouchere, bets increase after losses and decrease after wins. However, in the Reverse Labouchere, you increase your bets after winning, allowing for substantial gains during winning streaks in both European Roulette and American Roulette games.
