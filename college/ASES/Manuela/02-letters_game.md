---
reviewed_on: "2024-10-21"
---

# Letter game

## Requested functionality

The user must enter the words that can form the letters of the array (taking into account the frequency of each letter). The program must verify which of the entered words can be formed and in which positions are the letters of that word.

### Possible implementation

1. Create a function that is in charge of verifying if a word can be formed with the array of letters.

    ```CPP
    bool is_valid_word(std::string word) {
        // Your implementation here
    }
    ```

2. Create a function that is in charge of iterating over the array of words entered by the user and using the previous function, verify if the word can be formed with the array of letters and depending if it is possible or not to form the word, gather the positions of the letters required to form the word.

    ```CPP
    std::string valid_words() {
        std::string output = "";
        for (int i = 0; i < words_length; i++) {
            std::string word = words[i];

            if (is_valid_word(word)) {
                // Gather the letters position
                output += information;
            }
        }
    }
    ```

    > You can print the information inside the function, in that case the function declaration must be `void valid_words()`.
