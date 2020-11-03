

# Broadway Database

## Obejective:

The main objective is to find and create a Dataset of information regarding Broadway Musicals, it's grosses, ticket sales, creative team, etc.

## Available Data:
There is not that much data regarding musicals. After reasearching on the topic I came across a "monopoly" on data. 

Available data are housed on the following websites:
The Broadway League — Financial info.
IBDB — Production info+Financial info.
Playbill — Financial info.
PlaybillPro — Production info+Financial info.
Broadway World — Production info+Financial info.
Theatrical Index — Production info+Financial info.

All of this websites share the same information. The information is there, just that they don't have a database available for everyone.

## Process of retrieving Data:

First, I tried to access the grosses and ticket sales data from BroadwayWorld, the website was well ordered. Then I came across the .csv of Yakkov Bressler, who talks about the same issues I had regarding the access to data. He web scrapped the grosses, ticket sales and percentages of seats sold weekly, from BroadwayWorld. So I used that data instead.

I went ahead to access the Cast data. There were several issues. Most casts change over time so I had to find a source of "the original cast" which is the cast that performs the first/and sometimes only "season" of the show. Original members are important in regards of their fame and "marketability" so it was necessary to have for future analysis regarding ticket sales and show longevity.

I found the best website to scrap was IBDB, the broadway database, they had enough information and was easily accesible through Beautiful Soup. The only problem was that i had to access an individual website for each show to get the cast members. So i find that I could get the reference link from the "clickables" in the search page, so I went ahead scrapped those and used a function to read each website and aquire that information.


## Resources
https://www.broadwayworld.com/
https://drive.google.com/file/d/1ZTL4EgVzkMUFkvflGzL0NIshgrZ9twMa/view
https://www.ibdb.com/shows/
