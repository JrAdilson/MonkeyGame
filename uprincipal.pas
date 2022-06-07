unit uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,umacaco, umemo, usobre, uforca,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  Tprincipal = class(TForm)
    Button1: TButton;
    nam1: TEdit;
    Label1: TLabel;
    nam2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    memor: TButton;
    Button2: TButton;
    Button3: TButton;
    Label4: TLabel;
    MonkeyLogo: TImage;
    procedure Button1Click(Sender: TObject);
    procedure memorClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  principal: Tprincipal;

implementation

{$R *.dfm}

procedure Tprincipal.Button1Click(Sender: TObject);
begin
  try
    if length(nam1.Text) = 0 then
      abort
  except
    nam1.SetFocus;
    raise exception.Create('Informe o nome do primeiro jogador, mamaco.');
  end;
    try
    if length(nam2.Text) = 0 then
      abort
  except
    nam2.SetFocus;
    raise exception.Create('Informe o nome do segundo jogador, mamaco.');
  end;
  macacop.nomep1.Caption:=nam1.Text;
  macacop.nomep2.Caption:=nam2.Text;
  principal.Visible:=false;
  macacop.ShowModal;
  principal.Visible:=true;
 // macacop.
end;
procedure Tprincipal.Button2Click(Sender: TObject);
begin
  principal.Visible := false;
  Form1.ShowModal;
end;

procedure Tprincipal.Button3Click(Sender: TObject);
begin
  principal.Visible := false;
  Form2.ShowModal;
end;

procedure Tprincipal.memorClick(Sender: TObject);
begin
  try
    if length(nam1.Text) = 0 then
      abort
  except
    nam1.SetFocus;
    raise exception.Create('Informe o nome do primeiro jogador, mamaco.');
  end;
    try
    if length(nam2.Text) = 0 then
      abort
  except
    nam2.SetFocus;
    raise exception.Create('Informe o nome do segundo jogador, mamaco.');
  end;
  umemoria.Label1.Caption:=nam1.Text;
  umemoria.Label2.Caption:=nam2.Text;
  principal.Visible:=false;
   umemoria.ShowModal;
  principal.Visible:=true;
end;

end.
