(*
 *   InstantObjects
 *   Primer Demo - with "external storage" of Part and Parts
 *
 *)

(* ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is: Seleqt InstantObjects
 *
 * The Initial Developer of the Original Code is: Seleqt
 *
 * Portions created by the Initial Developer are Copyright (C) 2001-2003
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 * Carlo Barazzetta:
 * - cross-platform porting for Delphi & Kilix
 * - PerformanceView form changed to make tests with UsePreparedQuery
 * Salary attribute of type Currency added to Person
 * PersonEdit form and random data form changed to test Graphic support
 * ***** END LICENSE BLOCK ***** *)

program PrimerExternal;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  ModelExternal in 'ModelExternal.pas',
  ContactView in 'ContactView.pas' {ContactViewForm: TFrame},
  BasicView in 'BasicView.pas' {BasicViewForm: TFrame},
  BasicEdit in 'BasicEdit.pas' {BasicEditForm},
  ContactEdit in 'ContactEdit.pas' {ContactEditForm},
  PersonEdit in 'PersonEdit.pas' {PersonEditForm},
  CompanyEdit in 'CompanyEdit.pas' {CompanyEditForm},
  DemoData in 'DemoData.pas',
  ContactFilterEdit in 'ContactFilterEdit.pas' {ContactFilterEditForm},
  MainData in 'MainData.pas' {MainDataModule: TDataModule},
  ContactBrowse in 'ContactBrowse.pas' {ContactBrowseForm},
  CompanyBrowse in 'CompanyBrowse.pas' {CompanyBrowseForm},
  PerformanceView in 'PerformanceView.pas' {PerformanceViewForm: TFrame},
  Welcome in 'Welcome.pas' {WelcomeForm},
  PersonBrowse in 'PersonBrowse.pas' {PersonBrowseForm},
  BasicBrowse in 'BasicBrowse.pas' {BasicBrowseForm},
  CountryBrowse in 'CountryBrowse.pas' {CountryBrowseForm},
  DemoDataRequest in 'DemoDataRequest.pas' {DemoDataRequestForm},
  ContactSort in 'ContactSort.pas' {ContactSortForm},
  CategoryBrowse in 'CategoryBrowse.pas' {CategoryBrowseForm},
  HelpView in 'HelpView.pas' {HelpViewForm: TFrame},
  QueryView in 'QueryView.pas' {QueryViewForm: TFrame},
  RandomData in 'RandomData.pas',
  Stopwatch in 'Stopwatch.pas',
  Utility in 'Utility.pas';

{$R *.res}
{$R *.mdr} {ModelExternal}

begin
  Application.Initialize;
  Application.Title := 'InstantObjects Primer (Delphi/Kylix cross platform version)';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TMainDataModule, MainDataModule);
  Application.Run;
end.