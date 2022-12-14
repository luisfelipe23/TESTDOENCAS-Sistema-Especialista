{========================================================
 * Expert SINTA RunTime *

 Descri??o:
    Programa para consultar bases de conhecimento criadas
    com o Expert SINTA sem necessidade do ambiente de
    edi??o. Runtime constru?do especialmente para avaliar
    e demonstrar a Expert SINTA Visual Component Library.
    O c?digo fonte deste runtime ? de dom?nio p?blico.
 Ambiente de programa??o:
    Borland Delphi 2.0

 Implementa??o: Ricardo Bezerra
 Data de in?cio: 19 de mar?o de 1997
 Data de t?rmino: 20 de mar?o de 1997
 ?ltima modifica??o: 21 de abril de 1997
 Expert SINTA RunTime(c) 1995-1997
 Expert SINTA Visual Component Library (c) 1995-1997
 Laborat?rio de Intelig?ncia Artificial/LIA
 Universidade Federal do Cear?
 ========================================================}
program ExRT32;

uses
  Forms,
  Main in 'Main.pas' {frmMain},
  Results in 'Results.pas' {frmResults},
  About in 'About.pas' {dialogAbout};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Expert SINTA RunTime';
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmResults, frmResults);
  Application.Run;
end.
