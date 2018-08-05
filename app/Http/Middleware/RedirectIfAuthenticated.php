<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        if (Auth::guard($guard)->check()) {
        	
            $error_log_summary = array(
                'Message' => 'authenticate redirecting'
            );

            log_write('errors', $error_log_summary);
            return redirect('/admin/login');
        }

        return $next($request);
    }
}
