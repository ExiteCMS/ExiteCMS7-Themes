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
{* $Id:: _footer.tpl 2092 2008-12-05 19:23:35Z WanWizard                  $*}
{*-------------------------------------------------------------------------*}
{* Last modified by $Author:: WanWizard                                   $*}
{* Revision number $Rev:: 2092                                            $*}
{***************************************************************************}
{*                                                                         *}
{* This template generates the ExiteCMS website footer.                    *}
{* If this footer requires custom variables, assign them in the footer     *}
{* preprocessing section of your theme.php                                 *}
{*                                                                         *}
{***************************************************************************}
		</div>
	</div>
	<div id="lborder">
		<div id="lborderl"></div>
		<div id="lborderr"></div>
	</div>
	<div class="footer">
			v.{$settings.version} <a href='http://www.exitecms.org' target='_blank' title='ExiteCMS v7.2 ©2008 Exite BV'><img src='{$smarty.const.IMAGES}cms-logo-small.png' alt='' /></a> rev.{$settings.revision}<br />
			{$settings.counter} {if $settings.counter == 1}{$locale.140}{else}{$locale.141}{/if}
		<p>
			The webserver needed {$_loadstats.time|string_format:"%01.3f"} sec. to process this page. Of that, the MySQL v{$MySQLinfo} engine needed {$_loadstats.querytime|string_format:"%01.3f"} sec.<br />
			Total number of queries: {$_loadstats.queries}&nbsp;&nbsp;(Selects: {$_loadstats.selects}&nbsp;&nbsp;Inserts: {$_loadstats.inserts}&nbsp;&nbsp;Deletes: {$_loadstats.deletes}&nbsp;&nbsp;Updates: {$_loadstats.updates}&nbsp;&nbsp;Others: {$_loadstats.others})<br />
			{if $_loadstats.compression}
			zlib compression is enabled for this website
			{/if}
		</p>
		<p>
			2point0 designed by <a href='http://manotor.com'>Max Toball</a>. Adapted for ExiteCMS by Rollsroyce
		</p>	
	</div>
</div>





{***************************************************************************}
{* End of Template                                                         *}
{***************************************************************************}
