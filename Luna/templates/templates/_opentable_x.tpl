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
{* $Id::                                                                  $*}
{*-------------------------------------------------------------------------*}
{* Last modified by $Author::                                             $*}
{* Revision number $Rev::                                                 $*}
{***************************************************************************}
{*                                                                         *}
{* This template generates the standard opening of a center panel          *}
{*                                                                         *}
{* Include parameters:                                                     *}
{*    title = panel title                                                  *}
{*    style = css tag name to use for the panel body. Default = 'main-body'*}
{*                                                                         *}
{***************************************************************************}
<table cellpadding='0' cellspacing='0' width='100%' class='main-panel'>
	<tr align='center'>
		<td>
			<table cellpadding='0' cellspacing='0' width='100%'>
				<tr>
			        <td class='capleft'><img src='{$smarty.const.THEME}images/blank.gif' width='8' height='20' alt='' style='display:block'></td>
					<td class='cap-main'>
						{$title|default:"&nbsp;"}
					</td>
			        <td class='capright'><img src='{$smarty.const.THEME}images/blank.gif' width='8' height='20' alt='' style='display:block'></td>
				</tr>
				<tr>
					<td colspan='3' class='{$style|default:"main-body"}'>
