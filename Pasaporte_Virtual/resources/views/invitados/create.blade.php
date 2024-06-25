@extends('layouts.app')

@section('content')
<div class="">
    <div class="container-fluid" id="container-login">
        <div id="success-message-container" class="position-fixed top-0 start-50 translate-middle-x text-center" style="display: none; z-index: 9999;">
            <div class="alert alert-success" role="alert" style="position: relative;">
                <span id="success-message"></span>
            </div>
        </div>

        @if(session('success'))
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                showSuccessMessage('{{ session('success') }}');
            });
        </script>
        @endif

        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="card" id="card-login">
                    <div class="card-body">
                        <div class="text-center">
                            @php
                            $logo = \App\Models\Logo::latest()->first(); // Obtener el último logo creado en la base de datos
                            @endphp
                            <div class="text-center">
                                <img class="logoInicioInvitado mx-auto" src="{{ asset('images/user2.png') }}" alt="">
                            </div>
                        </div>
                        <h1 class="listadolugares display-4">
        
                        </h1>       
                        <h5 class="text-center mb-4 logininv">Ingresa como Invitado</h5>

                        <form action="{{url('/invitados')}}" method="post" class="formLoginInvitado">
                        <div class="form-groupinviia">
                            <input type="text" name="NombreCompleto" id="NombreCompleto" class="form-control" required placeholder="Nombre Completo" oninput="this.value = this.value.replace(/^[ ]+|[ ]{2,}/g, '')">
                        </div>
                        <div class="form-groupinviia">
                            <input type="text" name="Apellidos" id="Apellidos" class="form-control" required placeholder="Apellidos" oninput="this.value = this.value.replace(/^[ ]+|[ ]{2,}/g, '')">
                        </div> 
                        <div class="form-groupinviia">   
                            <input type="email" name="Correo" id="Correo" class="form-control" required placeholder="E-mail">
                        </div>
                        <div class="form-groupinviia">      
                            <input type="tel" name="Telefono" id="Telefono" class="form-control" required placeholder="Número de teléfono" pattern="\d*" oninput="this.value = this.value.replace(/[^0-9]/g, '')">
                        </div>    
                            <div class="form-group text-center">
                            <div class="d-grid">
                            <button type="submit" value="Enviar" class="btn btn-primary botonEnviarInvitados">Enviar</button>
                        </div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    .large-header {
        height: 100vh;
        position: relative;
    }

    .large-header::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-image: url("{{ asset('images/fondoblanco.png') }}"); /* Ruta de la imagen de fondo */
        background-size: cover;
        background-position: center;
        z-index: -1; /* Asegura que la imagen de fondo esté detrás del contenido */
    }
</style>

<script>
    // Función para mostrar el mensaje de éxito
    function showSuccessMessage(message) {
        const successMessageContainer = document.getElementById('success-message-container');
        const successMessageElement = document.getElementById('success-message');

        // Mostrar el mensaje de éxito
        successMessageElement.innerText = message;
        successMessageContainer.style.display = 'block';

        // Ocultar el mensaje después de 3 segundos
        setTimeout(function () {
            successMessageContainer.style.display = 'none';
        }, 3000);
    }
</script>
@endsection