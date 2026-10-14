module memory_game (
    input clk,
    input reset,
    input check,
    input [7:0] expected,
    input [7:0] answer,
    output reg correct,
    output reg game_over,
    output reg [7:0] score
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        correct <= 1'b0;
        game_over <= 1'b0;
        score <= 8'd0;
    end
    else if (check && !game_over) begin
        if (expected == answer) begin
            correct <= 1'b1;
            game_over <= 1'b0;
            score <= score + 1'b1;
        end
        else begin
            correct <= 1'b0;
            game_over <= 1'b1;
        end
    end
end

endmodule
