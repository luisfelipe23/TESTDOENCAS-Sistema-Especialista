{============================================
 UNIDADE/FORMUL?RIO de visualiza??o de regras
 Implementa??o: Ricardo Bezerra
 Design de interface: Ricardo Bezerra
                      Ricardo Silvestre
 Descri??o: Uma janela que simplesmente exibe
            as regras constru?das at? o
            momento.
 Data de in?cio: 11 de janeiro de 1996
 Data de t?rmino: 11 de janeiro de 1996
 ?ltima modifica??o: 21 de julho de 1997
 Expert SINTA (c) 1995-1997 Grupo SINTA/LIA
 ============================================}
unit Viewcode;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, ExCtrls;

type
  TfrmView = class(TForm)
    btnPrint: TBitBtn;
    btnClose: TBitBtn;
    RuleView: TRuleView;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  end;

var
  frmView: TfrmView;

implementation

uses
   Base, General, Export;

{$R *.DFM}

procedure TfrmView.FormCreate(Sender: TObject);
begin
   Width := 310;
   RuleView.SetHorizontalBar; {Habilita a barra horizontal}
   FormResize(Sender);
end;

procedure TfrmView.FormResize(Sender: TObject);
begin
 try
   if Width < 229 then Width := 229;
   if Height < 240 then Height := 240;
   RuleView.Width := Width - 3 * RuleView.Left;
   RuleView.Height := Height - RuleView.Top - btnClose.Height * 2 - 10;
   btnPrint.Top := Height - 2 * btnPrint.Height;
   btnClose.Top := btnPrint.Top;
   btnPrint.Left := trunc((Width - 2 * btnPrint.Width - 20) / 2);
   btnClose.Left := btnPrint.Left + btnPrint.Width + 10;
 finally end;
end;

procedure TfrmView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmView.btnPrintClick(Sender: TObject);
begin
   ExportToText('', true);
end;

procedure TfrmView.btnCloseClick(Sender: TObject);
begin
   Close;
end;

end.
