<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top.tpl'); ?>
      <div class="panel-group" id="accordion">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_option; ?></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-checkout-option">
            <div class="panel-body"></div>
          </div>
        </div>
        <?php if(!$logged && $account != 'guest') { ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_account; ?></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-payment-address">
            <div class="panel-body"></div>
          </div>
        </div>
        <?php } else { ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_payment_address; ?></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-payment-address">
            <div class="panel-body"></div>
          </div>
        </div>
        <?php } ?>
        <?php if($shipping_required) { ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_shipping_address; ?></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-shipping-address">
            <div class="panel-body"></div>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_shipping_method; ?></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-shipping-method">
            <div class="panel-body"></div>
          </div>
        </div>
        <?php } ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_payment_method; ?></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-payment-method">
            <div class="panel-body"></div>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_confirm; ?></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-checkout-confirm">
            <div class="panel-body"></div>
          </div>
        </div>
      </div>

<script type="text/javascript"><!--
$(document).on('change', 'input[name=\'account\']', function() {
	if ($('#collapse-payment-address').parent().find('.panel-heading .panel-title > *').is('a')) {
		if (this.value == 'register') {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_account; ?> <i class="fa fa-caret-down"></i></a>');
		} else {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
		}
	} else {
		if (this.value == 'register') {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_account; ?>');
		} else {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_address; ?>');
		}
	}
});

