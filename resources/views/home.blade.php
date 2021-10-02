@extends('layouts.app')

@section('title')
    Inter Hospital Transfer System - Home
@endsection

@section('content')
    @doctor
    @include('user.doctor.dashboard')
    @enddoctor

    @assistant
    @include('user.assistant.dashboard')
    @endassistant

@endsection
