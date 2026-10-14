`timescale 1ns/1ps

module memory_game_tb;

reg clk;
reg reset;
reg check;
reg [7:0] expected;
reg [7:0] answer;

wire correct;
wire game_over;
wire [7:0] score;

memory_game uut (
    .clk(clk),
    .reset(reset),
    .check(check),
    .expected(expected),
    .answer(answer),
    .correct(correct),
    .game_over(game_over),
    .score(score)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("memory_game.vcd");
    $dumpvars(0, memory_game_tb);

    clk = 0;
    reset = 1;
    check = 0;
    expected = 0;
    answer = 0;

    #10;
    reset = 0;

    // Correct answer
    expected = 8'd5;
    answer = 8'd5;
    check = 1;

    #10;
    check = 0;
    $display("Correct=%b Score=%d", correct, score);

    // Another correct answer
    #10;
    expected = 8'd7;
    answer = 8'd7;
    check = 1;

    #10;
   
