let_cal ()
{
    var=$1
    let "var += 1"
    echo $var
}

kuohao_cal()
{
    var=$1
    ((var += 1))
    echo $var
}

zkuohao_cal()
{
    var=$1
    var=$[$var + 1]
    echo $var
}

expr_cal()
{
    var=$1
    var=`expr $var + 1`
    echo $var
}

bc_cal()
{
    var=$1
    var=`echo "$var + 1" | bc`
    echo $var
}

awk_cal()
{
    var=$1
    var=`echo "$var 5"|awk '{print($1 + $2)}'`
    echo $var
}

echo "let_cal: " 
let_cal  1

echo "kuohao_cal: " 
kuohao_cal  2

echo "zkuohao_cal: " 
zkuohao_cal 3

echo "expr_cal: " 
expr_cal 3

echo "bc_cal: " 
bc_cal 3

echo "awk_cal: " 
awk_cal 3
