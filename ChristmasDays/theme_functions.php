<?php
/*---------------------------------------------------+
| ExiteCMS Content Management System                 |
+----------------------------------------------------+
| Copyright 2007 Harro "WanWizard" Verton, Exite BV  |
| for support, please visit http://exitecms.exite.eu |
+----------------------------------------------------+
| Released under the terms & conditions of v2 of the |
| GNU General Public License. For details refer to   |
| the included gpl.txt file or visit http://gnu.org  |
+----------------------------------------------------*/
if (eregi("theme_functions.php", $_SERVER['PHP_SELF']) || !defined('INIT_CMS_OK')) die();

// include the menu functions to create the header menu bar
require_once PATH_INCLUDES."menu_include.php";

// include the text image generation function
require_once PATH_INCLUDES."font2image.php";

// generate the treelist for items in the header menu bar
$linkinfo = array();
menu_generate_tree("", array(2,3), false);

/*------------------------------------------------------+
| convert the navigation panel into a header menu bar   |
+-------------------------------------------------------*/
function add_fullscreen_menu() {
	global $db_prefix, $template_panels, $template_variables;

	// make sure the navigation infusion panel exists
	if (file_exists(PATH_MODULES."main_menu_panel/main_menu_panel.php")) {

		// load the menu include
		require_once PATH_INCLUDES."menu_include.php";
		
		// array's to store the variables for this panel
		$variables = array();
		
		// define linkinfo as global, as this script is called from within a function!
		global $linkinfo; $linkinfo = array(); 
		
		// build the menu tree for this panel
		menu_generate_tree('main_menu_panel');

		$variables['linkinfo'] = $linkinfo;
		
		// we want to auto-close submenu's that are open
		$variables['close_open_submenus'] = true;
		
		$template_panels[] = array('type' => 'upper', 'name' => 'modules.main_menu_panel', 'template' => '_fullscreen_navigation.tpl');
		$template_variables['modules.main_menu_panel'] = $variables;
	}
}

//--------------------------
// author: Louai Munajim
// website: www.elouai.com
//
// Note:
// Unix timestamp limitations 
// Date range is from 
// the year 1970 to 2038
//--------------------------
function countdown($year, $month, $day, $hour, $minute)
{
  // make a unix timestamp for the given date
  $the_countdown_date = mktime($hour, $minute, 0, $month, $day, $year, -1);

  // get current unix timestamp
  $today = time();

  $difference = $the_countdown_date - $today;
  if ($difference < 0) return "";

  $days_left = floor($difference/60/60/24);
  $hours_left = floor(($difference - $days_left*60*60*24)/60/60);
  $minutes_left = floor(($difference - $days_left*60*60*24 - $hours_left*60*60)/60);

//  echo "Today's date ".date("F j, Y, g:i a")."<br/>";
//  echo "Countdown date ".date("F j, Y, g:i a",$the_countdown_date)."<br/>";
  return $days_left." days, ".$hours_left." hours and ".$minutes_left." minutes left to ".$year."!";
}
?>
