@extends('layouts.app')

@section('title', 'PLATTERS')

@section('content')

    <?php

    $option = 'flatters';

    ?>



    <div class="be-wrapper be-fixed-sidebar be-fixed-sidebar123" style="background-color: #D1E6D7;">

        @include('layouts.checkout-heading', ['currentPage' => $currentPage ?? null])

        @include('layouts.catering-side-menu')



        <div class="be-content">

            <div class="main-content">

                <form class="row" id="menu">

                    @csrf

                    <div class="food-section" style="margin-top: 44px;">

                        <div class="container-fluid">

                            {{--PLATTERS CARD START--}}

                            <div class="row mt-5 platters-container">

                                <div class="col-md-12">

                                    <h2 class="fw-bold">

                                        PLATTERS

                                        <small>(All served with a minimum of 7 pieces per person)</small>

                                    </h2>

                                </div>



                                @foreach($data['platters'] as $platter)

                                    <div class="col-md-4">

                                        <div class="title doll mb-5">



                                            <div class="card"

                                                 style="margin-top: 15px; border: none ; border-radius: 0 !important; box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;">

                                                <div class="card-header p-4"

                                                     style="border: none !important; background: rgb(232 232 232);">

                                                    <div class="selection"

                                                         style="justify-content: space-between; align-items: center;">

                                                        <h4>{!! $platter->name !!}</h4>

                                                        @if($platter->price != null)

                                                            @if($platter->price >= 0)

                                                                <span class="price-span">$ {{ number_format($platter->price, 2) }} pp</span>

                                                            @endif

                                                        @endif

                                                        <input class="form-check-input setup-buffet-radio platter"

                                                               type="radio" value="{{ $platter->id }}"

                                                               id="flexCheckDefault" name="platter">

                                                    </div>

                                                </div>

                                                <div class="card-body p-4">

                                                    {!! $platter->content !!}

                                                </div>



                                            </div>

                                        </div>

                                    </div>

                                @endforeach



                                <div class="col-md-4">

                                    <div class="title doll mb-5">



                                        <div class="card"

                                             style="margin-top: 15px; border: none; border-radius: 0 !important; box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;">

                                            <div class="card-header p-4"

                                                 style="border: none !important; background: rgb(232 232 232);">

                                                <div class="selection"

                                                     style="justify-content: space-between; align-items: center;">

                                                    <h4>WALK & FORK

                                                        <small>(served in noodle boxes)</small>

                                                    </h4>

                                                    <input class="form-check-input setup-buffet-radio platter platter-walk"

                                                           type="radio" value="{{ $platter->id }}"

                                                           id="flexCheckDefault" name="platter">

                                                </div>

                                            </div>

                                            <div class="card-body p-4">

                                                @foreach($data['platters-walk-and-fork'] as $platter)

                                                    <div class="selection"

                                                         style="justify-content: space-between; align-items: center; margin-bottom: 10px;">

                                                <span class="selection-name"

                                                      style="font-size: 16px; color: #000; text-transform:capitalize;">{!! $platter->name !!}</span>

                                                        <span class="price-span">$ {{ number_format($platter->price, 2) }} pp</span>

                                                        <input class="form-check-input setup-buffet-radio platter-walk-setup"

                                                               type="checkbox"

                                                               value="{{ $platter->id }}" id="flexCheckDefault"

                                                               name="platter-options[]">

                                                    </div>

                                                @endforeach



                                            </div>



                                        </div>

                                    </div>

                                </div>

                            </div>



                            {{--                        PLATTERS CARD NED--}}

                           

                        </div>



                    </div>



                    <div class="container-fluid main-selction-4  center-button py-5">

                        <div class="row">

                            <div class="view-my-selection mt-4 pb-5 ">

                                <button type="submit" class="btn btn-outline-success view-my-selection-button float-end"

                                        disabled=""> VIEW MY SELECTION

                                </button>



                            </div>

                        </div>

                    </div>

                </form>

            </div>

        </div>

    </div>



    <?php

    $inner = true;

    ?>

    <style>

        @media screen and (max-width: 767px) {

            .be-left-sidebar .sidebar-elements {

                margin-top: -9px !important;

            }

        }

    </style>

@endsection



@section('scripts')

    <script>

        $(function () {

            const $body = $('body');

            $body.on('change', '.platter', function (event) {

                if ($(event.target).hasClass('platter-walk')) {

                    if ($('.platter-walk-setup:checked').length === 0) {

                        $('.platter-walk-setup:first').prop('checked', true);

                    }

                } else {

                    $('.platter-walk-setup').prop('checked', false);

                }

            });



            $body.on('change', '.form-check-input', function () {

                if ($('.form-check-input:checked').length > 0) {

                    if ($('.view-my-selection-button').prop('disabled')) {

                        $('.view-my-selection-button').prop('disabled', false);

                    }

                } else {

                    $('.view-my-selection-button').prop('disabled', true);

                }

            });

        });

    </script>

@endsection