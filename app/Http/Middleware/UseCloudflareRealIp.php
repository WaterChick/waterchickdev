<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class UseCloudflareRealIp
{
    public function handle(Request $request, Closure $next): Response
    {
        $cfIp = $request->headers->get('CF-Connecting-IP');

        if ($cfIp && filter_var($cfIp, FILTER_VALIDATE_IP)) {
            $request->server->set('REMOTE_ADDR', $cfIp);

            // ať XFF i X-Real-IP sedí na klienta (logy, rate limit, atd.)
            $request->headers->set('X-Real-IP', $cfIp);
            $request->headers->set('X-Forwarded-For', $cfIp);
        }

        return $next($request);
    }
}
