@extends('admin.layouts.app')
@section('title', 'Dinner')
@section('content')

<div class="content-body">
    <div class="container-fluid">
		<div class="row page-titles">
			<ol class="breadcrumb">
				<li class="breadcrumb-item active"><a href="javascript:void(0)">Dinner</a></li>
			</ol>
        </div>

        <div class="row">
            <!-- Main -->
			<div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Main Options</h4>
						<button type="button" class="btn btn-rounded btn-primary add-catering" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" data-parent="1">
							<span class="btn-icon-start text-primary">
								<i class="fa fa-plus color-primary"></i>
                        	</span>
							Add
						</button>
                    </div>
                    <div class="card-body">
						@if(isset($data['main-options']) && count($data['main-options']) > 0)
							<div class="table-responsive">
								<table class="table table-responsive-md">
									<thead>
										<tr>
											<th><strong>Name</strong></th>
											<th><strong>Content</strong></th>
                                            <th><strong>Additional</strong></th>
											<th><strong>Group of People</strong></th>
											<th><strong>Price per person</strong></th>
											<th><strong>Action</strong></th>
										</tr>
									</thead>
									<tbody>
										@foreach($data['main-options'] as $d)
											<tr>
												<td>{{$d->name}}</td>
                                                <td>{!! $d->content !!}</td>
                                                <td>
                                                    @if($d->vegetarian)
                                                        Vegetarian, 
                                                    @endif
                                                    @if($d->gluten)
                                                        Gluten Free, 
                                                    @endif
                                                    @if($d->vegan)
                                                        Vegan
                                                    @endif
                                                </td>
                                                <td>{{$d->group}}</td>
                                                <td>$ <?=number_format($d->price,2)?></td>
												<td>
                                                    <div class="dropdown">
														<button type="button" class="btn btn-success light sharp" data-bs-toggle="dropdown">
															<svg width="20px" height="20px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
														</button>
														<div class="dropdown-menu">
															<a href="javascript:void(0)" class="dropdown-item edit-catering" data-bs-toggle="modal" data-bs-target=".edit-catering-modal" data-name="{{$d->name}}" data-content="{{$d->content}}" data-id="{{$d->id}}" data-group="{{$d->group}}" data-price="{{$d->price}}" data-parent="{{$d->parent}}" data-vegetarian="{{$d->vegetarian}}" data-gluten="{{$d->gluten}}" data-vegan="{{$d->vegan}}" data-selectoption="{{ $d->max_option }}">Edit</a>
															<a class="dropdown-item" onclick="destroy({{$d->id}}, '/admin/catering/destroy/{{$d->id}}', '/admin/catering/dinner');">Delete</a>
														</div>
													</div>
												</td>
											</tr>
										@endforeach
									</tbody>
								</table>
							</div>
						@else
							<div class="center">
								No data found.
							</div>
						@endif
                    </div>
                </div>
            </div>

            <!-- Beverage -->
			<div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Beverage</h4>
						<button type="button" class="btn btn-rounded btn-primary add-catering" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" data-parent="2">
							<span class="btn-icon-start text-primary">
								<i class="fa fa-plus color-primary"></i>
                        	</span>
							Add
						</button>
                    </div>
                    <div class="card-body">
						@if(isset($data['beverage']) && count($data['beverage']) > 0)
							<div class="table-responsive">
								<table class="table table-responsive-md">
									<thead>
										<tr>
											<th><strong>Name</strong></th>
											<th><strong>Content</strong></th>
                                            <th><strong>Additional</strong></th>
											<th><strong>Group of People</strong></th>
											<th><strong>Price per person</strong></th>
											<th><strong>Action</strong></th>
										</tr>
									</thead>
									<tbody>
										@foreach($data['beverage'] as $d)
											<tr>
												<td>{{$d->name}}</td>
                                                <td>{!! $d->content !!}</td>
                                                <td>
                                                    @if($d->vegetarian)
                                                        Vegetarian, 
                                                    @endif
                                                    @if($d->gluten)
                                                        Gluten Free, 
                                                    @endif
                                                    @if($d->vegan)
                                                        Vegan
                                                    @endif
                                                </td>
                                                <td>{{$d->group}}</td>
                                                <td>$ <?=number_format($d->price,2)?></td>
												<td>
                                                    <div class="dropdown">
														<button type="button" class="btn btn-success light sharp" data-bs-toggle="dropdown">
															<svg width="20px" height="20px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
														</button>
														<div class="dropdown-menu">
															<a href="javascript:void(0)" class="dropdown-item edit-catering" data-bs-toggle="modal" data-bs-target=".edit-catering-modal" data-name="{{$d->name}}" data-content="{{$d->content}}" data-id="{{$d->id}}" data-group="{{$d->group}}" data-price="{{$d->price}}" data-parent="{{$d->parent}}" data-vegetarian="{{$d->vegetarian}}" data-gluten="{{$d->gluten}}" data-vegan="{{$d->vegan}}">Edit</a>
															<a class="dropdown-item" onclick="destroy({{$d->id}}, '/admin/catering/destroy/{{$d->id}}', '/admin/catering/breakfast');">Delete</a>
														</div>
													</div>
												</td>
											</tr>
										@endforeach
									</tbody>
								</table>
							</div>
						@else
							<div class="center">
								No data found.
							</div>
						@endif
                    </div>
                </div>
            </div>

            <!-- Setup -->
			<div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Setup</h4>
						<button type="button" class="btn btn-rounded btn-primary add-catering" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" data-parent="3">
							<span class="btn-icon-start text-primary">
								<i class="fa fa-plus color-primary"></i>
                        	</span>
							Add
						</button>
                    </div>
                    <div class="card-body">
						@if(isset($data['setup']) && count($data['setup']) > 0)
							<div class="table-responsive">
								<table class="table table-responsive-md">
									<thead>
										<tr>
											<th><strong>Name</strong></th>
											<th><strong>Content</strong></th>
											<th><strong>Additional</strong></th>
											<th><strong>Group of People</strong></th>
											<th><strong>Price per person</strong></th>
											<th><strong>Action</strong></th>
										</tr>
									</thead>
									<tbody>
										@foreach($data['setup'] as $d)
											<tr>
												<td>{{$d->name}}</td>
                                                <td>{!! $d->content !!}</td>
                                                <td>
                                                    @if($d->vegetarian)
                                                        Vegetarian, 
                                                    @endif
                                                    @if($d->gluten)
                                                        Gluten Free, 
                                                    @endif
                                                    @if($d->vegan)
                                                        Vegan
                                                    @endif
                                                </td>
                                                <td>{{$d->group}}</td>
                                                <td>$ <?=number_format($d->price,2)?></td>
												<td>
                                                    <div class="dropdown">
														<button type="button" class="btn btn-success light sharp" data-bs-toggle="dropdown">
															<svg width="20px" height="20px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
														</button>
														<div class="dropdown-menu">
															<a href="javascript:void(0)" class="dropdown-item edit-catering" data-bs-toggle="modal" data-bs-target=".edit-catering-modal" data-name="{{$d->name}}" data-content="{{$d->content}}" data-id="{{$d->id}}" data-group="{{$d->group}}" data-price="{{$d->price}}" data-parent="{{$d->parent}}" data-vegetarian="{{$d->vegetarian}}" data-gluten="{{$d->gluten}}" data-vegan="{{$d->vegan}}">Edit</a>
															<a class="dropdown-item" onclick="destroy({{$d->id}}, '/admin/catering/destroy/{{$d->id}}', '/admin/catering/breakfast');">Delete</a>
														</div>
													</div>
												</td>
											</tr>
										@endforeach
									</tbody>
								</table>
							</div>
						@else
							<div class="center">
								No data found.
							</div>
						@endif
                    </div>
                </div>
            </div>

            <!-- Carvery Options -->
			<div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Carvery Options</h4>
						<button type="button" class="btn btn-rounded btn-primary add-catering" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" data-parent="4">
							<span class="btn-icon-start text-primary">
								<i class="fa fa-plus color-primary"></i>
                        	</span>
							Add
						</button>
                    </div>
                    <div class="card-body">
						@if(isset($data['carvery']) && count($data['carvery']) > 0)
							<div class="table-responsive">
								<table class="table table-responsive-md">
									<thead>
										<tr>
											<th><strong>Name</strong></th>
											<th><strong>Content</strong></th>
											<th><strong>Additional</strong></th>
											<th><strong>Group of People</strong></th>
											<th><strong>Price per person</strong></th>
											<th><strong>Action</strong></th>
										</tr>
									</thead>
									<tbody>
										@foreach($data['carvery'] as $d)
											<tr>
												<td>{{$d->name}}</td>
                                                <td>{!! $d->content !!}</td>
                                                <td>
                                                    @if($d->vegetarian)
                                                        Vegetarian, 
                                                    @endif
                                                    @if($d->gluten)
                                                        Gluten Free, 
                                                    @endif
                                                    @if($d->vegan)
                                                        Vegan
                                                    @endif
                                                </td>
                                                <td>{{$d->group}}</td>
                                                <td>$ <?=number_format($d->price,2)?></td>
												<td>
                                                    <div class="dropdown">
														<button type="button" class="btn btn-success light sharp" data-bs-toggle="dropdown">
															<svg width="20px" height="20px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
														</button>
														<div class="dropdown-menu">
															<a href="javascript:void(0)" class="dropdown-item edit-catering" data-bs-toggle="modal" data-bs-target=".edit-catering-modal" data-name="{{$d->name}}" data-content="{{$d->content}}" data-id="{{$d->id}}" data-group="{{$d->group}}" data-price="{{$d->price}}" data-parent="{{$d->parent}}" data-vegetarian="{{$d->vegetarian}}" data-gluten="{{$d->gluten}}" data-vegan="{{$d->vegan}}">Edit</a>
															<a class="dropdown-item" onclick="destroy({{$d->id}}, '/admin/catering/destroy/{{$d->id}}', '/admin/catering/breakfast');">Delete</a>
														</div>
													</div>
												</td>
											</tr>
										@endforeach
									</tbody>
								</table>
							</div>
						@else
							<div class="center">
								No data found.
							</div>
						@endif
                    </div>
                </div>
            </div>

            <!-- Hot Options -->
			<div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Hot Options</h4>
						<button type="button" class="btn btn-rounded btn-primary add-catering" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" data-parent="5">
							<span class="btn-icon-start text-primary">
								<i class="fa fa-plus color-primary"></i>
                        	</span>
							Add
						</button>
                    </div>
                    <div class="card-body">
						@if(isset($data['hot']) && count($data['hot']) > 0)
							<div class="table-responsive">
								<table class="table table-responsive-md">
									<thead>
										<tr>
											<th><strong>Name</strong></th>
											<th><strong>Content</strong></th>
											<th><strong>Additional</strong></th>
											<th><strong>Group of People</strong></th>
											<th><strong>Price per person</strong></th>
											<th><strong>Action</strong></th>
										</tr>
									</thead>
									<tbody>
										@foreach($data['hot'] as $d)
											<tr>
												<td>{{$d->name}}</td>
                                                <td>{!! $d->content !!}</td>
                                                <td>
                                                    @if($d->vegetarian)
                                                        Vegetarian, 
                                                    @endif
                                                    @if($d->gluten)
                                                        Gluten Free, 
                                                    @endif
                                                    @if($d->vegan)
                                                        Vegan
                                                    @endif
                                                </td>
                                                <td>{{$d->group}}</td>
                                                <td>$ <?=number_format($d->price,2)?></td>
												<td>
                                                    <div class="dropdown">
														<button type="button" class="btn btn-success light sharp" data-bs-toggle="dropdown">
															<svg width="20px" height="20px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
														</button>
														<div class="dropdown-menu">
															<a href="javascript:void(0)" class="dropdown-item edit-catering" data-bs-toggle="modal" data-bs-target=".edit-catering-modal" data-name="{{$d->name}}" data-content="{{$d->content}}" data-id="{{$d->id}}" data-group="{{$d->group}}" data-price="{{$d->price}}" data-parent="{{$d->parent}}" data-vegetarian="{{$d->vegetarian}}" data-gluten="{{$d->gluten}}" data-vegan="{{$d->vegan}}">Edit</a>
															<a class="dropdown-item" onclick="destroy({{$d->id}}, '/admin/catering/destroy/{{$d->id}}', '/admin/catering/breakfast');">Delete</a>
														</div>
													</div>
												</td>
											</tr>
										@endforeach
									</tbody>
								</table>
							</div>
						@else
							<div class="center">
								No data found.
							</div>
						@endif
                    </div>
                </div>
            </div>

            <!-- Sea food Options -->
			<div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Sea Food Options</h4>
						<button type="button" class="btn btn-rounded btn-primary add-catering" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" data-parent="6">
							<span class="btn-icon-start text-primary">
								<i class="fa fa-plus color-primary"></i>
                        	</span>
							Add
						</button>
                    </div>
                    <div class="card-body">
						@if(isset($data['sea-food']) && count($data['sea-food']) > 0)
							<div class="table-responsive">
								<table class="table table-responsive-md">
									<thead>
										<tr>
											<th><strong>Name</strong></th>
											<th><strong>Content</strong></th>
											<th><strong>Additional</strong></th>
											<th><strong>Group of People</strong></th>
											<th><strong>Price per person</strong></th>
											<th><strong>Action</strong></th>
										</tr>
									</thead>
									<tbody>
										@foreach($data['sea-food'] as $d)
											<tr>
												<td>{{$d->name}}</td>
                                                <td>{!! $d->content !!}</td>
                                                <td>
                                                    @if($d->vegetarian)
                                                        Vegetarian, 
                                                    @endif
                                                    @if($d->gluten)
                                                        Gluten Free, 
                                                    @endif
                                                    @if($d->vegan)
                                                        Vegan
                                                    @endif
                                                </td>
                                                <td>{{$d->group}}</td>
                                                <td>$ <?=number_format($d->price,2)?></td>
												<td>
                                                    <div class="dropdown">
														<button type="button" class="btn btn-success light sharp" data-bs-toggle="dropdown">
															<svg width="20px" height="20px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
														</button>
														<div class="dropdown-menu">
															<a href="javascript:void(0)" class="dropdown-item edit-catering" data-bs-toggle="modal" data-bs-target=".edit-catering-modal" data-name="{{$d->name}}" data-content="{{$d->content}}" data-id="{{$d->id}}" data-group="{{$d->group}}" data-price="{{$d->price}}" data-parent="{{$d->parent}}" data-vegetarian="{{$d->vegetarian}}" data-gluten="{{$d->gluten}}" data-vegan="{{$d->vegan}}">Edit</a>
															<a class="dropdown-item" onclick="destroy({{$d->id}}, '/admin/catering/destroy/{{$d->id}}', '/admin/catering/breakfast');">Delete</a>
														</div>
													</div>
												</td>
											</tr>
										@endforeach
									</tbody>
								</table>
							</div>
						@else
							<div class="center">
								No data found.
							</div>
						@endif
                    </div>
                </div>
            </div>

            <!-- Salad Options -->
			<div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Salads</h4>
						<button type="button" class="btn btn-rounded btn-primary add-catering" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" data-parent="7">
							<span class="btn-icon-start text-primary">
								<i class="fa fa-plus color-primary"></i>
                        	</span>
							Add
						</button>
                    </div>
                    <div class="card-body">
						@if(isset($data['salad']) && count($data['salad']) > 0)
							<div class="table-responsive">
								<table class="table table-responsive-md">
									<thead>
										<tr>
											<th><strong>Name</strong></th>
											<th><strong>Content</strong></th>
											<th><strong>Additional</strong></th>
											<th><strong>Group of People</strong></th>
											<th><strong>Price per person</strong></th>
											<th><strong>Action</strong></th>
										</tr>
									</thead>
									<tbody>
										@foreach($data['salad'] as $d)
											<tr>
												<td>{{$d->name}}</td>
                                                <td>{!! $d->content !!}</td>
                                                <td>
                                                    @if($d->vegetarian)
                                                        Vegetarian, 
                                                    @endif
                                                    @if($d->gluten)
                                                        Gluten Free, 
                                                    @endif
                                                    @if($d->vegan)
                                                        Vegan
                                                    @endif
                                                </td>
                                                <td>{{$d->group}}</td>
                                                <td>$ <?=number_format($d->price,2)?></td>
												<td>
                                                    <div class="dropdown">
														<button type="button" class="btn btn-success light sharp" data-bs-toggle="dropdown">
															<svg width="20px" height="20px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
														</button>
														<div class="dropdown-menu">
															<a href="javascript:void(0)" class="dropdown-item edit-catering" data-bs-toggle="modal" data-bs-target=".edit-catering-modal" data-name="{{$d->name}}" data-content="{{$d->content}}" data-id="{{$d->id}}" data-group="{{$d->group}}" data-price="{{$d->price}}" data-parent="{{$d->parent}}" data-vegetarian="{{$d->vegetarian}}" data-gluten="{{$d->gluten}}" data-vegan="{{$d->vegan}}">Edit</a>
															<a class="dropdown-item" onclick="destroy({{$d->id}}, '/admin/catering/destroy/{{$d->id}}', '/admin/catering/breakfast');">Delete</a>
														</div>
													</div>
												</td>
											</tr>
										@endforeach
									</tbody>
								</table>
							</div>
						@else
							<div class="center">
								No data found.
							</div>
						@endif
                    </div>
                </div>
            </div>

            <!-- Sweet Options -->
			<div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Sweet Options</h4>
						<button type="button" class="btn btn-rounded btn-primary add-catering" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" data-parent="8">
							<span class="btn-icon-start text-primary">
								<i class="fa fa-plus color-primary"></i>
                        	</span>
							Add
						</button>
                    </div>
                    <div class="card-body">
						@if(isset($data['sweet']) && count($data['sweet']) > 0)
							<div class="table-responsive">
								<table class="table table-responsive-md">
									<thead>
										<tr>
											<th><strong>Name</strong></th>
											<th><strong>Content</strong></th>
											<th><strong>Additional</strong></th>
											<th><strong>Group of People</strong></th>
											<th><strong>Price per person</strong></th>
											<th><strong>Action</strong></th>
										</tr>
									</thead>
									<tbody>
										@foreach($data['sweet'] as $d)
											<tr>
												<td>{{$d->name}}</td>
                                                <td>{!! $d->content !!}</td>
                                                <td>
                                                    @if($d->vegetarian)
                                                        Vegetarian, 
                                                    @endif
                                                    @if($d->gluten)
                                                        Gluten Free, 
                                                    @endif
                                                    @if($d->vegan)
                                                        Vegan
                                                    @endif
                                                </td>
                                                <td>{{$d->group}}</td>
                                                <td>$ <?=number_format($d->price,2)?></td>
												<td>
                                                    <div class="dropdown">
														<button type="button" class="btn btn-success light sharp" data-bs-toggle="dropdown">
															<svg width="20px" height="20px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
														</button>
														<div class="dropdown-menu">
															<a href="javascript:void(0)" class="dropdown-item edit-catering" data-bs-toggle="modal" data-bs-target=".edit-catering-modal" data-name="{{$d->name}}" data-content="{{$d->content}}" data-id="{{$d->id}}" data-group="{{$d->group}}" data-price="{{$d->price}}" data-parent="{{$d->parent}}" data-vegetarian="{{$d->vegetarian}}" data-gluten="{{$d->gluten}}" data-vegan="{{$d->vegan}}">Edit</a>
															<a class="dropdown-item" onclick="destroy({{$d->id}}, '/admin/catering/destroy/{{$d->id}}', '/admin/catering/breakfast');">Delete</a>
														</div>
													</div>
												</td>
											</tr>
										@endforeach
									</tbody>
								</table>
							</div>
						@else
							<div class="center">
								No data found.
							</div>
						@endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade bd-example-modal-lg catering-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <form class="modal-content" id="catering">
			@csrf
            <div class="modal-header">
                <h5 class="modal-title">Add Menu</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal">
                </button>
            </div>
            <div class="modal-body">
				<div class="row">
					<div class="col-12 mb-3">
						<label class="form-label">Name*</label>
						<input type="text" class="form-control input-default " placeholder="Name" name="name">
                        <span id="nameErr"></span>
					</div>
                    <div class="col-12 mb-3">
						<label class="form-label">Content</label>
						<textarea name="content" id="editor"></textarea>
					</div>
                    <div class="col-xs-12 col-6 mb-3">
						<label class="form-label">Group of People</label>
						<input type="number" class="form-control input-default " placeholder="10" name="group">
					</div>
                    <div class="col-xs-12 col-6 mb-3">
						<label class="form-label">Price per person</label>
						<input type="number" class="form-control input-default " placeholder="10.00" name="price" step="0.01">
					</div>
                    <div class="col-xs-12 mb-3">
                        <div class="form-check form-check-inline">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" value="1" name="vegetarian">Vegetarian
                            </label>
                        </div>
                        <div class="form-check form-check-inline">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" value="1" name="gluten">Gluten Free
                            </label>
                        </div>
                        <div class="form-check form-check-inline">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" value="1" name="vegan">Vegan
                            </label>
                        </div>
						
                    </div>
					<h4>Select Option</h3>
					<div class="col-lg-2 col-md-6 col-6">
						<label class="form-label">CARVERY</label>
						<input type="number"  min="0" class="form-control input-default " name="carvery"  >
					</div> 
					<div class="col-lg-2 col-md-6 col-6">
						<label class="form-label">SEAFOOD</label>
						<input type="number"  min="0"class="form-control input-default " name="seafood"  >
					</div>
					<div class="col-lg-2 col-md-6 col-6">
						<label class="form-label">HOT</label>
						<input type="number"  min="0"class="form-control input-default " name="hot"  >
					</div>
					<div class="col-lg-2 col-md-6 col-6">
						<label class="form-label">SALAD</label>
						<input type="number" min="0" class="form-control input-default " name="salad"  >
					</div>
					<div class="col-lg-2 col-md-6 col-6">
						<label class="form-label">SWEET</label>
						<input type="number" min="0" class="form-control input-default " name="sweet"  >
					</div>
				</div>
			</div>
			
            <div class="modal-footer">
                <input type="hidden" name="grandparent" value="dinner">
                <input type="hidden" name="parent" id="parent">
                <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save changes</button>
            </div>
		</form>
    </div>
