Contains bash scripts written and tested on Ubuntu 18.04 LTS.

## General Scripts
1. [hello_user.sh](scripts/hello_user.sh): Clear screen and display "Hello USERNAME!". Besides it'll also display a random quote for the day.
2. [login_info.sh](scripts/login_info.sh): Could be placed in ~/.bash_profile. Greets user and displays other info when user logs in to the system.
3. [weather.sh](scripts/weather.sh): Displays weather of current location (where server resides) or an entered location of our choice.
4. [case_converter.sh](scripts/case_converter.sh): Interactive script to change text case from lower to upper OR upper to lower OR both simultaneously of a user entered text file_name.
5. [pattern.sh](scripts/pattern.sh): Displays a kite shaped pattern of * depending on user's input.
6. [positional.sh](scripts/positional.sh): Displayes number of positional arguments entered at CLI and exits if none is entered. Also displays individual arguments separately.
7. [alternate_week.sh](scripts/alternate_week.sh): Notifies us via mail on sunday's of alternate weeks to perform specific tasks.
8. [penguin.sh](scripts/penguin.sh): A playful script which presents food item to Tux (penguin) as a command line argument.
9. [weight.sh](scripts/weight.sh): A script which accepts weight in kilos and height in cms and displays a message if we are overweight or underweight.
10. [file_info.sh](scripts/file_info.sh): A script to display information about a file, supplied as a command line argument.
11. [zoo.sh](scriipts/zoo.sh): Demonstrates calling of another shell script from within a script. It calls [food.sh](scripts/food.sh)
12. [address_book.sh](scripts/address_book.sh): To store contact details into an address book.
13. [census.sh](scripts/census.sh): To store population census data and assume default data according to gender.
14. [here_1.sh](scripts/here_1.sh) and [here_2.sh](scripts/here_2.sh) are two scripts to demonstrate use of here documents.

## System Administration.
1. [runlevel_service.sh](scripts/runlevel_service.sh): Interactive script to display user's HOME directory, terminal type and current runlevel services.
2. [test_root_1.sh](scripts/test_root_1.sh): Tests if the user who executes the script is root user or not. This logic can be used in scripts which needs to be executed as root user and should immediately terminate if some other user invokes it.
3. [test_root_2.sh](scripts/test_root_2.sh): Alternate logic to test root user.
4. [disk_alert.sh](scripts/disk_alert.sh): Sends a mail if at least one disk is found to be 80% (or more) utilized.
5. [top_three_disks.sh](scripts/top_three_disks.sh): Lists top three disks (and their details) according to their % utilization.
6. [disk_report.sh](scripts/disk_report.sh): Checks all disks' utilization and sends report of critical disks via mail.
7. [progressive_disk_test.sh](scripts/progressive_disk_test.sh): Divides disk utilization in different severity levels and accordingly sends a report about current disk utilization of the most utilized file system.
8. [process.sh](scripts/process.sh): A generalised script used to start|stop|restart|check_status of a process.

## Mathematics.
1. [table.sh](scripts/table.sh): Displays table of an entered positive/negative number (decimal/non-decimal) upto desired no. of multiples.
2. [even_odd.sh](scripts/even_odd.sh): Detects if an entered no is even or odd. Catches exception if a decimal no is entered and re-asks for input.
3. [divide.sh](scripts/divide.sh): Asks for 2 nos, divides them, displays quotient & remainder. Catches exception of entered decimal nos & re-asks for input.Does further processing based on remainder and quotient.
4. [subtract.sh](scripts/subtract.sh): Asks for 2 nos (decimal/non-decimal) and displays their difference. Displays additional text if difference is negative
5. [add.sh](scripts/add.sh): Interactive script to add desired number of positive or negative numbers (decimal/non-decimal).
6. [average.sh](scripts/average.sh): Calculates average of 'n' entered numbers (decimal/non-decimal). Catches exception of entering negative nos and re-asks for input.
7. [sum_of_digits.sh](scripts/sum_of_digits.sh): Calculates sum of digits of an entered positive/negative number. Catches exception if a decimal number is entered and re-asks for non-decimal input.
8. [bin_to_dec.sh](scripts/bin_to_dec.sh): Convert a user entered binary number to its equivalent decimal number.
9. [dec_to_bin.sh](scripts/dec_to_bin.sh): Convert a user entered decimal number to its equivalent binary number.
10. [leap_year.sh](scripts/leap_year.sh): This interactice script checks if the entered year is a leap year or not.

## License
This project is licensed under the MIT license. Read it here: [LICENSE.md](LICENSE.md)

## How to install bash?
This is a general not on instalation of bash on Debian or Fedora Linux pltforms. Mostly the linux distributions come with GNU bash pre-installed, but if want to install latest or any desired version other than the current one on our system, we can follow below guide. But before starting the installation, we need few pre-requisites which are the build tools to be installed on our system.

So, for Debian users, execute <br>
`sudo apt-get install -y build-essential`

For Fedora users, execute <br>
`sudo yum groupinstall "Development Tools" "Legacy Software Development"`

Now browse to http://ftp.gnu.org/gnu/bash link and locate our desired bash version source package. Suppose we want to install the version 4.1. Then, on our system execute below commands,

```
cd /tmp
wget http://ftp.gnu.org/gnu/bash-4.1.tar.gz
tar -xvf bash-4.1.tar.gz
cd bash-4.1*
./configure
make
sudo make install
bash --version
```

This should return the version 4.1 as output.

When we extract contents of bash tar file, we get C program files along with other scripts which help to compile, build and install bash on system. Similarly other interpreters can also be installed on system.

This line is for test purpose.
