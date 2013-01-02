unit Splash;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Menus;

type

  { TSplashScreenForm }

  TSplashScreenForm = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    procedure Image1Click(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  SplashScreenForm: TSplashScreenForm;

implementation

{ TSplashScreenForm }



procedure TSplashScreenForm.Image1Click(Sender: TObject);
begin

end;

initialization
  {$I splash.lrs}

end.

