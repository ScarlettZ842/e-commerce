<?php

class Route{
    private static $uriList = array();
    private static $uriCallback = array();

    static public function add($uri, $function)
    {
        self::$uriList[] = $uri;
        self::$uriCallback[$uri] = $function;
    }

    static public function submit()
    {
                $uri = explode('?', $_SERVER['REQUEST_URI'])[0];

        // If hosted under /e-commerce, strip that prefix for routing
        $basePath = '/e-commerce';
        if (strpos($uri, $basePath) === 0) {
          $uri = substr($uri, strlen($basePath));
        }

        // Normalize empty to /
        if ($uri === '' || $uri === false) {
          $uri = '/';
        }

        // Normalize /index.php to /
        if ($uri === '/index.php') {
          $uri = '/';
        }

        // Debug logging to help diagnose 404s
        try {
            $debug = sprintf(
                "time=%s request_uri=%s computed_uri=%s",
                date('c'),
                isset($_SERVER['REQUEST_URI']) ? $_SERVER['REQUEST_URI'] : 'N/A',
                $uri
            );
            $logPath = sys_get_temp_dir() . '/router-debug.log';
            @file_put_contents($logPath, $debug . PHP_EOL, FILE_APPEND);
            error_log('[router] ' . $debug);
        } catch (\Throwable $e) {
            // ignore logging errors
        }
        $doesUriMatch = false;

        foreach(self::$uriList as $u)
        {
            if($u == $uri) {
                $doesUriMatch = true;
                break;
            }
        }

        if($doesUriMatch) {
            call_user_func(self::$uriCallback[$uri]);
        } else {
            try {
                $logPath = sys_get_temp_dir() . '/router-debug.log';
                @file_put_contents($logPath, 'no_match_for_uri=' . $uri . PHP_EOL, FILE_APPEND);
                error_log('[router] no_match_for_uri=' . $uri);
            } catch (\Throwable $e) {}
            http_response_code(404);
            require __DIR__ . '/views/404.php';
        }
    }
}
