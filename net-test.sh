#!/bin/bash
echo "Would you like to run a test of the network connectivity on your device?"
read answer
if [ $answer="yes"] then;
    touch /home/nickisabi/Documents/net-test.txt
    ping 127.0.0.1 >> /home/nickisabi/Documents/net-test.txt
    ping 8.8.8.8 >> /home/nickisabi/Documents/net-test.txt
    ping google.com >> /home/nickisabi/Documents/net-test.txt
    traceroute google.com >> /home/nickisabi/Documents/net-test.txt
elif [ $answer="no" ] then;
    echo "Goodbye!!"
    exit
else 
    echo "I'm going to need a yes or a no, sorry!"
fi