<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>amstrong</title>
</head>
<body>
    <form action="" method="post">
        enter a number
        <input type="text" name="number" id="">
        <br>
        <input type="submit" value="submit">
    </form>
    <?php

    if($_POST)
    {
        $num=$_POST["number"];
        $temp=$num;
        $sum=0;
        $len=strlen($temp);
        while($temp>0)
        {
            $digit=$temp%10;
            $sum+=pow($digit,$len);
            $temp=floor($temp/10);
            
        }
        if($num==$sum){
            echo "isarmstrong ";
        }

        else{
            echo "not armstrong";
        }

    }

?>
</body>
</html>