---
reviewed_on: "2024-11-13"
---

# Suggested solution for Sum of Multiples problem

The suggested solution is:

1. Create an array to store the multiples of the magic objects.

    ```SCALA
    var all_multiples: Vector[Vector[Int]] = Vector().
    ```

2. Iterate over the values of the magic item and get all its multiples from $1$ to $level$.

    ```SCALA
    for (magic_item <- magic_items) {
        // Your code
    }
    ```

3. Create a vector that will contain the unique multiples.

    ```SCALA
    var unique_multiples: Vector[Int] = Vector()
    ```

4. Iterate over `all_multiples` and add elements, only if it has been checked that that element is not already in `unique_multiples`.

    ```SCALA
    for (multiples <- all_multiples)
        for (multiple <- multiples)
            // Your code
    ```

5. Return the sum of `unique_multiples`.
