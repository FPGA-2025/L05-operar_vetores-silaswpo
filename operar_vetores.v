module operar_vetores(
    input [2:0] a,
    input [2:0] b,
    output [2:0] saida_or_bit_a_bit,
    output saida_or_logico,
    output [5:0] saida_not
);

// OR bit a bit (bitwise)
assign saida_or_bit_a_bit = a | b;

// OR lógico (1 se qualquer bit de a ou b for 1)
assign saida_or_logico = |a | |b;

// NOT bit a bit da concatenação de b (MSB) e a (LSB)
assign saida_not = ~( {b, a} );

endmodule
