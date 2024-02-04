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
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'admin' );

/** Database password */
define( 'DB_PASSWORD', '1234' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

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
define( 'AUTH_KEY',          '`Rs$mELmarNw:hn%%_(47<tIm,?3ISC.FpM<$:Hj@^g2&`wwP6]GWjH&|H&-17Zt' );
define( 'SECURE_AUTH_KEY',   'dmz$=20`%W)[o##vTS}-9Eft<*lri/~v8jC9$-gHMzO!Lu3dMQGIEK];@Qv?-(tg' );
define( 'LOGGED_IN_KEY',     'BIF558%c&0F#|+Jq2o/}Gfyy=UiX5&T|!8I0;Gtz=XwJR$8[hRIs~uW16Vp&wD{F' );
define( 'NONCE_KEY',         '8vO^/=cd!xT0:[K{z4}3@`d}Fs[NgWHHquRPbr+*v$6KTuQNl*w_<A+V%MiPAvLu' );
define( 'AUTH_SALT',         '0n`(XdTSnn6y9&DVf]u},+gSRHriHRZ,=xTqRpX_grVE}q]Q.Tq]/CKPGp_R~F(Y' );
define( 'SECURE_AUTH_SALT',  '0r+mD}cfZwC{zK|ioR@V?-:1S$289h2C*94wP(]Kv7Aa3.Om>|eBYW(PRhMxszld' );
define( 'LOGGED_IN_SALT',    '*b>s5fQp1#]dY&rX@N4sv[Zr}7_lM~z`Q@tYv.*7$HD<?IRK)&sKc79T=QCy9jP(' );
define( 'NONCE_SALT',        '(LnCw;j[5?va}?R};Wv>$b*PpN7p@rqek7iK~ C>.;/eG9m9=7T~w#r3;i?.UGW0' );
define( 'WP_CACHE_KEY_SALT', 'fXRGU3%//^I6L^G7UK{McDXAPVofoLCrL1~s&=3!QxO=SRM@47Kz`Js?(~(D5]{/' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
