set term ^;
CREATE OR ALTER procedure VALIDA_CPF (
    CPF_TEXT varchar(14))
returns (
    VALIDO smallint)
as
declare variable N1 integer;
declare variable N2 integer;
declare variable N3 integer;
declare variable N4 integer;
declare variable N5 integer;
declare variable N6 integer;
declare variable N7 integer;
declare variable N8 integer;
declare variable N9 integer;
declare variable D1 integer;
declare variable D2 integer;
declare variable DIGITADO varchar(11);
declare variable CALCULADO varchar(11);
declare variable i integer;
declare variable iguais integer;
begin
   /*-- retirar pontuação do cpf ---------------------------------------------*/
   cpf_text = trim(replace(replace(replace(cpf_text, '-', ''), '.', ''), '/', ''));
   /*-------------------------------------------------------------------------*/
   i = 2;
   iguais = 0;
   n1 = substring(CPF_Text from 1 for 1);
   /*-- verificar se os valores estão repetidos ------------------------------*/
   while ((i <= 11) and (character_length(cpf_text) = 11)) do
   begin
     if (substring(CPF_Text from i for 1)=n1) then
       iguais = iguais + 1;
     i = i + 1;
   end
   /*-- se repetidos ou valor informado menor que 11 caracteres --------------*/
   if ((iguais = 10) or (character_length(cpf_text) < 11))  then
   begin
     valido = 0;
     suspend;
     exit;
   end
   /*-------------------------------------------------------------------------*/
   n2 = substring(CPF_Text from 2 for 1);
   n3 = substring(CPF_Text from 3 for 1);
   n4 = substring(CPF_Text from 4 for 1);
   n5 = substring(CPF_Text from 5 for 1);
   n6 = substring(CPF_Text from 6 for 1);
   n7 = substring(CPF_Text from 7 for 1);
   n8 = substring(CPF_Text from 8 for 1);
   n9 = substring(CPF_Text from 9 for 1);
   /*-- calcular dezena do digito do cpf -------------------------------------*/
   d1 = n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
   d1 = 11 - (mod(d1, 11));
   if (d1 >= 10) then d1 = 0;
   /*-- calcular unidade do digito do cpf ------------------------------------*/
   d2 = d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
   d2 = 11 - (mod(d2, 11));
   if (d2 >= 10) then d2 = 0;
   /*-- digitos a serem comparados -------------------------------------------*/
   calculado = cast(d1 as integer)||cast(d2 as integer);
   digitado = substring(CPF_Text from 10 for 1)||substring(CPF_Text from 11 for 1);
   /*-- comparar o digito calculado com o digito do cpf ----------------------*/
   if (calculado = digitado) then
     valido = 1; /*-- verdadeiro --*/
   else
     valido = 0; /*-- falso --*/
   /*-------------------------------------------------------------------------*/
   suspend;
end
^