<?php if(!$logged) { ?>
$(document).ready(function() {
    $.ajax({
        url: 'checkout-login.html',
        dataType: 'html',
        success: function(html) {
           $('#collapse-checkout-option .panel-body').html(html);

			$('#collapse-checkout-option').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-option" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_option; ?> <i class="fa fa-caret-down"></i></a>');

			$('a[href=\'#collapse-checkout-option\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
<?php } else { ?>
$(document).ready(function() {
    $.ajax({
        url: 'payment-address.html',
        dataType: 'html',
        success: function(html) {
            $('#collapse-payment-address .panel-body').html(html);

			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');

			$('a[href=\'#collapse-payment-address\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
<?php } ?>

// Checkout
$(document).delegate('#button-account', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/' + $('input[name=\'account\']:checked').val(),
        dataType: 'html',
        beforeSend: function() {
        	$('#button-account').button('loading');
		},
        complete: function() {
			$('#button-account').button('reset');
        },
        success: function(html) {
            $('.alert-dismissible, .text-danger').remove();
			$('.form-group').removeClass('has-error');

            $('#collapse-payment-address .panel-body').html(html);

			if ($('input[name=\'account\']:checked').val() == 'register') {
				$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_account; ?> <i class="fa fa-caret-down"></i></a>');
			} else {
				$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
			}

			$('a[href=\'#collapse-payment-address\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Login
$(document).delegate('#button-login', 'click', function() {
    $.ajax({
        url: 'checkout-login-save.html',
        type: 'post',
        data: $('#collapse-checkout-option :input'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-login').button('loading');
		},
        complete: function() {
            $('#button-login').button('reset');
        },
        success: function(json) {
            $('.alert-dismissible, .text-danger').remove();
            $('.form-group').removeClass('has-error');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#collapse-checkout-option .panel-body').prepend('<div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				// Highlight any found errors
				$('input[name=\'email\']').parent().addClass('has-error');
				$('input[name=\'password\']').parent().addClass('has-error');
		   }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Register
$(document).delegate('#button-register', 'click', function() {
    $.ajax({
        url: 'checkout-register-save.html',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function() {
			$('#button-register').button('loading');
		},
        success: function(json) {
            $('.alert-dismissible, .text-danger').remove();
            $('.form-group').removeClass('has-error');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-register').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-payment-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
            } else {
                <?php if($shipping_required) { ?>
                var shipping_address = $('#payment-address input[name=\'shipping_address\']:checked').prop('value');

                if (shipping_address) {
                    $.ajax({
                        url: 'checkout-shipping_method.html',
                        dataType: 'html',
                        success: function(html) {
							// Add the shipping address
                            $.ajax({
                                url: 'checkout-shipping_address.html',
                                dataType: 'html',
                                success: function(html) {
                                    $('#collapse-shipping-address .panel-body').html(html);

									$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });

							$('#collapse-shipping-method .panel-body').html(html);

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

   							$('a[href=\'#collapse-shipping-method\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                } else {
                    $.ajax({
                        url: 'checkout-shipping_address.html',
                        dataType: 'html',
                        success: function(html) {
                            $('#collapse-shipping-address .panel-body').html(html);

							$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-address\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
                <?php } else { ?>
                $.ajax({
                    url: 'checkout-payment_method.html',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } ?>

                $.ajax({
                    url: 'payment-address.html',
                    dataType: 'html',
                    complete: function() {
                        $('#button-register').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-address .panel-body').html(html);

						$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Payment Address
$(document).delegate('#button-payment-address', 'click', function() {
    $.ajax({
        url: 'checkout-payment_address-save.html',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-payment-address').button('loading');
		},
        complete: function() {
			$('#button-payment-address').button('reset');
        },
        success: function(json) {
            $('.alert-dismissible, .text-danger').remove();
			$('.form-group').removeClass('has-error');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning alert-dismissible">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-payment-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().parent().addClass('has-error');
            } else {
                <?php if($shipping_required) { ?>
                $.ajax({
                    url: 'checkout-shipping_address.html',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-shipping-address .panel-body').html(html);

						$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-shipping-address\']').trigger('click');

						$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                }).done(function() {
					$.ajax({
						url: 'payment-address.html',
						dataType: 'html',
						success: function(html) {
							$('#collapse-payment-address .panel-body').html(html);
						},
						error: function(xhr, ajaxOptions, thrownError) {
							alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
						}
					});
				});
                <?php } else { ?>
                $.ajax({
                    url: 'checkout-payment_method.html',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                }).done(function() {
					$.ajax({
						url: 'payment-address.html',
						dataType: 'html',
						success: function(html) {
							$('#collapse-payment-address .panel-body').html(html);
						},
						error: function(xhr, ajaxOptions, thrownError) {
							alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
						}
					});				
				});
                <?php } ?>
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Shipping Address
$(document).delegate('#button-shipping-address', 'click', function() {
    $.ajax({
        url: 'checkout-shipping_address-save.html',
        type: 'post',
        data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),
        dataType: 'json',
        beforeSend: function() {
			$('#button-shipping-address').button('loading');
	    },
        success: function(json) {
            $('.alert-dismissible, .text-danger').remove();
			$('.form-group').removeClass('has-error');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-shipping-address').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-warning alert-dismissible">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-shipping-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().parent().addClass('has-error');
            } else {
                $.ajax({
                    url: 'checkout-shipping_method.html',
                    dataType: 'html',
                    complete: function() {
                        $('#button-shipping-address').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-shipping-method .panel-body').html(html);

						$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-shipping-method\']').trigger('click');

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
						
                        $.ajax({
                            url: 'checkout-shipping_address.html',
                            dataType: 'html',
                            success: function(html) {
                                $('#collapse-shipping-address .panel-body').html(html);
                            },
                            error: function(xhr, ajaxOptions, thrownError) {
                                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                            }
                        });
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                }).done(function() {
					$.ajax({
						url: 'payment-address.html',
						dataType: 'html',
						success: function(html) {
							$('#collapse-payment-address .panel-body').html(html);
						},
						error: function(xhr, ajaxOptions, thrownError) {
							alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
						}
					});
				});
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Guest
$(document).delegate('#button-guest', 'click', function() {
    $.ajax({
        url: 'checkout-guest-save.html',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function() {
       		$('#button-guest').button('loading');
	    },
        success: function(json) {
            $('.alert-dismissible, .text-danger').remove();
			$('.form-group').removeClass('has-error');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-guest').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning alert-dismissible">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-payment-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
            } else {
                <?php if($shipping_required) { ?>
                var shipping_address = $('#collapse-payment-address input[name=\'shipping_address\']:checked').prop('value');

                if (shipping_address) {
                    $.ajax({
                        url: 'checkout-shipping_method.html',
                        dataType: 'html',
                        complete: function() {
                            $('#button-guest').button('reset');
                        },
                        success: function(html) {
							// Add the shipping address
                            $.ajax({
                                url: 'checkout-guest_shipping.html',
                                dataType: 'html',
                                success: function(html) {
                                    $('#collapse-shipping-address .panel-body').html(html);

									$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });

						    $('#collapse-shipping-method .panel-body').html(html);

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-method\']').trigger('click');

							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                } else {
                    $.ajax({
                        url: 'checkout-guest_shipping.html',
                        dataType: 'html',
                        complete: function() {
                            $('#button-guest').button('reset');
                        },
                        success: function(html) {
                            $('#collapse-shipping-address .panel-body').html(html);

							$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-address\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
                <?php } else { ?>
                $.ajax({
                    url: 'checkout-payment_method.html',
                    dataType: 'html',
                    complete: function() {
                        $('#button-guest').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } ?>
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Guest Shipping
$(document).delegate('#button-guest-shipping', 'click', function() {
    $.ajax({
        url: 'checkout-guest_shipping-save.html',
        type: 'post',
        data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-guest-shipping').button('loading');
		},
        success: function(json) {
            $('.alert-dismissible, .text-danger').remove();
			$('.form-group').removeClass('has-error');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-guest-shipping').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-danger alert-dismissible">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-shipping-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
            } else {
                $.ajax({
                    url: 'checkout-shipping_method.html',
                    dataType: 'html',
                    complete: function() {
                        $('#button-guest-shipping').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-shipping-method .panel-body').html(html);

						$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i>');

						$('a[href=\'#collapse-shipping-method\']').trigger('click');

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$(document).delegate('#button-shipping-method', 'click', function() {
    $.ajax({
        url: 'checkout-shipping_method-save.htm',
        type: 'post',
        data: $('#collapse-shipping-method input[type=\'radio\']:checked, #collapse-shipping-method textarea'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-shipping-method').button('loading');
		},
        success: function(json) {
            $('.alert-dismissible, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-shipping-method').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-shipping-method .panel-body').prepend('<div class="alert alert-danger alert-dismissible">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
                $.ajax({
                    url: 'checkout-payment_method.html',
                    dataType: 'html',
                    complete: function() {
                        $('#button-shipping-method').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$(document).delegate('#button-payment-method', 'click', function() {
    $.ajax({
        url: 'checkout-payment_method-save.html',
        type: 'post',
        data: $('#collapse-payment-method input[type=\'radio\']:checked, #collapse-payment-method input[type=\'checkbox\']:checked, #collapse-payment-method textarea'),
        dataType: 'json',
        beforeSend: function() {
         	$('#button-payment-method').button('loading');
		},
        success: function(json) {
            $('.alert-dismissible, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-payment-method').button('reset');
                
                if (json['error']['warning']) {
                    $('#collapse-payment-method .panel-body').prepend('<div class="alert alert-danger alert-dismissible">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
                $.ajax({
                    url: 'checkout-confirm.html',
                    dataType: 'html',
                    complete: function() {
                        $('#button-payment-method').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-checkout-confirm .panel-body').html(html);

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-confirm" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_confirm; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-checkout-confirm\']').trigger('click');
					},
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
//--></script>

<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>