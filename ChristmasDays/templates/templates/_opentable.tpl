{***************************************************************************}
{*                                                                         *}
{* ExiteCMS include template: _opentable.tpl                               *}
{*                                                                         *}
{***************************************************************************}
{*                                                                         *}
{* Author: WanWizard <wanwizard@gmail.com>                                 *}
{*                                                                         *}
{* Revision History:                                                       *}
{* 2007-07-01 - WW - Initial version                                       *}
{*                                                                         *}
{***************************************************************************}
{*                                                                         *}
{* This template generates the standard opening of a center panel          *}
{*                                                                         *}
{* Include parameters:                                                     *}
{*    title = panel title                                                  *}
{*    style = css tag name to use for the panel body. Default = 'main-body'*}
{*                                                                         *}
{***************************************************************************}
<table width='100%' cellpadding='0' cellspacing='0'>
	<tr>
		<td width='100%' class='cap-main'>
			{$title|default:"&nbsp;"}
		</td>
	</tr>
</table>
<table width='100%' cellpadding='0' cellspacing='0'>
	<tr>
		<td class='{$style|default:"main-body"}'>
