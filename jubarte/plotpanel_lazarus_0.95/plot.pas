{ This file was automatically created by Lazarus. Do not edit!
This source is only used to compile and install the package.
 }

unit plot; 

interface

uses
  Plotpanel, LazarusPackageIntf; 

implementation

procedure Register; 
begin
  RegisterUnit('Plotpanel', @Plotpanel.Register); 
end; 

initialization
  RegisterPackage('plot', @Register); 
end.
