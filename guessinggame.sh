fileguess() {
    ans_right=$(ls -l|wc -l)
    while true;
    do
        echo "Hi User! Guess the number of files present in the current working directory?"
        read  num_guess
        if [[ $num_guess ]] && [ $num_guess -eq $num_guess 2>/dev/null ]
            then
                if [ $num_guess -lt $ans_right ]
                then
                    echo "Try Again!.....Your guess is less than the true number"
                continue;
                elif [ $num_guess -gt $ans_right ]
                then
                    echo "Try Again!....Your guess is greater than the true number"
                continue;
                else
                    echo " Congratulations User!........Your guess is right!"
                break;
                fi
            else
                echo "Wrong input passed. Please pass integer input only"
        fi
    done
}
fileguess

