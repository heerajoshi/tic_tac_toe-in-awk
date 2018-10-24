#! /usr/bin/awk
BEGIN {
  print "welcome"
  print " enter player1 name"
  getline name1
  print " enter player2 name"
  getline name2
  numbers= "1 2 3 4 5 6 7 8 9"
  split (numbers,board," ")
  count=0;
}

(NR%2==0){sign="O"}
(NR%2==1){sign="X"}
{
  count++;
  if(board[$0]!~/O/ && board[$0]!~/X/){
    gsub (board[$0],sign,board[$0])
    print "| "board[1]" | "board[2]" | "board[3]" |"
    print "| "board[4]" | "board[5]" | "board[6]" |"
    print "| "board[7]" | "board[8]" | "board[9]" |"
  }
  else
  {  
    print "wrong move"
  }
  if((board[1]==board[2] && board[2]==board[3]) || (board[4]==board[5] && board[5]==board[6]) || (board[7]==board[8] && board[8]==board[9]) || (board[1]==board[4] && board[4]==board[7]) || (board[2]==board[5] && board[5]==board[8]) || (board[3]==board[6] && board[6]==board[9]) || (board[1]==board[5] && board[5]==board[9]) || (board[3]==board[5] && board[5]==board[7]))
  {
    if(sign == x){
      print "player " name1 " won"
      exit  
    }else{
    print "player " name2 " won"
    exit
  }

}

if(count>9){
  print "Match Draw"
  exit
}
}
