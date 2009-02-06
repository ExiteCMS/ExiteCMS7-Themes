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
{* $Id:: _openside.tpl 2092 2008-12-05 19:23:35Z WanWizard                $*}
{*-------------------------------------------------------------------------*}
{* Last modified by $Author:: WanWizard                                   $*}
{* Revision number $Rev:: 2092                                            $*}
{***************************************************************************}
{*                                                                         *}
{* This template generates the standard opening of a side panel            *}
{*                                                                         *}
{* Include parameters:                                                     *}
{*    title = panel title                                                  *}
{*    style = css tag name to use for the panel body. Default = 'side-body'*}
{*                                                                         *}
{***************************************************************************}
<table cellpadding='0' cellspacing='0' width='100%' class='side-panel'>
	<tr>
		<td style='padding:5px;'>
			<table width='100%' cellpadding='0' cellspacing='0'>
				<tr>
					<td class='sub-cap-main'>{$title|default:"&nbsp;"}</td>
				</tr>
				<tr>
				<td class='{$style|default:"side-body"}'>

