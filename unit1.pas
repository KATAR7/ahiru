unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  ExtCtrls, Process;

type

  { TForm1 }

  TForm1 = class(TForm)
    aboutBtn: TBitBtn;
    commandBox: TEdit;
    execBtn: TBitBtn;
    procedure aboutBtnClick(Sender: TObject);
    procedure aboutBtnMouseWheelDown(Sender: TObject; Shift: TShiftState);
    procedure aboutBtnMouseWheelUp(Sender: TObject; Shift: TShiftState);
    procedure commandBoxMouseWheelDown(Sender: TObject; Shift: TShiftState);
    procedure commandBoxMouseWheelUp(Sender: TObject; Shift: TShiftState);
    procedure execBtnClick(Sender: TObject);
    procedure execBtnMouseWheelDown(Sender: TObject; Shift: TShiftState);
    procedure execBtnMouseWheelUp(Sender: TObject; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormKeyPress(Sender: TObject; var Key: char);
begin
  if key = #27 then Form1.Close;
  if key = #13 then execBtnClick(Sender);
end;

procedure TForm1.execBtnClick(Sender: TObject);
var
  Process: TProcess;
begin
  Process := TProcess.Create(nil);
  Process.CommandLine := commandBox.Caption;
  Process.Execute;
  Sleep(100);
  Form1.Close();
end;

procedure TForm1.aboutBtnClick(Sender: TObject);
begin
  ShowMessage('ahiru v0.1' + #13 + #13 + 'https://github.com/KATAR7/ahiru' +
    #13 + 'Licensed under the GNU GPL v3 license.');
end;

procedure TForm1.execBtnMouseWheelDown(Sender: TObject; Shift: TShiftState);
begin
  if (ssCtrl in Shift) then
  begin
    if (execBtn.Width > 10) then
    begin
      execBtn.Width := execBtn.Width - 1;
      execBtn.Left := execBtn.Left + 1;
    end;
  end;
  if (ssShift in Shift) then
  begin
    if (execBtn.Width > 10) then
    begin
      execBtn.Width := execBtn.Width - 10;
      execBtn.Left := execBtn.Left + 10;
    end;
  end;
end;

procedure TForm1.execBtnMouseWheelUp(Sender: TObject; Shift: TShiftState);
begin
  if (ssCtrl in Shift) then
  begin
    execBtn.Width := execBtn.Width + 1;
    execBtn.Left := execBtn.Left - 1;
  end;
  if (ssShift in Shift) then
  begin
    execBtn.Width := execBtn.Width + 10;
    execBtn.Left := execBtn.Left - 10;
  end;
end;

procedure TForm1.aboutBtnMouseWheelDown(Sender: TObject; Shift: TShiftState);
begin
  if (ssCtrl in Shift) then if (aboutBtn.Width > 10) then
      aboutBtn.Width := aboutBtn.Width - 1;
  if (ssShift in Shift) then if (aboutBtn.Width > 10) then
      aboutBtn.Width := aboutBtn.Width - 10;
end;

procedure TForm1.aboutBtnMouseWheelUp(Sender: TObject; Shift: TShiftState);
begin
  if (ssCtrl in Shift) then aboutBtn.Width := aboutBtn.Width + 1;
  if (ssShift in Shift) then aboutBtn.Width := aboutBtn.Width + 10;
end;

procedure TForm1.commandBoxMouseWheelDown(Sender: TObject; Shift: TShiftState);
begin
  if (ssCtrl in Shift) then if (commandBox.Font.Size > 2) then
      commandBox.Font.Size := commandBox.Font.Size - 1;
  if (ssShift in Shift) then if (commandBox.Font.Size > 2) then
      commandBox.Font.Size := commandBox.Font.Size - 10;
end;

procedure TForm1.commandBoxMouseWheelUp(Sender: TObject; Shift: TShiftState);
begin
  if (ssCtrl in Shift) then commandBox.Font.Size := commandBox.Font.Size + 1;
  if (ssShift in Shift) then commandBox.Font.Size := commandBox.Font.Size + 10;
end;

end.
