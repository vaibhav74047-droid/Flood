`timescale 1ns/1ps

module flood_detector_tb;

reg water_level;
reg heavy_rain;
reg critical_level;

wire [1:0] risk_level;
wire emergency_alert;
wire buzzer;

flood_detector uut (
    .water_level(water_level),
    .heavy_rain(heavy_rain),
    .critical_level(critical_level),
    .risk_level(risk_level),
    .emergency_alert(emergency_alert),
    .buzzer(buzzer)
);

initial begin
    $dumpfile("flood_detector.vcd");
    $dumpvars(0, flood_detector_tb);

    $display("FloodGuard System Simulation");
    $display("Water Rain Critical | Risk Alert Buzzer");

    water_level = 0;
    heavy_rain = 0;
    critical_level = 0;
    #10;
    $display("  %b     %b      %b     |  %b    %b      %b",
        water_level, heavy_rain, critical_level,
        risk_level, emergency_alert, buzzer);

    water_level = 1;
    heavy_rain = 0;
    critical_level = 0;
    #10;
    $display("  %b     %b      %b     |  %b    %b      %b",
        water_level, heavy_rain, critical_level,
        risk_level, emergency_alert, buzzer);

    water_level = 1;
    heavy_rain = 1;
    critical_level = 0;
    #10;
    $display("  %b     %b      %b     |  %b    %b      %b",
        water_level, heavy_rain, critical_level,
        risk_level, emergency_alert, buzzer);

    water_level = 0;
    heavy_rain = 0;
    critical_level = 1;
    #10;
    $display("  %b     %b      %b     |  %b    %b      %b",
        water_level, heavy_rain, critical_level,
        risk_level, emergency_alert, buzzer);

    $finish;
end

endmodule
