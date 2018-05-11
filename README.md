# Wineopedia

Wineopedia is a Command Line application written in Ruby for searching, rating, and reviewing wines using the LCBO api.


### Getting Started
After you git clone this to your computer, you should run rake db:migrate, and rake db:seed in order to populate the wine database from the LCBO api. Please be patient as it may take about 20 minutes to complete. In order to open the application, run "ruby bin/run.rb" in your terminal.

### Functions
You can create a user or find the user if it is an already existing user. With this user, you are able to choose between red or white wines. You are then asked to select a varietal (type of wine). After choosing your varietal, you are provided a list of 10 wines of that given varietal with the option to see another list of 10 more wines. You are expected to choose a wine to rate and review.

After leaving a review, you are able to view all of your reviews and given the option to edit or delete your reviews.


### Authors
- Jeffrey Hwang - [@hwangjf](https://github.com/hwangjf/)
- Sangeetha Rajeev- [@srajeev91](https://github.com/srajeev91/)

### Acknowledgments
- Thanks to Ashlee, Jon, Rishi, and Mike for all their help.
- Created for Flatiron School Mod 1 project.

#### Version
- V.1.0 Current
- V.2.0 Coming soon
