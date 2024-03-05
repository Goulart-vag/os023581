unit FrmPrinicipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmBtnDinamico = class(TForm)
    
    procedure FormCreate(Sender: TObject);
    procedure btnDinamicoClick(Sender: TObject);
    procedure edtNumeroEnter(sender:TObject);
  private
    { Private declarations }
     btnDinamico:TButton;
     edtNumero01:TEdit;
     edtNumero02:TEdit;
     edtNumero03:TEdit;
     lblNumero01:TLabel;
     lblNumero02:TLabel;
     lblNumero03:TLabel;
  public
    { Public declarations }
  end;

var
  frmBtnDinamico: TfrmBtnDinamico;

implementation

{$R *.dfm}

procedure TfrmBtnDinamico.btnDinamicoClick(Sender: TObject);
var
  rNum1, rNum2, rNum3, rMedia:real;
begin
  if (edtNumero01.Text <> 'Digite sua nota') and (edtNumero02.Text <> 'Digite sua nota') and (edtNumero03.text <> 'Digite sua nota') then
  begin
    if (edtNumero01.text <> '') and (edtNumero02.text <> '') and (edtNumero03.text <> '') then
    begin
    rNum1  := strtofloat(edtNumero01.text);
    rNum2  := strtofloat(edtNumero02.text);
    rNum3  := strtofloat(edtNumero03.text);
    rMedia := (rNum1 + rNum2 + rNum3) / 3;
    showmessage('Sua m�dia foi: ' + FormatFloat('#.00', rMedia));
    exit;
    end;
  end;

  showmessage('Notas faltando');

end;

procedure TfrmBtnDinamico.edtNumeroEnter(sender:TObject);
begin
 if Sender is TEdit then
  begin
    TEdit(Sender).Text := '';
  end
end;

procedure TfrmBtnDinamico.FormCreate(Sender: TObject);

begin
  btnDinamico := TButton.Create(self);
  edtNumero01 := TEdit.create(self);
  edtNumero02 := TEdit.create(self);
  edtNumero03 := TEdit.create(self);
  lblNumero01 := TLabel.create(self);
  lblNumero02 := TLabel.create(self);
  lblNumero03 := TLabel.create(self);

  with btnDinamico do
  begin
  Parent  := self;
  Height  := 50;
  Width   := 200;
  Visible := true;
  Caption := 'Cacular m�dia';
  Left    := 300;
  top     := 400;
  OnClick :=  btnDinamicoClick;
  end;

  with edtNumero01 do
  begin
  parent     := self;
  Height     := 50;
  width      := 200;
  visible    := true;
  text       := 'Digite sua nota';
  left       := 400;
  top        := 100;
  OnEnter    := edtNumeroEnter;

  end;

  with edtNumero02 do
  begin
  parent  := self;
  Height  := 50;
  width   := 200;
  visible := true;
  text    := 'Digite sua nota';
  left    := 400;
  top     := 200;
  OnEnter := edtNumeroEnter;
  end;

  with edtNumero03 do
  begin
  parent     := self;
  Height     := 50;
  width      := 200;
  visible    := true;
  text       := 'Digite sua nota';
  left       := 400;
  top        := 300;
  OnEnter    := edtNumeroEnter;
  end;

  with lblNumero01 do
  begin
  parent     := self;
  Height     := 50;
  width      := 200;
  visible    := true;
  caption    := 'Nota 1:';
  left       := 200;
  top        := 100;
  Font.Size  := 18;
  end;

  with lblNumero02 do
  begin
  parent     := self;
  Height     := 50;
  width      := 200;
  visible    := true;
  caption    := 'Nota 2:';
  left       := 200;
  top        := 200;
  Font.Size  := 18;
  end;

  with lblNumero03 do
  begin
  parent     := self;
  Height     := 50;
  width      := 200;
  visible    := true;
  caption    := 'Nota 3:';
  left       := 200;
  top        := 300;
  Font.Size  := 18;
  end;

end;

end.
