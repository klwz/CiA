{旼컴C.I.A.컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴훩erze 2.00컴커
 쿞 timto souborem smi byt nakladano pouze v souladu s podminkami uvedenymi�
 퀆 dokumentaci C.I.A. Pouzitim souboru potvrzujes, ze podminky akceptujes.�
 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

 Priklad: klavesnice - nacteni znaku

}

{$m 10000,0,20000}

Uses Sys,Key;

Var  ev:TEvent;

Begin
 writeln;
 repeat
  {ceka na udalost - vstup znaku z klavesnice}
  ev:=ReadEvent;
  {vypise vse co o udalosti vi vcetne kodu klavesy}
  writeln('Byla stisknuta klavesa: znak=',byte(chr(ev)),
          '  rozsireny znak=',byte(extchar(ev)),'  kod klavesy=',code(ev));
  {skonci pri ESC}
  {kody klaves jsou nadeklarovany na zacatku key.pas}
 until code(ev)=kEsc;
End.