<?php
/**
 
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'wordpress' );

/** Database password */
define( 'DB_PASSWORD', '123' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

#define( 'WP_SITEURL', 'http://' . $_SERVER['HTTP_HOST'].'/' );
#define( 'WP_HOME', 'http://' . $_SERVER['HTTP_HOST'] );
define( 'WP_HOME', 'http://' . $_SERVER['HTTP_HOST'] );
#define('WP_HOME', 'http://digmath.com');
#define('WP_SITEURL', 'http://130.193.40.247:9915/');

define( 'WP_SITEURL', 'http://' . $_SERVER['SERVER_NAME'] );
#define( 'WP_SITEURL', 'http://' . $_SERVER['HTTP_HOST'] . '/srv/www/wordpress' );
#$_SERVER['REQUEST_URI'] = str_replace("/wp-admin/", "/wp-admin/",  $_SERVER['REQUEST_URI']);
$_SERVER['REQUEST_URI'] = str_replace("/wp-admin/", "/wp-admin/",  $_SERVER['REQUEST_URI']);



/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'UJ_[l-{d_&Z9ScPIP#d|Rtc&udPtl:$P*}#Ss7@e3|2%:8W|UD},&E@1OJz^xr.h');
define('SECURE_AUTH_KEY',  'sg^Z|*3-iN$kjDjhtWDf|0k.,xRF`Ipm}z~~1;!p M);5aQsQ>i=rLx^>&c^AGu#');
define('LOGGED_IN_KEY',    '-83_?nY|{t,oDHJn:@&sU)5eTu1BeX:h!8-Z-u$k2>|:f@l8f?w_  u$2gZ}::$-');
define('NONCE_KEY',        '1zd[3?y5G/yZNczwQ|+rNHuw|_67MV.rjR+]?6U7C3j+r)ZvP!W1oBMhLuR1hNKS');
define('AUTH_SALT',        'e}rSC(ZM3k=/V{M|u?Ze0t]pX0Zi3y2)bJ8.,]JD68v-.Lp&A]~4YZeqT<?a$u:!');
define('SECURE_AUTH_SALT', '_2_tdHa Kd-Hq+)N?l9t]6,s_R-EXx?|K-n>TZ{:-F-}iZra2S%mQed^5}A,}E5;');
define('LOGGED_IN_SALT',   'O>xT}<JU7k<8h||GoM_Vk,-(0_n;i nVawQqWZsM8vQ2OkCH/;6&t<}2`Ly>p$WY');
define('NONCE_SALT',       '*N|ja(rLG4B_ Fe5D>ikf6+u-w2&_jZq_$hp/3AQV7+xxfQ</.dRQmX+5$5=|<,3');
/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
