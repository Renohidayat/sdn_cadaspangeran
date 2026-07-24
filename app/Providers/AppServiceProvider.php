<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        try {
            \Illuminate\Support\Facades\View::share('footer', \App\Models\Footer::first());
        } catch (\Exception $e) {
            // Do nothing if table does not exist yet
        }
    }
}
