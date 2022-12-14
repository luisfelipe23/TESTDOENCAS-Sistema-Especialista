{==============================================
 UNIDADE/FORMUL?RIO de inser??o de novas regras
 Implementa??o: Ricardo Bezerra
 Design de interface: Ricardo Bezerra
                      Ricardo Silvestre
 Descri??o: Nesta caixa de di?logo o usu?rio
            determina se usar? um modelo ou n?o
            para criar uma nova regra.
 Data de in?cio: 02 de janeiro de 1996
 Data de t?rmino: 03 de janeiro de 1996
 ?ltima modifica??o: 18 de julho de 1997
 Expert SINTA (c) 1995-1997 Grupo SINTA/LIA
 ==============================================}
unit Newrule;

interface

uses
  WinTypes, WinProcs, Classes, Graphics, Forms, Controls, Buttons,
  StdCtrls, ExtCtrls, Dialogs, SysUtils, Tabnotbk;

type
  TdialogNewRule = class(TForm)
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    HelpBtn: TBitBtn;
    TabbedNotebook: TTabbedNotebook;
    Label1: TLabel;
    editOrder: TEdit;
    Label2: TLabel;
    comboModel: TComboBox;
    procedure OKBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    error: boolean;
  public
    num_rule: integer;
  end;

var
  dialogNewRule: TdialogNewRule;

implementation

uses
   General;

{$R *.DFM}

procedure TdialogNewRule.OKBtnClick(Sender: TObject);
begin
   try
      if StrToInt(editOrder.Text) > 0 then begin
         num_rule := StrToInt(editOrder.Text);
         if num_rule > ExSys.Rules.RecordCount + 1 then
            num_rule := ExSys.Rules.RecordCount + 1;
         error := false;
      end
      else
         MessageDlg('Ordem de regra inv?lida', mtError, [mbOk], 0);
   except
      on EConvertError do begin
         MessageDlg('Ordem de regra inv?lida', mtError, [mbOk], 0);
         error := true;
      end;
   end;
end;

procedure TdialogNewRule.FormShow(Sender: TObject);
var
   i, cont: integer;
begin
    cont := ExSys.Rules.RecordCount;
    editOrder.Text := IntToStr(cont + 1);
    comboModel.Items.Clear;
    comboModel.Items.Add('NENHUM');
    for i := cont downto 1 do
       comboModel.Items.Add('Regra ' + IntToStr(i));
    comboModel.ItemIndex := 0;
end;

procedure TdialogNewRule.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   CanClose := not error;
end;

end.
