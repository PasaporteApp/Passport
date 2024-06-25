<?php

namespace App\Http\Controllers;

use App\Models\Invitados;
use Illuminate\Http\Request;
use App\Models\Event;
use App\Models\user;
use App\Models\Rol;
use Illuminate\Support\Facades\Auth;





class InvitadosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('invitados.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('invitados/create');
    }
    

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    
    
     public function store(Request $request)
     {
         $userData = $request->validate([
             'NombreCompleto' => 'required',
             'Apellidos' => 'required',
             'Correo' => 'required',
             'Telefono' => 'required',
         ]);
     
         $user = new User();
         $user->name = $request->input('NombreCompleto') . ' ' . $request->input('Apellidos');
         $user->email = $request->input('Correo');
         $user->phone_number = $request->input('Telefono');
         $user->rol_id = 2; // Ajusta esto según tu lógica para asignar el rol
         $user->save();
         $user->assignRole('Visitante');
         Auth::login($user);
        
        //  return redirect()->route('eventos.listaEventos');
        $eventos = Event::all();
        return view('eventos/listaeventos',compact('eventos'));
     }
        
    
    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Invitados  $invitados
     * @return \Illuminate\Http\Response
     */
    public function show(Invitados $invitados)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Invitados  $invitados
     * @return \Illuminate\Http\Response
     */
    public function edit(Invitados $invitados)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Invitados  $invitados
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Invitados $invitados)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Invitados  $invitados
     * @return \Illuminate\Http\Response
     */
    public function destroy(Invitados $invitados)
    {
        //
    }
}
