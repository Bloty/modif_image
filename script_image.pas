unit script_image;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btAfficher: TButton;
    btSymetrieV: TButton;
    btSymetrieH: TButton;
    btMiroirV: TButton;
    btMiroirH: TButton;
    btDoubleMiroir: TButton;
    imgImage: TImage;
    imgModif: TImage;
    procedure btAfficherClick(Sender: TObject);
    procedure btDoubleMiroirClick(Sender: TObject);
    procedure btMiroirHClick(Sender: TObject);
    procedure btMiroirVClick(Sender: TObject);
    procedure btSymetrieHClick(Sender: TObject);
    procedure btSymetrieVClick(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btAfficherClick(Sender: TObject);
begin
    imgImage.Picture.LoadFromFile('courges.jpg');
end;

procedure TForm1.btDoubleMiroirClick(Sender: TObject);
var
   x,y:integer;
begin
    for y:=0 to 150 do
           begin
             for x:=0 to 100 do
                 begin
                 imgModif.canvas.pixels[x,y]:=imgImage.canvas.pixels[x,y];
                 end;
             for x:=0 to 100 do
                 begin
                 imgModif.canvas.pixels[200-x,y]:=imgImage.canvas.pixels[x,y];
                 end;
             for x:=0 to 100 do
                 begin
                 imgModif.canvas.pixels[x,300-y]:=imgImage.canvas.pixels[x,y];
                 end;
             for x:=0 to 100 do
                 begin
                 imgModif.canvas.pixels[200-x,300-y]:=imgImage.canvas.pixels[x,y];
                 end;
           end;
end;

procedure TForm1.btMiroirHClick(Sender: TObject);
var
    x,y:integer;
begin
  for y:=0 to 300 do
           begin
             for x:=0 to 100 do
                 begin
                 imgModif.canvas.pixels[x,y]:=imgImage.canvas.pixels[x,y];
                 end;
             for x:=0 to 100 do
                 begin
                 imgModif.canvas.pixels[200-x,y]:=imgImage.canvas.pixels[x,y];
                 end;
           end;
end;

procedure TForm1.btMiroirVClick(Sender: TObject);
var
  x,y:integer;
begin
    for y:=0 to 150 do
           begin
             for x:=0 to 200 do
                 begin
                 imgModif.canvas.pixels[x,y]:=imgImage.canvas.pixels[x,y];
                 end;
             for x:=0 to 200 do
                 begin
                 imgModif.canvas.pixels[x,300-y]:=imgImage.canvas.pixels[x,y];
                 end;
           end;
end;

procedure TForm1.btSymetrieHClick(Sender: TObject);
var
  x,y:integer;
begin
   x:=0;
   y:=0;

       for y:=0 to 300 do
           begin
             for x:=0 to 200 do
                 begin
                 imgModif.canvas.pixels[x,300-y]:=imgImage.canvas.pixels[x,y];
                 end;
           end;
end;

procedure TForm1.btSymetrieVClick(Sender: TObject);
var
  x,y:integer;
begin
     x:=0;
     y:=0;

       for y:=0 to 300 do
           begin
             for x:=0 to 200 do
                 begin
                 imgModif.canvas.pixels[200-x,y]:=imgImage.canvas.pixels[x,y];
                 end;
           end;

end;

end.

