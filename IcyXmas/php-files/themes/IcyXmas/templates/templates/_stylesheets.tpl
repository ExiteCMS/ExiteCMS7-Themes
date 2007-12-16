{***************************************************************************}
{*                                                                         *}
{* ExiteCMS template: stylesheets.tpl                                      *}
{*                                                                         *}
{***************************************************************************}
{*                                                                         *}
{* Author: WanWizard <wanwizard@gmail.com>                                 *}
{*                                                                         *}
{* Revision History:                                                       *}
{* 2007-10-15 - WW - Initial version                                       *}
{*                                                                         *}
{***************************************************************************}
{*                                                                         *}
{* Include template for the website stylesheets, Only define them here!    *}
{*                                                                         *}
{***************************************************************************}
{literal}
<style type='text/css'>
/* ========================================================= */
/* ExiteCMS standard CSS tags. Do NOT remove these!          */
/* ========================================================= */

/* --- General settings ------------------------------------ */

						/* text anchors */
a						{ color:#91c4e0; text-decoration:none; }
a:hover					{ color:#6aa6c8; text-decoration:none; }

						/* text anchors in side panels */
a.side					{ color:#91c4e0; text-decoration:none; }
a:hover.side			{ color:#6aa6c8; text-decoration:none; }

						/* image anchors */
a img					{ border:none; }

						/* horizontal lines */
hr						{ height:1px; border:1px solid #eee; }

/* --- HTML form settings ---------------------------------- */

						/* general form definition */
form					{ margin:0px; }

						/* buttons */
.button					{ font-size:90%; font-weight:normal; color:#6aa6c8; background-color:#fff; height:20px; border:1px solid #DEDEDE; margin-top:2px; }

						/* text entry fields */
.textbox				{ font-size:95%; color:#6aa6c8; background-color:#fff; border:1px solid #DEDEDE; padding:2px; }

/* --- Website template ------------------------------------ */

						/* page body (normal mode & maintenance mode */
body					{ font-size:1em; font-family:Tahoma, Arial, Sans-Serif; background-image: url({/literal}{$smarty.const.THEME}{literal}images/bg.gif); background-repeat: repeat-x; margin-top: 30px; }
.body 					{ margin: 5px 5px 5px 5px; color:#555; background-color:#ffffff; }
.body-maint				{ margin: 5px 5px 5px 5px; color:#555; background-color:{/literal}{$settings.maintenance_color}{literal}; }

						/* content body, can be different from the body when centered */
.content				{ border:1px solid #6aa6c8; border-top:none; padding: 1px; }

						/* column definitions (left, center, right) */
.side-border-left		{ color:#777; background-color:#fff; padding:10px 5px 10px 10px; }
.main-bg				{ color:#555; background-color:#fff; padding:15px 5px 10px 5px; }
.side-border-right		{ color:#777; background-color:#fff; padding:10px 10px 10px 5px; }

						/* panels in the center column */
.main-body 				{ color:#555; background-color:#fff; padding:5px; }

						/* panels in the left & right columns (with and without padding, p.e. for images) */
.side-body				{ color:#6aa6c8; background-color:#fff; padding:4px; }
.side-body-nm			{ color:#6aa6c8; background-color:#fff; }

						/* tags for sub texts, captions, etc. */ 
.small					{ font-weight:normal; }
.small2					{ font-weight:normal; color:#555; }
.smallalt				{ color:#0C386F; }

						/* title bars within a panel */
.infobar 				{ color:#000; background-color:#E0E9EF; padding:3px 4px 3px 4px; }

/* --- Browser window centered div ------------------------- */

.splashscreen-h			{ font-size:0.8em; width:800px; position: absolute; top: 50%; left: 0px; width: 100%; margin-top: -150px; text-align: center; min-width: 900px; }
.splashscreen-v			{ color:#91c4e0; background-color:#fff; border:1px solid #6aa6c8; position: relative; text-align: left; width: 500px; height: 250px; margin: 0px auto; }

/* --- Header ---------------------------------------------- */

						/* header definition and background image */
.headerbanner			{ color:#333; background-color:#eee; padding:0px; }

/* --- Panels ---------------------------------------------- */

						/* center panel cell definitions */
.main-panel				{ margin: 0px 0px 0px 0px; }

						/* side panel cell definitions */
.side-panel				{ padding:0px 0px 0px 0px; margin:0px 0px 10px 0px; border:1px #ddd solid; }

						/* center panel title */
.cap-main				{ font-weight:bold; font-size:115%; color:#fff; background-color:#91c4e0; background-image:url({/literal}{$smarty.const.THEME}{literal}images/cap-main.gif); height:30px; padding-top:5px; white-space:nowrap;  }

						/* side panel title */
.sub-cap-main			{ color:#333; height:30px; padding:0px 2px 0px 2px; background-image:url({/literal}{$smarty.const.THEME}{literal}images/sub-cap-main.gif); background-repeat:repeat-x; }

						/* labels and separators in side panels */
.side-label				{ font-weight:bold; font-size:110%; color:#6aa6c8; background-color:#fff; margin:2px 0px 2px 0px; padding:1px 1px 2px 1px; white-space:nowrap;overflow:hidden; }

						/* labels and separators in body panels */
.main-label				{ color:#6aa6c8; background-color:#E0E9EF; font-weight:bold; padding:4px 4px 4px 4px; margin:0px 0px 5px 0px; white-space:nowrap;overflow:hidden; }

						/* links in side panels */
.side-label-link		{ white-space:nowrap;overflow:hidden;}

						/* positioning of side-panel open/close buttons */
.side-label-button		{ position:relative; float:right; top:2px; right:2px; }

						/* horizontal lines in side-panels */ hr.side-hr
						{ border:1px #eee solid; border-bottom:1px #eee solid; }

/* --- Footer ---------------------------------------------- */

.footer					{ text-align:center; color:#6aa6c8; padding:5px; line-height:125%; }
.footer img 			{ border: 0px; vertical-align: -30%; }

/* --- Panel content layouts-------------------------------- */

						/* standard table borders */
.tbl-border				{ color:#777; background-color:#DEDEDE; }

						/* borderless tables */
.tbl					{ color:#777; background-color:#fff; padding:4px; }

						/* table cells - color 1 */
.tbl1					{ color:#777; background-color:#fff; padding:4px; }

						/* table cells - color 2 */
.tbl2					{ color:#777; background-color:#fff; padding:4px; }

						/* user-info cell header */
.tbl_top_left			{ color:#333333; font-weight: bold; background-color:#e3e3e3; padding:4px; border-left: 1px solid #bbbbbb; border-top: 1px solid #bbbbbb; }

						/* user-info cell of a message */
.tbl_left				{ color:#333333; background-color:#fbf9f9; padding:4px; border-left: 1px solid #bbbbbb; border-top: 1px solid #bbbbbb; }

						/* button row at the bottom the user-info cell */
.tbl_left_bottom		{ background-color:#fbf9f9; padding:4px; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #bbbbbb; }

						/* message subject  */
.tbl_top_mid			{ font-weight: bold; color:#333333; background-color:#e3e3e3; padding:4px; border-top: 1px solid #bbbbbb; }

						/* button row in the message header */
.tbl_top_right			{ color:#333333; background-color:#e3e3e3; padding:4px; border-top: 1px solid #bbbbbb; border-right: 1px solid #bbbbbb; }

						/* message body */
.tbl_right		 		{ color:#333; background-color:#fff; padding:4px; border: 1px solid #bbbbbb; }

						/* message body, unread message */
.unread					{ color:#000000; background-color:#e0f5f9; padding:4px; border: 1px solid #bbbbbb; }

						/* links in the message body */
.tbl_right		 		{ background-color:#eeeeee; padding:4px; border: 1px solid #bbbbbb; }

						/* quotes within the message body */
.quote					{ color:#555; background-color:#fff; padding:4px; margin:0px 20px 0px 20px; border:1px #DEDEDE solid; }

						/* code sections within the message body */
.codeblock 				{ font-size:110%; font-family: courier, monospace; margin:5px 20px 5px 20px; overflow-x:auto; white-space: nowrap}
.code 					{ margin:0px; padding:0 0 0 5px; border:1px #bbb solid; background-color:#fff; overflow-x:hidden}
.codenr 				{ margin:0px; padding:0px 3px 0px 3px; border:1px #bbb solid; background-color:#ddd; float:left; }

						/* thumbnail caption in the message body */
.thumbnail				{ color:#ddd;background-color:#333;text-align:center; }
a.thumbnail				{ color: #ddd; }

						/* horizontal pollbar definition */
.poll 					{ height:12px; border:1px #DEDEDE solid; }

/* --- Upgrade admin module -------------------------------- */

						/* revision title */
.rev_title				{ color:#333; font-weight:bold; }
						/* revision title for major revisions */
.rev_major				{ color:red; font-weight:bold; }

						/* revision description text */
.rev_desc				{ }

/* --- TinyMCE overrides ----------------------------------- */

body.mceContentBody 	{ background-color:#eee; }

/* ========================================================= */
/* Add your own custom CSS tags below this line!             */
/* ========================================================= */

/* --- header elements -------------------------------- */

.outer-border-top		{ border:1px solid #6aa6c8; border-bottom:none; padding: 0; margin-top:10px; }
.sub-header 			{ color:#fff; background-image:url({/literal}{$smarty.const.THEME}{literal}images/sub_header_bg.gif); background-repeat:repeat-x; height:30px; padding:5px; }


/* --- Panel extra elements -------------------------------- */

.border-tleft			{ width:5px; height:16px; background-image:url({/literal}{$smarty.const.THEME}{literal}images/border-tleft.gif); }
.border-tright			{ width:5px; height:16px; background-image:url({/literal}{$smarty.const.THEME}{literal}images/border-tright.gif); }
.border-tmain 			{ height:16px; background-image:url({/literal}{$smarty.const.THEME}{literal}images/border-tmain.gif); background-repeat:repeat-x; }

.sub-cap-left			{ width:13px; height:12px; background-image:url({/literal}{$smarty.const.THEME}{literal}images/border-bleft.gif); }
.sub-cap-right			{ width:13px; height:12px; background-image:url({/literal}{$smarty.const.THEME}{literal}images/border-bright.gif); }

.cap-left				{ width:13px; height:30px; background-image:url({/literal}{$smarty.const.THEME}{literal}images/cap-left.gif); }
.cap-right				{ width:13px; height:30px; background-image:url({/literal}{$smarty.const.THEME}{literal}images/cap-right.gif); }

.border-left			{ width:13px; height:1px; background-image:url({/literal}{$smarty.const.THEME}{literal}images/border-left.gif); background-repeat:repeat-y; }
.border-right			{ width:13px; height:1px; background-image:url({/literal}{$smarty.const.THEME}{literal}images/border-right.gif); background-repeat:repeat-y; }
.border-main			{ height:12px; background-image:url({/literal}{$smarty.const.THEME}{literal}images/border-bmain.gif); background-repeat:repeat-x; }

.border-bleft			{ width:13px; height:12px; background-image:url({/literal}{$smarty.const.THEME}{literal}images/border-bleft.gif); }
.border-bright			{ width:13px; height:12px; background-image:url({/literal}{$smarty.const.THEME}{literal}images/border-bright.gif); }
.border-bmain			{ height:12px; background-image:url({/literal}{$smarty.const.THEME}{literal}images/border-bmain.gif); background-repeat:repeat-x; }

.tbl_right a			{ text-decoration:underline; }

/* --- Google Maps ----------------------------------------- */

#tooltip 				{ width: 200px; z-index: 99999;	}
.tooltip 				{ font-weight:bold;padding: 2px;border:1px #036 solid;border-width:1px 2px 2px 1px;border-color: #000 #666 #666 #000;background-color:#FF9;color: #000;}

/* --- Download Panel --------------------------------------- */

.bar					{ width:16px; margin-left:15px;margin-right:15px; }
#bar1					{ background-image:url({/literal}{$smarty.const.THEME}{literal}images/bar-1.gif); background-position: 0% 100%; float:right; position:relative; }
#bar2					{ background-image:url({/literal}{$smarty.const.THEME}{literal}images/bar-2.gif); background-position: 0% 100%; float:right; position:relative; }
#bar3					{ background-image:url({/literal}{$smarty.const.THEME}{literal}images/bar-3.gif); background-position: 0% 100%; float:right; position:relative; }
#bar4					{ background-image:url({/literal}{$smarty.const.THEME}{literal}images/bar-4.gif); background-position: 0% 100%; float:right; position:relative; }
#bar5					{ background-image:url({/literal}{$smarty.const.THEME}{literal}images/bar-5.gif); background-position: 0% 100%; float:right; position:relative; }
#bar6					{ background-image:url({/literal}{$smarty.const.THEME}{literal}images/bar-6.gif); background-position: 0% 100%; float:right; position:relative; }
#bar7					{ background-image:url({/literal}{$smarty.const.THEME}{literal}images/bar-7.gif); background-position: 0% 100%; float:right; position:relative; }
#bar8					{ background-image:url({/literal}{$smarty.const.THEME}{literal}images/bar-8.gif); background-position: 0% 100%; float:right; position:relative; }
#bar9					{ background-image:url({/literal}{$smarty.const.THEME}{literal}images/bar-9.gif); background-position: 0% 100%; float:right; position:relative; }

#bullet					{ margin:0 0 1px 0; }
#total-downloads		{ padding-top:4px; }
.boxheader 				{ fontsize:110%; font-weight:bold; width:45px; padding-top:0px; padding-right:1px; text-align:center; white-space: nowrap; }
.boxtypes 				{ width:45px; padding-top:4px; padding-right:1px; text-align:center; white-space: nowrap; }

/* --- Donations -------------------------------------------- */

.donate_title			{ font-weight:bold;color:#004a80; }
.donate_box				{ width:24em; height:24em; margin:1px; padding:0.5em; border:1px solid #CCC; -moz-border-radius:10px; background:#9d9ab7; }

/* ========================================================= */
</style>
{/literal}
{***************************************************************************}
{* End of Template                                                         *}
{***************************************************************************}
