#
# BAN 530 - Fall 2019
# M4 Week 12 Homework #11 - Exploring Data with R - Part 1
#
# This assignment is adapted from a course at DataCamp.com.
#
# In this assignment, you'll practice importing and cleaning 
# data using a data set that describes online ticket sales
# for events across the country.  Please use the following 
# instructions to complete this assignment:
#
# 1) Download and save the file named "BAN 530 - Week 12 - Sales Data.csv"
#    to a location where you'll be able to access it.  Feel free to examine
#    this data set in a program like Excel before completing the listed tasks.
#
# 2) Follow the steps provided in this assignment.  WHERE QUESTIONS ARE ASKED, 
#    INSERT A COMMENT JUST BELOW THE CODE YOU ENTER FOR THAT STEP.  (See below.)
#
# 3) save your completed code as an R file with the following naming convention:
#    "BAN 530 - Week 12 - YourLastName", such as "BAN 530 - Week 12 - Solo".

# ******************************
#Don't delete the following lines of code.
#
install.packages("dplyr")
install.packages("tidyr")
sales_headers<-c("Column1",	"event_id",	"primary_act_id",	"secondary_act_id",	
                 "purch_party_lkup_id",	"event_name",	"primary_act_name",	
                 "secondary_act_name",	"major_cat_name",	"minor_cat_name",	
                 "la_event_type_cat",	"event_disp_name",	"ticket_text",	
                 "tickets_purchased_qty",	"trans_face_val_amt",	"delivery_type_cd",
                 "event_date_time",	"event_dt",	"presale_dt",	"onsale_dt",	
                 "sales_ord_create_dttm",	"sales_ord_tran_dt",	"print_dt",	
                 "timezn_nm",	"venue_city",	"venue_state",	"venue_postal_cd_sgmt_1",
                 "sales_platform_cd",	"print_flg",	"la_valid_tkt_event_flg",
                 "fin_mkt_nm",	"web_session_cookie_val",	"gndr_cd",	"age_yr",
                 "income_amt",	"edu_val",	"edu_1st_indv_val",	"edu_2nd_indv_val",	
                 "adults_in_hh_num",	"married_ind",	"child_present_ind",
                 "home_owner_ind",	"occpn_val",	"occpn_1st_val",
                 "occpn_2nd_val",	"dist_to_ven")
#
# ******************************
#
# STEP-BY-STEP INSTRUCTIONS
#
# 1) Click the Run button in the upper right of the R Script window to install
#    the packages listed in the "Don't delete the following lines of code." section.
#    You may need to select Run several times.
#
#    (Please type all of your code after Step 14 below and leave a space between each row of code.)
#
# 2) Save the file "BAN 530 - Week 12 - Sales Data.csv" and then import it into this R file.  
#    Assign it to the variable "Sales".  Be sure to use / instead of \ in your file path/name. 
#    Make sure character strings are preserved and not considered as factors.
#
# 3) Make an intial inspection of your data by using the functions dim(), head(), and names().  
#
#    QUESTION: What do you notice about the top of the data file?
#
# 4) The vector "sales_headers" contains the proper headings for the columns in this data set.  
#    Import the data file again, but this time assign the vector "sales_headers" to the column names.
#
# 5) Confirm that the correct column names are now in place.
#
# 6) Conduct some additional exploration of your data set by using the str() function to examine 
#    its structure and the summary() function to capture some basic statistics.
#
#    QUESTION: What is the maximum value in the "dist_to_ven" column?
#
# 7) The "dplyr" package contains the glimpse() function which is useful for further data exploration.
#    Load the "dplyr" package using the library() function.
#
# 8) Use the glimpse() function as another way to get a feel for your data.
#
#    QUESTION: What is the first non-"NA" entry in the "occpn_1st-val column"?
#
# 9) The first column of the data set is simply a duplication of the row numbers.  Create a subset of
#    "sales" called "sales2" that includes only the 2nd through last column of sales.
#    You can subset a data frame using the following format: my_df[, X:ncol(my_df)], where your file 
#    is my_df, the function ncol(my_df) gives the number of columns in my_df, and you wish to retain 
#    columns X through ncol(my_df).
#
# 10) The first four and last 15 columns of the data set contain internal codes representing particular
#     events.  This information is of no use to you, so it's best to get rid of them.  First, create a
#     vector called "keep" containing the column indices you want to KEEP, then create a new subset "sales3" 
#     of the data set that will include only the columns you want to keep using the new vector.  For instance,
#     if the vector "keep" is defined by keep <- X:(ncol(my_df) - Y), it will contain the values X through the
#     number of columns in my_df minus Y.  Now, use your new vector "keep" to create a new subset of sales2
#     called "sales3" using the same format as in step 9 above.  That is, use your new vector "keep" after 
#     the comma to indicate which columns to keep.
#
# 11) The "tidyr" package contains functions like "separate" that are useful for getting your data ready
#     for analysis.  Load the "tidyr" package using the library() function.
#
# 12) Take a look at the event_date_time column by typing head(sales3$event_date_time).  Notice that the date
#     and time are separated by a space, but you'd like to have the date and time in separate columns. 
#     To create new column for entries separated by spaces in a column, the separate() function takes 
#     the following arguments: data frame name, column name, a vector of new column names for the data
#     you're separating, sep = " ").  Use the separate() function to split the event_date_time column of 
#     sales3 into "event_dt" and "event_time" by using the vector function c("event_dt", "event_time")
#     inside the separate() function.  Assign the result to sales4.
#
# 13) Suppose you'd like to combine the two columns Venue_city and venue_state containing the CITY and
#     STATE for each event.  The unite() function (part of the "tidyr" package) can be helpful here. 
#     Create a new data frame called "sales5" that combines the venue_city and venue_state columns into
#     a new column called venue_city_state that contains the city and state names separate by a comma and 
#     a space, as in "CITY, STATE".  The format for unite() here will be unite(data frame name, name of 
#     column you'd like to create, name of first column to unite, name of second column to unite, sep = ", ")
#
# 14) Show the format of your resulting data frame sales5 by using the head() function.
#
# END OF STEP-BY-STEP INSTRUCTIONS

# ******************************
