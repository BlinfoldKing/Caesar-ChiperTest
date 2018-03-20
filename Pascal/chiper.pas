program caesar_chiper;

uses crt;

var 
    text : string ;
    key  : integer;


    function encrypt(text:string; key:integer) : string;

    var
        i, k : integer;
        res : string;
    begin
        res := '';
        for i := 1 to length(text) do
            begin
            k := key mod 25;
            if ((ord(text[i]) >= 97) and (ord(text[i]) <= 122)) then 
                begin
                    if (ord(text[i]) + k > 122) then
                        begin
                        k := ord(text[i]) + k - 122;
                        res := res + chr(97 + k)
                        end
                    else
                        res :=  res + chr(ord(text[i]) + k)
                end
            else if ((ord(text[i]) >= 65) and (ord(text[i]) <= 90)) then 
                begin
                    if (ord(text[i]) + k > 90) then
                        begin
                        k := ord(text[i]) + k - 90;
                        res := res + chr(65 + k)
                        end
                    else
                        res :=  res + chr(ord(text[i]) + k)
                end
            else
                res :=  res + text[i];
            end;
    
        encrypt := res

    end;

begin
    clrscr();
    readln(text);
    readln(key);
    writeln(encrypt(text, key));
end.