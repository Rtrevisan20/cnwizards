{******************************************************************************}
{                       CnPack For Delphi/C++Builder                           }
{                     �й����Լ��Ŀ���Դ�������������                         }
{                   (C)Copyright 2001-2025 CnPack ������                       }
{                   ------------------------------------                       }
{                                                                              }
{            ���������ǿ�Դ��������������������� CnPack �ķ���Э������        }
{        �ĺ����·�����һ����                                                }
{                                                                              }
{            ������һ��������Ŀ����ϣ�������ã���û���κε���������û��        }
{        �ʺ��ض�Ŀ�Ķ������ĵ���������ϸ���������� CnPack ����Э�顣        }
{                                                                              }
{            ��Ӧ���Ѿ��Ϳ�����һ���յ�һ�� CnPack ����Э��ĸ��������        }
{        ��û�У��ɷ������ǵ���վ��                                            }
{                                                                              }
{            ��վ��ַ��https://www.cnpack.org                                  }
{            �����ʼ���master@cnpack.org                                       }
{                                                                              }
{******************************************************************************}

unit CnLazPkgEntry;
{* |<PRE>
================================================================================
* ������ƣ�CnPack IDE ר�Ұ�
* ��Ԫ���ƣ�CnWizard ר�� Lazarus ע����ڵ�Ԫ
* ��Ԫ���ߣ��ܾ��� (zjy@cnpack.org)
* ��    ע��
* ����ƽ̨��PWin7Pro + Lazarus 4.0
* ���ݲ��ԣ�PWin9X/2000/XP + Lazarus 4.0
* �� �� �����õ�Ԫ�е��ַ��������ϱ��ػ�����ʽ
* �޸ļ�¼��2025.06.23 V1.0
*               ������Ԫ
================================================================================
|</PRE>}

interface

{$I CnWizards.inc}

uses
  LazarusPackageIntf;

procedure Register;

procedure CnWizardMgrRegister;

implementation

{$IFDEF DEBUG}
uses
  CnDebug;
{$ENDIF}

procedure Register;
begin
{$IFDEF DEBUG}
  CnDebugger.LogMsg('Laz Register Unit');
{$ENDIF}
  RegisterUnit('CnLazPkgEntry', @CnWizardMgrRegister);
end;

procedure CnWizardMgrRegister;
begin
{$IFDEF DEBUG}
  CnDebugger.LogMsg('Laz Register CnWizardMgr');
{$ENDIF}
  // CnWizardMgr := TCnWizardMgr.Create;
end;

initialization
{$IFDEF DEBUG}
  CnDebugger.LogMsg('Laz Register Package');
{$ENDIF}
  RegisterPackage('CnPack IDE Wizards', @Register);

finalization
{$IFDEF DEBUG}
  CnDebugger.LogMsg('Laz CnLazPkgEntry Finalization');
{$ENDIF}
  // FreeAndNil(CnWizardMgr);

end.
