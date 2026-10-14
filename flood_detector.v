module flood_detector (
    input water_level,
    input heavy_rain,
    input critical_level,
    output reg [1:0] risk_level,
    output reg emergency_alert,
    output reg buzzer
);

always @(*) begin
    if (critical_level) begin
        risk_level = 2'b11;
        emergency_alert = 1'b1;
        buzzer = 1'b1;
    end
    else if (water_level && heavy_rain) begin
        risk_level = 2'b10;
        emergency_alert = 1'b1;
        buzzer = 1'b1;
    end
    else if (water_level || heavy_rain) begin
        risk_level = 2'b01;
        emergency_alert = 1'b0;
        buzzer = 1'b0;
    end
    else begin
        risk_level = 2'b00;
        emergency_alert = 1'b0;
        buzzer = 1'b0;
    end
end

endmodule
