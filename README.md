# Auction Website with Blockchain feature

This repository contains the source code for a blockchain-based auction website. The website allows clients to upload products for auction, and users can place bids on these products. The blockchain ledger ensures the transparency and immutability of the winners' data.

## Installation

To install and run the auction website, follow these steps:

1. Pull the repository to your local machine's `htdocs` folder.
2. Upload the provided database to `phpmyadmin` or your preferred MySQL database management tool.
3. Configure the database connection settings in the project files as needed.
4. Start using the auction website by accessing the appropriate URLs.

## Folder Structure

The repository's folder structure is as follows:

- `PHPMailer-master`: Includes the PHPMailer library for sending emails.
- `PHPMailer`: Contains the PHPMailer library (possibly an older version).
- `css`: Contains the CSS files for styling the website.
- `database`: Includes the database-related files.
- `fonts`: Contains font files used in the website.
- `images`: Contains general images used in the website.
- `img`: Includes image files used throughout the website.
- `imgcategory`: Contains specific images related to product categories.
- `imgproduct`: Contains specific images related to products.
- `js`: Includes JavaScript files for client-side functionality.

## Features

The auction website offers the following features:

1. Product Upload: Clients can upload products to be auctioned on the website.
2. Bidding System: Users can place bids on the available products.
3. Blockchain Ledger: The website utilizes a blockchain ledger to store winners' data securely and immutably.
4. Immutable Data: The blockchain ledger ensures that the stored data cannot be modified or tampered with.
5. Timestamping: Each entry in the blockchain ledger includes a timestamp indicating when the data was recorded.
6. Previous and Current Hash: The blockchain ledger includes the previous hash and the current hash for each data entry, ensuring the integrity of the entire blockchain.