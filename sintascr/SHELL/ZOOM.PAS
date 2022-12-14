{===============================================
 UNIDADE/FORMUL?RIO de zoom de f?rmulas
 Implementa??o: Ricardo Bezerra
 Design de interface: Ricardo Bezerra
 Descri??o: Exibe uma f?rmula do editor de
            regras em uma janela maior.
 Data de in?cio: 09 de abril de 1996
 Data de t?rmino: 09 de abril de 1996
 Expert SINTA (c) 1995-1997 Grupo SINTA/LIA
 ==============================================}

unit Zoom;

interface

uses
  WinTypes, WinProcs, Classes, Graphics, Forms, Controls, Buttons,
  StdCtrls, ExtCtrls;

type
  TdialogZoom = class(TForm)
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    Bevel: TBevel;
    memoFormula: TMemo;
    procedure FormShow(Sender: TObject);
  end;

var
  dialogZoom: TdialogZoom;

implementation

{$R *.DFM}

procedure TdialogZoom.FormShow(Sender: TObject);
begin
   memoFormula.SelectAll;
   memoFormula.SetFocus;
end;

end.
