<?php 

$query['pavmegamenu'][]  = "DELETE FROM `".DB_PREFIX ."setting` WHERE `code`='pavmegamenu' and `key` = 'pavmegamenu_module'";

$query['pavmegamenu'][]  = "DELETE FROM `".DB_PREFIX ."setting` WHERE `code`='pavmegamenu_params' and `key` = 'params'";
$query['pavmegamenu'][] =  " 
INSERT INTO `".DB_PREFIX ."setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(0, 0, 'pavmegamenu_params', 'pavmegamenu_params', '[{\"submenu\":1,\"subwidth\":800,\"id\":42,\"align\":\"aligned-fullwidth\",\"cols\":1,\"group\":0,\"rows\":[{\"cols\":[{\"widgets\":\"wid-38\",\"colwidth\":3},{\"widgets\":\"wid-32\",\"colwidth\":4},{\"widgets\":\"wid-33|wid-35\",\"colwidth\":5}]}]},{\"align\":\"aligned-left\",\"submenu\":1,\"cols\":1,\"group\":0,\"id\":44,\"rows\":[{\"cols\":[{\"type\":\"menu\",\"colwidth\":12}]}]},{\"align\":\"aligned-left\",\"submenu\":1,\"cols\":1,\"group\":0,\"id\":48,\"rows\":[{\"cols\":[{\"type\":\"menu\",\"colwidth\":12}]}]}]', 0);

";

$query['pavblog'][] ="
INSERT INTO `".DB_PREFIX ."layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(0, 14, 0, 'pavblog/%');
";
$query['pavblog'][] ="
INSERT INTO `".DB_PREFIX ."layout` (`layout_id`, `name`) VALUES
(0, 'Pav Blog');
";
?>