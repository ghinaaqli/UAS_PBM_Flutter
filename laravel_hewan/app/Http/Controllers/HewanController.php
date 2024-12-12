<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HewanController extends Controller
{
    public function index()
    {
        // Contoh data hewan
        $animals = [
            ['name' => 'Kucing', 'imageUrl' => 'https://example.com/kucing.jpg'],
            ['name' => 'Anjing', 'imageUrl' => 'https://example.com/anjing.jpg'],
        ];

        return response()->json($animals);
    }
}
