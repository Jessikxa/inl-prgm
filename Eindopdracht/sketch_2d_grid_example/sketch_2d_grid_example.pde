String[][] board = new String[9][9];

for(int y=0;y<9;y++){
    for(int x=0;x<9;x++){
        board[x][y] = "?";
    }
}
for (int r = 0; r<9;r++){
    String line = "";
    for (int c = 0; c <9;c++){
        line+="["+board[c][r]+"]";
    }
    System.out.println(line);
}
