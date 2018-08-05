<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use Msg;


class Authenticate
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
        if (Auth::guard($guard)->guest()) {

            if ($request->ajax()) {

                return Msg::error('Unauthorized');

            } else {

	            $error_log_summary = array(
	                'Message' => 'authenticate redirecting'
	            );
	
	            log_write('errors', $error_log_summary);
                return redirect()->guest('admin/login');
            }
        }

        return $next($request);
    }
}
