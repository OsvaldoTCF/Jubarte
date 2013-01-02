unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  Buttons, StdCtrls, ExtCtrls, RadioLink, About, opticallink, satlink, cooling, ups,iptel;

type

  { TMainForm }

  TMainForm = class(TForm)
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  MainForm: TMainForm;

implementation

{ TMainForm }

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
  RadioLinkForm.show;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  AboutForm.show;
end;

procedure TMainForm.BitBtn1Click(Sender: TObject);
begin
  AboutForm.show;
end;

procedure TMainForm.SpeedButton2Click(Sender: TObject);
begin
  opticallinkform.show;
end;

procedure TMainForm.SpeedButton3Click(Sender: TObject);
begin
  satlinkform.show;
end;

procedure TMainForm.SpeedButton4Click(Sender: TObject);
begin
  coolingform.show;
end;

procedure TMainForm.SpeedButton5Click(Sender: TObject);
begin
  upsform.show;
end;

procedure TMainForm.SpeedButton6Click(Sender: TObject);
begin
  iptelform.show;
end;

initialization
  {$I main.lrs}

end.

