{***************************************************************************}
{* ExiteCMS Content Management System                                      *}
{***************************************************************************}
{* Copyright 2006-2008 Exite BV, The Netherlands                           *}
{* for support, please visit http://www.exitecms.org                       *}
{*-------------------------------------------------------------------------*}
{* Released under the terms & conditions of v2 of the GNU General Public   *}
{* License. For details refer to the included gpl.txt file or visit        *}
{* http://gnu.org                                                          *}
{***************************************************************************}
{* $Id:: _header.tpl 1996 2008-11-10 11:30:08Z WanWizard                  $*}
{*-------------------------------------------------------------------------*}
{* Last modified by $Author:: WanWizard                                   $*}
{* Revision number $Rev:: 1996                                            $*}
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
		<td class='cap-left'><img src='{$smarty.const.THEME}images/blank.gif' width='13' height='30' alt='' /></td>
		<td class='cap-main'>{$title|default:"&nbsp;"}</td>
		<td align='right' class='cap-main'><img src='{$smarty.const.THEME}images/panel_{if $_state == 1}on{else}off{/if}.gif' alt='{if $_state == 0}on{else}off{/if}' name='b_{$_name}' onclick="javascript:flipBox('{$_name}')" /></td>
		<td class='cap-right'><img src='{$smarty.const.THEME}images/blank.gif' width='13' height='30' alt='' /></td>
	</tr>
	<tr>
		<td class='border-left'><img src='{$smarty.const.THEME}images/blank.gif' width='13' height='1' alt='' /></td>
		<td colspan='2' class='{$style|default:"main-body"}'>
			<div id='box_{$_name}' {if $_state == 0}{else}style='display:none'{/if}>