</div>

<div class="modal fade bd-example-modal-lg edit-catering-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <form class="modal-content" id="editCatering">
			@csrf
            <div class="modal-header">
                <h5 class="modal-title">Edit Menu</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal">
                </button>
            </div>
            <div class="modal-body">
				<div class="row">
					<div class="col-12 mb-3">
						<label class="form-label">Name*</label>
						<input type="text" class="form-control input-default " placeholder="Name" name="name" id="name">
                        <span id="nameErr"></span>
					</div>
                    <div class="col-12 mb-3">
						<label class="form-label">Content</label>
						<textarea name="content" id="content"></textarea>
					</div>
                    <div class="col-xs-12 col-6 mb-3">
						<label class="form-label">Group of People</label>
						<input type="number" class="form-control input-default " placeholder="10" name="group" id="group">
					</div>
                    <div class="col-xs-12 col-6 mb-3">
						<label class="form-label">Price per person</label>
						<input type="number" class="form-control input-default " placeholder="10.00" name="price" step="0.01" id="price">
					</div>
                    <div class="col-xs-12 mb-3">
                        <div class="form-check form-check-inline">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" value="1" name="vegetarian" id="vegetarian">Vegetarian
                            </label>
                        </div>
                        <div class="form-check form-check-inline">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" value="1" name="gluten" id="gluten">Gluten Free
                            </label>
                        </div>
                        <div class="form-check form-check-inline">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" value="1" name="vegan" id="vegan">Vegan
                            </label>
                        </div>
						
                    </div>
					<h4>Select Option</h3>
					<div class="col-lg-2 col-md-6 col-6">
						<label class="form-label">CARVERY</label>
						<input type="number" min="0" class="form-control input-default " name="carvery" id="Dcarvery" >
					</div>
					<div class="col-lg-2 col-md-6 col-6">
						<label class="form-label">SEAFOOD</label>
						<input type="number" min="0" class="form-control input-default " name="seafood" id="Dseafood" >
					</div>
					<div class="col-lg-2 col-md-6 col-6">
						<label class="form-label">HOT</label>
						<input type="number" min="0" class="form-control input-default " name="hot" id="Dhot" >
					</div>
					<div class="col-lg-2 col-md-6 col-6">
						<label class="form-label">SALAD</label>
						<input type="number" min="0" class="form-control input-default " name="salad" id="Dsalad"  >
					</div>
					<div class="col-lg-2 col-md-6 col-6">
						<label class="form-label">SWEET</label>
						<input type="number" min="0" class="form-control input-default " name="sweet" id="Dsweet" >
					</div>
				</div>
			</div>
			{{-- Choose select option  --}}
			{{-- @if(isset($data['main-options']) && count($data['main-options']) > 0) --}}
			<div class="choose-option modal-body">
			</div>
			{{-- @endif --}}
			
			{{-- Modal footer --}}
            <div class="modal-footer">
                <input type="hidden" name="grandparent" value="dinner">
                <input type="hidden" name="parent" id="parent">
                <input type="hidden" name="id" id="id">
                <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save changes</button>
            </div>
		</form>
    </div>
</div>

<?php
    $ckeditor = true;
?>
@endsection