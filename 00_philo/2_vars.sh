#!/bin/sh
I_DID_IT_ALREADY="Heyyyy, what you want me to say?"
SAY=""
echo "Say is nothing as per $SAY"
echo $I_DID_IT_ALREADY
read SAY
echo "Well then: $SAY"
echo "I will even make it"
touch ${SAY}.txt
