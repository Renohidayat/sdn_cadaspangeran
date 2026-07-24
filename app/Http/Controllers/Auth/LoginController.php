<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Session;
use Illuminate\Support\Facades\Auth;
class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function showLoginForm()
    {
        return view('auth.login_hub');
    }

    public function showAdminLoginForm()
    {
        return view('auth.login', ['role' => 'Admin']);
    }

    public function showGuruLoginForm()
    {
        return view('auth.login', ['role' => 'Guru']);
    }

    public function showSiswaLoginForm()
    {
        return view('auth.login', ['role' => 'Siswa']);
    }

    public function username()
    {
        return 'login';
    }

    protected function credentials(\Illuminate\Http\Request $request)
    {
        $login = $request->input('login');
        $field = filter_var($login, FILTER_VALIDATE_EMAIL) ? 'email' : 'username';

        return [
            $field => $login,
            'password' => $request->input('password'),
        ];
    }

    protected function authenticated(\Illuminate\Http\Request $request, $user)
    {
        if($user->status == 'Tidak Aktif') {
            Auth::logout();
            Session::flash('error', "Akun yang kamu gunakan sudah Tidak Aktif !");
            return redirect('login');
        }

        if ($user->role == 'Guru') {
            return redirect()->route('guru.jadwal.index');
        } elseif (in_array($user->role, ['Siswa', 'Murid'])) {
            return redirect()->route('siswa.jadwal.index');
        } else {
            return redirect()->route('home');
        }
    }
}
