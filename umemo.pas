unit umemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  System.ImageList, Vcl.ImgList;

type
  Tumemoria = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    ImageList1: TImageList;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  umemoria: Tumemoria;
  lista: array [0 .. 23] of TSpeedButton;
  listaTemp: array [0 .. 23] of TSpeedButton;
  a: integer;
  b: integer;
  vez: integer;
  p: integer;
  pp: integer;

implementation
uses
  uprincipal;
{$R *.dfm}

procedure Tumemoria.Button1Click(Sender: TObject);
begin
  principal.Show;
  umemoria.Close;
end;

procedure Tumemoria.Button2Click(Sender: TObject);
var
  i: integer;
  c: integer;
var
  listaTemp: array [0 .. 23] of TSpeedButton;
begin
  vez := 0;
  a := 0;
  lista[0] := SpeedButton1;
  lista[1] := SpeedButton6;
  lista[2] := SpeedButton10;
  lista[3] := SpeedButton13;
  lista[4] := SpeedButton17;
  lista[5] := SpeedButton18;
  lista[6] := SpeedButton2;
  lista[7] := SpeedButton7;
  lista[8] := SpeedButton11;
  lista[9] := SpeedButton12;
  lista[10] := SpeedButton19;
  lista[11] := SpeedButton20;
  lista[12] := SpeedButton3;
  lista[13] := SpeedButton8;
  lista[14] := SpeedButton5;
  lista[15] := SpeedButton14;
  lista[16] := SpeedButton21;
  lista[17] := SpeedButton22;
  lista[18] := SpeedButton4;
  lista[19] := SpeedButton9;
  lista[20] := SpeedButton15;
  lista[21] := SpeedButton16;
  lista[22] := SpeedButton23;
  lista[23] := SpeedButton24;
  lista[0].ImageIndex := 0;
  lista[1].ImageIndex := 0; // 6;
  lista[2].ImageIndex := 1; // 10;
  lista[3].ImageIndex := 1; // 13;
  lista[4].ImageIndex := 2; // 17;
  lista[5].ImageIndex := 2; // 18;
  lista[6].ImageIndex := 3; // 2;
  lista[7].ImageIndex := 3; // 7;
  lista[8].ImageIndex := 4; // 11;
  lista[9].ImageIndex := 4; // 12;
  lista[10].ImageIndex := 5; // 19;
  lista[11].ImageIndex := 5; // 20;
  lista[12].ImageIndex := 6; // 3;
  lista[13].ImageIndex := 6; // 8;
  lista[14].ImageIndex := 7; // 5;
  lista[15].ImageIndex := 7; // 14;
  lista[16].ImageIndex := 8; // 21;
  lista[17].ImageIndex := 8; // 22;
  lista[18].ImageIndex := 9; // 4;
  lista[19].ImageIndex := 9; // 9;
  lista[20].ImageIndex := 10; // 15;
  lista[21].ImageIndex := 10; // 16;
  lista[22].ImageIndex := 11; // 23;
  lista[23].ImageIndex := 11; // 24;
  for i := 0 to 75 do
  begin
    var
    x := random(24);
    var
    y := random(24);
    var
      temp: integer;
    temp := lista[x].ImageIndex;
    lista[x].ImageIndex := lista[y].ImageIndex;
    lista[y].ImageIndex := temp;
  end;
  for c := 0 to 23 do
  begin
    lista[c].Enabled := true;
  end;
  for i := 0 to 23 do
  begin
    lista[i].tag := lista[i].ImageIndex;
    { if lista[i].ImageIndex = -1 then
      begin
      lista[i].tag := lista[i].ImageIndex;
      end; }
    lista[i].ImageIndex := -1;
  end;
  p := 0;
  pp := 0;
  Label3.Caption := '0';
  Label4.Caption := '0';
end;

procedure Tumemoria.FormCreate(Sender: TObject);
begin
  Button2Click(nil);
end;

procedure Tumemoria.SpeedButton6Click(Sender: TObject);
var
  i: integer;
begin
  TSpeedButton(Sender).ImageIndex := TSpeedButton(Sender).tag;
  TSpeedButton(Sender).Repaint;
  if a = 1 then
  begin
    if b = TSpeedButton(Sender).tag then
    begin
      ShowMessage('Os Mamacos s?o iguais, prossiga!');
      if vez = 0 then
      begin
        p := p + 1;
      end
      else
      begin
        pp := pp + 1;
      end;
      Label3.Caption := p.ToString;
      Label4.Caption := pp.ToString;
      TSpeedButton(Sender).ImageIndex := TSpeedButton(Sender).tag;
      TSpeedButton(Sender).Repaint;
      TSpeedButton(Sender).Enabled := false;
    end
    else
    begin
      ShowMessage('Mamacos errados, tente novamente.');
      Label5.Caption := vez.ToString;
      if vez = 1 then
      begin
        { ShowMessage('mss'); }
        Label6.Caption := 'Turno do jogador: ' + Label1.Caption;
        vez := 0;
      end
      else
      begin
        Label6.Caption := 'Turno do jogador: ' + Label2.Caption;
        vez := 1;
      end;
      { TSpeedButton(Sender).Enabled:=true; }
      TSpeedButton(Sender).ImageIndex := -1;
      for i := 0 to 23 do
      begin
        if lista[i].ImageIndex = b then
        begin
          lista[i].ImageIndex := -1;
          lista[i].Enabled := true;
        end;
      end;
    end;
    { ShowMessage('segunda vez que clicou'); }
    a := 0;
  end
  else
  begin
    vez := vez;
    a := 1;
    TSpeedButton(Sender).ImageIndex := TSpeedButton(Sender).tag;
    TSpeedButton(Sender).Repaint;
    b := TSpeedButton(Sender).tag;
    TSpeedButton(Sender).Enabled := false;
  end;
end;
end.
