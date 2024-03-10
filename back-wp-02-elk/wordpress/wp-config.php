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
define( 'DB_HOST', '10.129.0.21:3306' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

#define('WP_HOME', 'http://digmath.com');

#define( 'WP_HOME', 'http://digmath.com' );
define( 'WP_HOME', 'http://' . $_SERVER['HTTP_HOST']);

define( 'WP_SITEURL', 'http://' . $_SERVER['SERVER_NAME'] );

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
define('AUTH_KEY',         '^)nGlz4(8<IcPa_kWCAWC*Zq25oY1R)8BveT]p3D:MH-$Vk%%iPBe!-C1|3;XuMv');
define('SECURE_AUTH_KEY',  '!kUX%1J.#6FV=X|:+Z8 )*|N&lfSL}i6O0ZKtN./{j_]+@J.H2K^dg*c2Ne;;U>Y');
define('LOGGED_IN_KEY',    'Jv ob3#^,ax*H~h8I3lzU2giK+11s|-+8N-],~&7~XQI23V<C)spW}>gD1xhe-ON');
define('NONCE_KEY',        '|6c<?(Uk97Nb@`L[p[Assh!(frrPBQ{,gi8<./-;`q-9!oC6nzy-_:UMr__#B&:|');
define('AUTH_SALT',        'LwMHr)orRS~7F1gmNi+yK=B|Inl:,Vicm.48GV7E1}K3vGGu;E|pe@<:M^mosi_>');
define('SECURE_AUTH_SALT', 'Y]_U]zGivn[<yk.~NJRK[RF?d^q2AbA[XyWv2}*S ++avgZ8kVCp+yr`R?gC=:Bl');
define('LOGGED_IN_SALT',   '5 rWn)o8~R#Cp{CtW;DuZ4U$Z?8&|Xe[;MHme#DQBHb%}X:ZC+PUGzqGk]vl**E-');
define('NONCE_SALT',       'mf^|,;V+0;AdGSJ#a&%j`WWI#b-=g}45I<MnFM>sUD{w=i|b-W0:1ccWb]VkpJ/H');
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
