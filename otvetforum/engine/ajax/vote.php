<?php
define('DATALIFEENGINE', true);
define('ROOT_DIR', substr(dirname(__FILE__), 0, -12));
define('ENGINE_DIR', ROOT_DIR.'/engine');

include ENGINE_DIR.'/data/config.php';
require_once ENGINE_DIR.'/classes/mysql.php';
require_once ENGINE_DIR.'/modules/functions.php';

$db = new dle_db();
$db->connect($db_host, $db_user, $db_pass, $db_name, $db_charset);

header('Content-Type: application/json');

if (!$is_logged) {
    die(json_encode(['success' => false, 'message' => 'Требуется авторизация']));
}

$id = intval($_POST['id']);
$action = $db->safesql($_POST['action']);

if (!$id || !in_array($action, ['up', 'down'])) {
    die(json_encode(['success' => false, 'message' => 'Неверные параметры']));
}

// Проверяем, голосовал ли уже пользователь
$row = $db->super_query("SELECT rating, vote_num FROM dle_post WHERE id = '$id'");
if (!$row) {
    die(json_encode(['success' => false, 'message' => 'Пост не найден']));
}

$user_voted = $db->super_query("SELECT 1 FROM dle_post_extras WHERE news_id = '$id' AND user_id = '{$member_id['user_id']}'");

if ($user_voted) {
    die(json_encode(['success' => false, 'message' => 'Вы уже голосовали']));
}

// Обновляем рейтинг
$rating = $action === 'up' ? $row['rating'] + 1 : $row['rating'] - 1;
$vote_num = $row['vote_num'] + 1;

$db->query("UPDATE dle_post SET rating = '$rating', vote_num = '$vote_num' WHERE id = '$id'");
$db->query("INSERT INTO dle_post_extras (news_id, user_id) VALUES ('$id', '{$member_id['user_id']}')");

echo json_encode([
    'success' => true,
    'rating' => $rating,
    'message' => 'Ваш голос учтен'
]);

$db->close();
?>