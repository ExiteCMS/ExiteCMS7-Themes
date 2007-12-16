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

/*------------------------------------------------------+
| Generate the template variables for the download bars |
+-------------------------------------------------------*/
function downloadbars() {
	global $db_prefix;
	
	// define the max width of a bar in pixels
	$barheight = 65;
	
	// define the download records we want a bar graph from
	$download = array();

	// get the download statistics for the required download records
	$total = 0;
	$result = dbquery("SELECT * FROM ".$db_prefix."downloads WHERE download_bar > '0' ORDER BY download_bar DESC");
	while ($data = dbarray($result)) {
		$access = true;
		$cat_id = $data['download_cat'];
		while(true) {
			// check if the user has access to this download item
			$data2 = dbarray(dbquery("SELECT * FROM ".$db_prefix."download_cats WHERE download_cat_id = '".$cat_id."'"));
			if (!checkgroup($data2['download_cat_access'])) {
				$access = false;
				break;
			}
			// if this was a sub-category, check the parent as well
			$cat_id = $data2['download_parent'];
			// if no more parents are present, end the loop
			if ($cat_id == 0) break;
			
		}
		// if the user has access, add this download to the bar panel
		if ($access) {
			if (strlen($data['download_title']) > 6) $data['download_title'] = substr($data['download_title'],0,6);
			$data['download_title'] = strtoupper(trim($data['download_title']));
			$download[] = $data;
			$total += $data['download_count'];
		}
	}

	// calculate the percentages of the grand total of all the entries listed (in $total)
	$maxperc = 0;
	foreach ($download as $key => $value) {
		if ($total == 0)
			$download[$key]['percentage'] = 0;
		else
			$download[$key]['percentage'] = floor($value['download_count'] / $total * 100);
		// add 1 to make sure 'percentage' is never zero (to work around a Firefox DIV bug)
		$download[$key]['percentage']++;
		$maxperc = max($maxperc, $download[$key]['percentage']);
	}
	// calculate the percentage multiplier to fill out the bars nicely
	$multiplier = $maxperc == 0 ? 1 : ($barheight / $maxperc);

	// display the panel with the download statistics
	$i=1;
	foreach ($download as $key => $value) {
		$download[$key]['value'] = floor($value['percentage'] * $multiplier);
		$download[$key]['baseline'] = 65 - $download[$key]['value'];
		$i++;
	}
	return $download;
}

/*------------------------------------------------------+
| Generate the title for the download bar counter       |
+-------------------------------------------------------*/
function bartitle() {
	global $db_prefix;

	$result = dbquery("SELECT download_cat_name FROM ".$db_prefix."download_cats WHERE download_cat_id = '0'");
	if ($data = dbarray($result))
		if ($data['download_cat_name'] != "") $bar_title = trim($data['download_cat_name']);
	if (!isset($bar_title)) $bar_title = "Current Release Downloads";

//	return urlencode($bar_title);
	return $bar_title;
}
?>