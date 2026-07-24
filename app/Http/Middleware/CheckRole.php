<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckRole
{
    public function handle(Request $request, Closure $next, ...$roles)
    {
        if (!Auth::check()) {
            return redirect('login');
        }

        $userRole = strtolower(trim(Auth::user()->role));
        $allowedRoles = array_map(function($r) {
            return strtolower(trim($r));
        }, $roles);

        if (in_array($userRole, $allowedRoles)) {
            return $next($request);
        }

        abort(403, 'Unauthorized action. Your role: ' . Auth::user()->role . '. Required: ' . implode(',', $roles));
    }
}
