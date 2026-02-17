# General questions

## 2025-05-22

### How much memory is in 32 bits

To answer this questions we will use the following [[personal/math/serie/proofs#$ forall{ n } in mathbb{ N } *$ satisfied that $ sum_{ i = 0 } n { 2 i } = 2 { n + 1 } - 1$|instance of the geometry series]]

$$
\begin{align}
	& \sum_{ i = 0 }^{ 31 } { 2^i } = 2^{ 31 + 1 } - 1 \\
	& = 4,294,967,295
\end{align}
$$

### Limitations in storage units

File systems define constraints on storage capacity and file handling, including:

- Maximum file size.

- Maximum volume (partition) size.

- Maximum number of files.

- Maximum filename length.

| file system |    max file size    |   max volume size    |
|:-----------:|:-------------------:|:--------------------:|
|    FAT32    |    4 GB − 1 byte    |   2 TB (commonly)    |
|    exFAT    |        16 EB        | 128 PB (theoretical) |
|    NTFS     | 16 EB (theoretical) |  256 TB (commonly)   |
|    ext4     |    16 TB (file)     |    1 EB (volume)     |

> Actual usable sizes often depend on OS and hardware support, even if the file system supports more in theory.

### Why React is a library and not a framework

- Focused scope: React primarily addresses the view layer of an application, allowing developers to build user interfaces through reusable components. It does not encompass other aspects like routing, state management, or form handling out of the box.

- Developer control: in React, developers decide how to structure their applications, choose additional libraries, and manage the flow of data. This contrasts with frameworks that often dictate these aspects.

- Flexibility: React's unopinionated nature means it can be integrated into various projects without enforcing a specific architecture, making it adaptable to different development needs.
