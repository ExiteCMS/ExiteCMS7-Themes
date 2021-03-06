{***************************************************************************}
{*                                                                         *}
{* ExiteCMS template: header.tpl                                           *}
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
{* This template generates the ExiteCMS website header.                    *}
{* If this header requires custom variables, assign them in the header     *}
{* preprocessing section of your theme.php                                 *}
{*                                                                         *}
{***************************************************************************}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$settings.locale_code|truncate:2:""}" lang="{$settings.locale_code|truncate:2:""}" dir="{$smarty.const.LOCALEDIR|lower}">

<head>
	<title>{$settings.sitename}{if defined('PAGETITLE')} - {$smarty.const.PAGETITLE}{/if}</title>
	<meta http-equiv='Content-Type' content='text/html; charset={$settings.charset}' />
	<meta http-equiv='Content-Language' content='{$settings.locale_code|truncate:2:""}' />
	<meta name='description' content='{$settings.description}' />
	<meta name='keywords' content='{$settings.keywords}' />
	<meta name='verify-v1' content='6uLZe0u5c6hJ3XE0LoGBQRuU7IdJ/B6BIa2Si7b1dkw=' />
	{if $headparms|default:false != false}{$headparms}{/if}
	<link href="{$smarty.const.THEME}exitecms__0001.css?version=1" rel="stylesheet" type="text/css" />
	{literal}
	<style type="text/css">
		.body-maint { margin: 5px 5px 5px 5px; color:#000; background-color:{/literal}{$settings.maintenance_color}{literal}; }
	</style>
	{/literal}
	{if $favicon|default:false != false}<link rel='shortcut icon' href='{$favicon}' />{/if}
	<script type='text/javascript' src='{$smarty.const.INCLUDES}jscripts/core_functions.js?version=1'></script>
	{if $smarty.const.LOAD_TINYMCE}
		{include file="_load_tinymce.tpl"}
	{/if}
	{if $smarty.const.LOAD_HOTEDITOR}
		{include file="_load_hoteditor.tpl"}
	{/if}
</head>

<body {if $bodyparms|default:false != false}{$bodyparms}{/if} {if $userdata.user_level == 103 || $settings.maintenance}class='body-maint'{else}class='body'{/if}>
<a name="page_top" id="page_top"></a>
<!-- {$settings.siteurl} - {$settings.sitename}
{$settings.description}
{$settings.keywords}
-->
{literal}
<script type='text/javascript'></script>
<script type='text/javascript'>
/* <![CDATA[ */
// assume standard window dimensions
var myWidth = 1024, myHeight = 768;
if( typeof( window.innerWidth ) == 'number' ) {
	// Non-IE
	myWidth = window.innerWidth;
	myHeight = window.innerHeight;
} else if( document.documentElement && ( document.documentElement.clientWidth || document.documentElement.clientHeight ) ) {
	// IE 6+ in 'standards compliant mode'
	myWidth = document.documentElement.clientWidth;
	myHeight = document.documentElement.clientHeight;
} else if( document.body && ( document.body.clientWidth || document.body.clientHeight ) ) {
	// IE 4 compatible
	myWidth = document.body.clientWidth;
	myHeight = document.body.clientHeight;
}
createCookie('width', myWidth, 0);
createCookie('height', myHeight, 0);

var fontGrootte = 0.7;
var pliCookie = readCookie('pliFontSize');

if (pliCookie != null) {
	var fontSize = Number(pliCookie);
	// fix fontsize calculation change problem
	if (fontSize < 2.5) fontGrootte = fontSize;
}
fontReset(fontGrootte);

function fontGroter(aantal) {
	if (Math.abs(aantal) < 1) {
		fontGrootte = fontGrootte + aantal;
	} else {
		fontGrootte = aantal;
	}
	if (fontGrootte > 2.5) fontGrootte = 0.7;
	fontGrootte = Math.round(fontGrootte*100)/100;
	document.body.style.fontSize = fontGrootte + 'em';
	createCookie('pliFontSize',fontGrootte,365);
}

function fontReset(aantal) {
	fontGrootte = Math.round(aantal*100)/100;
	document.body.style.fontSize = fontGrootte + 'em';
	createCookie('pliFontSize',fontGrootte,365);
}
{/literal}
{if iMEMBER}
{literal}
//
// PM and forum post counter checks
//
function checkMessages() {
	// check for new pm messages
	var asyncajax = asyncajaxcall();
	if (asyncajax) {
		try {
			// Asynchronous request, wait till we have it all
			asyncajax.open('GET', exitecms_basedir + "includes/ajax.response.php?request=counters", true);
			asyncajax.onreadystatechange = function() {
				if(asyncajax.readyState == 4) {
					if (asyncajax.status == 200) {
						try {
							// update the new message indicator
							newmsg = eval('('+asyncajax.responseText+')');
							if (document.getElementById("new_pm_header")) {
								if (parseInt(newmsg.pmcount) > 0) {
									document.getElementById("new_pm_header").innerHTML = "<a href='" + exitecms_basedir + "pm.php?action=show_new'><img src='" + exitecms_themedir + "images/newmsgs.gif' height='9' alt='' /></a>&nbsp;";
								} else {
									document.getElementById("new_pm_header").innerHTML = '';
								}
							}
							if (document.getElementById("new_pm_panel")) {
								if (parseInt(newmsg.pmcount) > 0) {
									document.getElementById("new_pm_panel_value").innerHTML = newmsg.pmtext;
									document.getElementById("new_pm_panel").style.display = 'inline';
								} else {
									document.getElementById("new_pm_panel").style.display = 'none';
								}
							}
							if (document.getElementById("new_posts_header")) {
								if (parseInt(newmsg.postcount) > 0) {
									document.getElementById("new_posts_header").innerHTML = "<a href='" + exitecms_basedir + "modules/forum_threads_list_panel/new_posts.php'><img src='" + exitecms_themedir + "images/newposts.gif' height='9' alt='" + locale_028 + "' /></a>&nbsp;";
								} else {
									document.getElementById("new_posts_header").innerHTML = '';
								}
							}
							if (document.getElementById("new_posts_panel")) {
								if (parseInt(newmsg.postcount) > 0) {
									document.getElementById("new_posts_panel_value").innerHTML = newmsg.posttext;
									document.getElementById("new_posts_panel").style.display = 'inline';
								} else {
									document.getElementById("new_posts_panel").style.display = 'none';
								}
							}
							// set a timer for the next check
							msgtimerid = setTimeout("checkMessages()", 60000);
						}
						catch (e) {
							// catch the error
						}
					}
				}
			};
			asyncajax.send(null);
		} catch (e) {
			return null;
		}
	} else {
		return null;
	}
}
{/literal}
var locale_028 = "{$locale.028}";
var exitecms_basedir = "{$smarty.const.BASEDIR}";
var exitecms_themedir = "{$smarty.const.THEME}";
// start the timer for the first check, in 1 minute
msgtimerid = setTimeout("checkMessages()", 60000);
{/if}
/* ]]> */
</script>
<table align='center' width='{$smarty.const.THEME_WIDTH}' cellspacing='0' cellpadding='0' class='headerbanner'>
	<tr style='background-image: url({$smarty.const.THEME}images/top.gif); background-repeat: none;height:160px;'>
		<td>
			<div style='display:inline;float:left;margin-top:135px;margin-left:10px;width:100px;'>
				<a href='.' onclick='fontGroter(-0.1); return false' title='Decrease font-size'><img src='{$smarty.const.THEME}images/minus.gif' alt='' border='0' /></a><a href='.' onclick='fontReset(0.7); return false' title='Restore default font-sizes'><img src='{$smarty.const.THEME}images/reset.gif' hspace='2' alt='' border='0' /></a><a href='.' onclick='fontGroter(0.1); return false' title='Increase font-size'><img src='{$smarty.const.THEME}images/plus.gif' alt='' border='0' /></a>
				<div id='new_posts_header' style='display:inline;'>
					{if $new_posts}
						<a href='{$smarty.const.BASEDIR}modules/forum_threads_list_panel/new_posts.php'><img src='{$smarty.const.THEME}images/newposts.gif' height='9' alt='{$locale.028}' /></a>
					{/if}
				</div>
				<div id='new_pm_header' style='display:inline;'>
					{if $new_pm}
						<a href='{$smarty.const.BASEDIR}pm.php?action=show_new'><img src='{$smarty.const.THEME}images/newmsgs.gif' height='9' alt='' /></a>&nbsp;
					{/if}
				</div>
			</div>
			<div style='float:left;margin-top:34px;margin-left:10px;'><img src='{$smarty.const.THEME}images/bells.gif' alt='' /></div>
			<div class='sub-header' style='float:left;margin-top:128px;margin-left:0px;'>
				{section name=index loop=$headermenu}
					{if !$smarty.section.index.first} &middot;{/if} <a style='color:#fff;' href='{$headermenu[index].link_url}' {if $headermenu[index].link_window == 1}target='_blank' {/if}>{$headermenu[index].link_name}</a>
				{/section}
			</div>
			<div id='countdown' style='white-space:no-wrap;text-align:center;float:right;font-weight:bold;width:380px;color:#CC0000;margin-top:148px;'></div>
			<div style='display:inline;float:right;text-align:center;width:750px;margin-top:-155px;margin-right:15px;' />
				<font size='6' color='{$settings.maintenance_color}'>{if $settings.maintenance}<b>MAINTENANCE MODE</b>{else}&nbsp;{/if}</font>
				<br /><br /><br />
				<font size='6' color='#CC0000'><b>{$settings.sitename}</b></font>
			</div>
		</td>
	</tr>
</table>
{literal}<script type='text/javascript'>
/* <![CDATA[ */
function countdown(year, month, day, hour, minute, format) {
	 Today = new Date();
	 Todays_Year = Today.getFullYear();
	 Todays_Month = Today.getMonth() + 1;

	 //Convert both today's date and the target date into miliseconds.
	 Todays_Date = (new Date(Todays_Year, Todays_Month, Today.getDate(),
							 Today.getHours(), Today.getMinutes(), Today.getSeconds())).getTime();
	 Target_Date = (new Date(year, month, day, hour, minute, 00)).getTime();

	 //Find their difference, and convert that into seconds.
	 Time_Left = Math.round((Target_Date - Todays_Date) / 1000);

	 if(Time_Left < 0) {
		document.getElementById('countdown').innerHTML = 'Happy New Year !!!';
	 } else {
		switch(format) {
			case 0:
				//The simplest way to display the time left.
					document.getElementById('countdown').innerHTML = Time_Left + ' seconds';
				break;
			case 1:
				//More detailed.
				days = Math.floor(Time_Left / (60 * 60 * 24));
				Time_Left %= (60 * 60 * 24);
				hours = Math.floor(Time_Left / (60 * 60));
				Time_Left %= (60 * 60);
				minutes = Math.floor(Time_Left / 60);
				Time_Left %= 60;
				seconds = Time_Left;
				//ps is short for plural suffix.
				dps = 's'; hps = 's'; mps = 's'; sps = 's';
				if(days == 1) dps ='';
				if(hours == 1) hps ='';
				if(minutes == 1) mps ='';
				if(seconds == 1) sps ='';

				document.getElementById('countdown').innerHTML = days + ' day' + dps + ' ';
				document.getElementById('countdown').innerHTML += hours + ' hour' + hps + ' ';
				document.getElementById('countdown').innerHTML += minutes + ' minute' + mps + ' and ';
				document.getElementById('countdown').innerHTML += seconds + ' second' + sps;
				document.getElementById('countdown').innerHTML += ' to ' + year + '!';
				break;
			default:
				document.getElementById('countdown').innerHTML = Time_Left + ' seconds';
		}
	 }
	 //Recursive call, keeps the clock ticking.
	 setTimeout('countdown(' + year + ',' + month + ',' + day + ',' + hour + ',' + minute + ',' + format + ');', 1000);
}

countdown({/literal}{$year}{literal}, 1, 1, 0, 0, 1);
/* ]]> */
</script>{/literal}
{***************************************************************************}
{* End of Template                                                         *}
{***************************************************************************}
