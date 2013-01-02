program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, TAChartLazarusPkg, sysutils,   //sysutils habilita sleep
  RadioLink, converter, fresnel, Splash, opticallink, satlink,
  cooling, ups, iptel, About, Main, iptelqos, plot, powermeter;

begin
  Application.Initialize;

  //cria e exibe formulario com splash
  SplashScreenForm := TSplashScreenForm.Create(Application);
  SplashScreenForm.show;
  SplashScreenForm.refresh;

  Application.CreateForm(TMainForm, MainForm);
  SplashScreenForm.ProgressBar1.position:=100;
  SplashScreenForm.refresh;
  Application.CreateForm(TAboutForm, AboutForm);
  SplashScreenForm.ProgressBar1.position:=200;
  SplashScreenForm.refresh;
  Application.CreateForm(TRadioLinkForm, RadioLinkForm);
  SplashScreenForm.ProgressBar1.position:=300;
  SplashScreenForm.refresh;
  Application.CreateForm(Tconverterform, converterform);
  SplashScreenForm.ProgressBar1.position:=400;
  SplashScreenForm.refresh;
  Application.CreateForm(Tfresnelform, fresnelform);
  SplashScreenForm.ProgressBar1.position:=500;
  SplashScreenForm.refresh;
  Application.CreateForm(Topticallinkform, opticallinkform);
  SplashScreenForm.ProgressBar1.position:=600;
  SplashScreenForm.refresh;
  Application.CreateForm(Tsatlinkform, satlinkform);
  SplashScreenForm.ProgressBar1.position:=700;
  SplashScreenForm.refresh;
  Application.CreateForm(Tcoolingform, coolingform);
  SplashScreenForm.ProgressBar1.position:=800;
  SplashScreenForm.refresh;
  Application.CreateForm(Tupsform, upsform);
  SplashScreenForm.ProgressBar1.position:=900;
  SplashScreenForm.refresh;
  Application.CreateForm(Tiptelform, iptelform);
  SplashScreenForm.ProgressBar1.position:=1000;
  SplashScreenForm.refresh;

  SplashScreenForm.Close;
  Application.CreateForm(Tiptelqosform, iptelqosform);
  Application.CreateForm(Tpowermeterform, powermeterform);
  Application.Run;

end.

