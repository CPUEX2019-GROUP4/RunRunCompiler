`default_nettype none

`define NUM_FUNC    10
`define ARITY        2
`define DATA_W      32
`define FRAME_W      7

`define MAIN (`FACT)
`define FACT 1

module fact
(
  input wire                             start,
  input wire [`ARITY-1:0]  [`DATA_W-1:0] args,
  input wire               [`DATA_W-1:0] get,
  input wire [`FRAME_W-1:0][`DATA_W-1:0] restore,

  output reg                             endOfFunc,
  output reg                             nontailCall,
  output reg [`ARITY-1:0]  [`DATA_W-1:0] call_args,
  output reg               [`DATA_W-1:0] ret,
  output reg               [`DATA_W-1:0] func,
  output reg [`FRAME_W-1:0][`DATA_W-1:0] save,

  input wire                             clk,
  input wire                             rstn
);

reg  [9:0]  pc;

enum {
  WAIT,
  EXEC
} state;

wire [31:0] n          = args[0];
wire [31:0] restore_n  = restore[1];

reg  [31:0] m;


always @(posedge clk) begin
  if (~rstn) begin
    endOfFunc    <= 0;
    nontailCall  <= 0;
    call_args    <= 0;
    ret          <= 0;
    func         <= 0;
    save         <= 0;
    state        <= WAIT;
    pc           <= 0;
  end else begin
    case (state)
      WAIT:
      begin
        endOfFunc   <= 0;
        nontailCall <= 0;
        pc          <= restore[0];
        if (start) begin
          state <= EXEC;
        end
      end
      EXEC:
      begin
        pc <= pc + 1;
        case (pc)
          0: begin
            case (n)
              32'b1 : begin
                pc      <= 1;
              end
              default : begin
                pc      <= 2;
              end
            endcase
          end
          1: begin
            endOfFunc   <= 1;
            ret         <= 1;
            state       <= WAIT;
          end
          2: begin
            m           <=  n - 1;
          end
          3: begin
            nontailCall <= 1;
            func        <= `FACT;
            call_args[0]<= m;
            save[0]     <= 32'd4;
            save[1]     <= n;
            state       <= WAIT;
          end
          4: begin
            endOfFunc   <= 1;
            ret         <= get * restore_n;
            state       <= WAIT;
          end
          default: begin
            // do nothing
          end
        endcase
      end
      default: begin
        //do nothing
      end
    endcase
  end
end
endmodule

`default_nettype wire
