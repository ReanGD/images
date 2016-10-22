<?php

## To enable image uploads, make sure the 'images' directory
## is writable, then set this to true:
$wgEnableUploads = true;
#$wgUseImageMagick = true;
#$wgImageMagickConvertCommand = "/usr/bin/convert";

$wgDiff = '/usr/bin/diff';
$wgDiff3 = '/usr/bin/diff3';

# The following permissions were set based on your choice in the installer
$wgGroupPermissions['*']['createaccount'] = false;
if ( $_SERVER['REMOTE_ADDR'] == '127.0.0.1' ) {
 	$wgGroupPermissions['*']['read'] = true;
 	$wgGroupPermissions['*']['edit'] = true;
}else{
	$wgGroupPermissions['*']['edit'] = false;
	$wgGroupPermissions['*']['read'] = false;
}
// $wgGroupPermissions['*']['read'] = true;

############## Optimize ##############

$wgMainCacheType = CACHE_ACCEL;
$wgMemCachedServers = array();
$wgMessageCacheType = CACHE_ACCEL;
$wgUseLocalMessageCache = true;
// Он слишком большой, поэтому может часто вытеснятся, лучше положить в BD
$wgParserCacheType = CACHE_DB;
$wgParserCacheExpireTime = 60 * 24 * 60 * 60; // 60 days
// Файловый кеш работает только для неавторизированных пользователей
$wgUseFileCache = false;
$wgFileCacheDirectory = '/data/cache';

// Отключение показов страниц счетчики.
$wgDisableCounters = true;

// Отключение счетчиков популярных страниц и т.п.
$wgMiserMode = true;

// # Text cache
// включение может вызывать проблемы (see https://www.mediawiki.org/wiki/Manual:$wgCompressRevisions)
$wgCompressRevisions = false; 
$wgRevisionCacheExpiry = 3 * 24 * 60 * 60; // 3 days

$wgResourceLoaderMaxage = array(
	'versioned' => array(
		// Squid/Varnish but also any other public proxy cache between the client and MediaWiki
		'server' => 60 * 24 * 60 * 60, // 60 days
		// On the client side (e.g. in the browser cache).
		'client' => 60 * 24 * 60 * 60, // 60 days
	),
	'unversioned' => array(
		'server' => 60 * 24 * 60 * 60, // 60 days
		'client' => 60 * 24 * 60 * 60, // 60 days
	),
);

$wgCacheDirectory = '/data/cache';

// Кеширование ссылок в боковой панели навигации
$wgEnableSidebarCache = true;


# Extensions

############## WikiEditor ##############
wfLoadExtension( 'WikiEditor' );
# Расширение включено по умолчанию, однако пользователь может отключить его в настройках.
$wgDefaultUserOptions['usebetatoolbar'] = 1;
# Enables link and table wizards by default but still allows users to disable them in preferences
$wgDefaultUserOptions['usebetatoolbar-cgd'] = 1;
# Показывает вкладки «Предпросмотра» и «Изменений»
$wgDefaultUserOptions['wikieditor-preview'] = 1;
# Показывает кнопки «Публикации» и «Отмены» справа сверху
$wgDefaultUserOptions['wikieditor-publish'] = 1;


############## VisualEditor ##############
wfLoadExtension( 'VisualEditor' );
// Расширение включено по умолчанию для всех
$wgDefaultUserOptions['visualeditor-enable'] = 1;
// Показывать окно приветствия
$wgVisualEditorShowBetaWelcome = false;

// Optional: Set VisualEditor as the default for anonymous users
// otherwise they will have to switch to VE
// $wgDefaultUserOptions['visualeditor-editor'] = "visualeditor";

// Don't allow users to disable it
// $wgHiddenPrefs[] = 'visualeditor-enable';

// OPTIONAL: Enable VisualEditor's experimental code features
// $wgDefaultUserOptions['visualeditor-enable-experimental'] = 1;

$wgVirtualRestConfig['modules']['parsoid'] = array(
        // URL to the Parsoid instance
        'url' => 'http://127.0.0.1:8000',
        // Parsoid "domain" (optional)
        'domain' => '127.0.0.1'
        // Parsoid "prefix" (optional)
        // 'prefix' => 'wiki'
);
$wgVirtualRestConfig['modules']['parsoid']['forwardCookies'] = false;

############## Other ##############
wfLoadExtension( 'InputBox' );
wfLoadExtension( 'SyntaxHighlight_GeSHi' );
