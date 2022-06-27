<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitcef67f4e948b0b762a88abce5d71af32
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitcef67f4e948b0b762a88abce5d71af32::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitcef67f4e948b0b762a88abce5d71af32::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitcef67f4e948b0b762a88abce5d71af32::$classMap;

        }, null, ClassLoader::class);
    }
}