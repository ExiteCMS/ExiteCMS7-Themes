{***************************************************************************}
{*                                                                         *}
{* ExiteCMS include template: _openside_x.tpl                              *}
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
{* This template generates the opening of a side panel with a close button *}
{*                                                                         *}
{* Include parameters:                                                     *}
{*    title = panel title                                                  *}
{*    state = state of the panel (on/off), default = 'on'                  *}
{*    style = css tag name to use for the panel body, default = 'side-body'*}
{*                                                                         *}
{***************************************************************************}
<table width='100%' cellpadding='0' cellspacing='0'>
	<tr>
		<td colspan='2' style='background-color:#003300;'>
			<img src='{$smarty.const.THEME}images/side-top.gif' alt='' />
		</td>
	</tr>
	<tr>
		<td width='160' class='sub-cap-main'>
			{$title|default:"&nbsp;"}
		</td>
		<td class='sub-cap-main'>
			<img src='{$smarty.const.THEME}images/panel_{if $_state == 1}on{else}off{/if}.gif' alt='{if $_state == 0}on{else}off{/if}' name='b_{$_name}' onclick="javascript:flipBox('{$_name}')" />
		</td>
	</tr>
</table>
<table width='100%' cellpadding='0' cellspacing='0'>
	<tr>
		<td class='{$style|default:"side-body"}'>
				<div id='box_{$_name}' {if $_state == 0}{else}style='display:none'{/if}>
	