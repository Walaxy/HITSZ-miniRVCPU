module PC (
    input  wire        clk  ,
    input  wire        rst_n,
    input  wire [31:0] din  ,
    output reg  [31:0] pc
);

always @ (posedge clk or negedge rst_n) begin
    if (~rst_n) pc <= -4; // 初始给 -4, 避免覆盖
        else pc <= din;
end

endmodule
