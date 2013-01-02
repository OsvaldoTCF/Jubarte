unit RadioLink;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, Buttons, math, Menus, TAGraph, TASeries,
  TASources, About, converter, fresnel, Plotpanel, powermeter;

type

  { TRadioLinkForm }

  TRadioLinkForm = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit2: TEdit;
    Edit20: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    MenuItem3: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    Panel1: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);


  private
    { private declarations }
  public
    { public declarations }
   // function AddXY(Const AXValue, AYValue: Double;Const AXLabel: String; AColor: TColor) : Longint;
  end; 

var
  RadioLinkForm: TRadioLinkForm;
  i:Integer;
  y:Real;



implementation

{ TRadioLinkForm }

procedure TRadioLinkForm.MenuItem3Click(Sender: TObject);
begin
  AboutForm.show;
end;

procedure TRadioLinkForm.MenuItem5Click(Sender: TObject);
begin
  RadioLinkForm.close;
end;

procedure TRadioLinkForm.MenuItem6Click(Sender: TObject);
begin
  converterform.show;
end;

procedure TRadioLinkForm.MenuItem7Click(Sender: TObject);
begin
  fresnelform.show;
end;



//Calculate RADIO LINK
procedure TRadioLinkForm.BitBtn1Click(Sender: TObject);
begin

try

//enable buttons
edit16.Enabled:=True;
edit17.Enabled:=True;
edit18.Enabled:=True;
edit19.Enabled:=True;
edit20.Enabled:=True;

//Free space loss
Edit16.Text:=floattostr(32.45 + 20*Log10(strtofloat(Edit1.text)) + 20*Log10(strtofloat(Edit15.text)) );

//Uplink loss
Edit19.text:=floattostr( (strtofloat(edit3.text) * strtofloat(edit4.text)) + (strtofloat(edit5.text) * strtofloat(edit6.text)));

//EIRP
edit17.text:=floattostr(strtofloat(edit2.text) - strtofloat(edit19.text) + strtofloat(edit7.text));

//Downlink loss
Edit20.text:=floattostr( (strtofloat(edit10.text) * strtofloat(edit11.text)) + (strtofloat(edit12.text) * strtofloat(edit13.text)));


//Received power
edit18.text:= floattostr( (strtofloat(edit17.text) - strtofloat(edit16.text) + strtofloat(edit14.text) - strtofloat(edit20.text) + strtofloat(edit8.text)));

//Analise de viabilidade

if strtofloat(edit18.text) >= strtofloat(edit9.text) then
begin
Panel1.Font.Color:=clGreen ;
Panel1.caption:= 'The link is viable'
end
else
begin
Panel1.Font.Color:=clRed   ;
Panel1.caption:= 'The link is not viable';
end;

except  // Exception treatment
showmessage ('ERROR - Division by zero or null value, check the numbers and unfilled fileds');
end;

//Plot Power Meter CHART and Clear
powermeter.linktype:=0; //clear var
powermeter.linktype:=1; //set to radio analyser
powermeterform.show;
end;


procedure TRadioLinkForm.BitBtn2Click(Sender: TObject);
begin //Clear
  edit1.Clear;
  edit2.Clear;
  edit3.Clear;
  edit4.Clear;
  edit5.Clear;
  edit6.Clear;
  edit7.Clear;
  edit8.Clear;
  edit9.Clear;
  edit10.Clear;
  edit11.Clear;
  edit12.Clear;
  edit13.Clear;
  edit14.Clear;
  edit15.Clear;
end;





initialization
  {$I radiolink.lrs}

end.

