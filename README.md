# LightBnB

#### A barebones AirBnB clone that uses a server-side Javascript to display the information from queries to web pages via SQL queries. Users can create listings, view listings, manage reservations, and search properties with a variety of filters.

## Website Image

![Screenshot of website](https://github.com/lucasw4/LightBnB/blob/master/img/website_screenshot_2.png?raw=true)

## Setup

1. Clone this repository
2. Open your terminal and cd into the directory
3. Install dependencies with `npm install`
4. Run the following command to connect to psql `psql -h localhost -p 5432 -U labber lightbnb` and enter the password "123"
5. Enter command into psql session: `\i migrations/01_schema.sql`
6. Enter command into psql session: `\i seeds/04_seeds.sql`
7. Enter `\q` to exit psql session

## Usage

`npm run local` to run the web server and then connect to [localhost](localhost:5432)

## Database Structure

![Database ERD](https://github.com/lucasw4/LightBnB/blob/master/img/LightBnB_ERD.png?raw=true)

## Dependencies

```
"bcrypt": "^5.1.0",
    "body-parser": "^1.19.0",
    "cookie-session": "^1.3.3",
    "express": "^4.17.1",
    "nodemon": "^2.0.20",
    "pg": "^8.8.0"
```
