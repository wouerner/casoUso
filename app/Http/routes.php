<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('documento', [
    'as' => 'documento.index', 'uses' => 'DocumentoController@index'
]);

Route::get('documento/all', [
    'as' => 'documento.all', 'uses' => 'DocumentoController@all'
]);
Route::get('documento/allbyid/{id}', [
    'as' => 'documento.allbyid', 'uses' => 'DocumentoController@allById'
]);
Route::post('documento', [
    'as' => 'documento.store', 'uses' => 'DocumentoController@store'
]);
Route::patch('documento/{id}', [
    'as' => 'documento.update', 'uses' => 'DocumentoController@update'
]);

Route::delete('documento/{id}', [
    'as' => 'documento.destroy', 'uses' => 'DocumentoController@destroy'
]);

 # passo
Route::post('passo', [
    'as' => 'passo.store', 'uses' => 'PassoController@store'
]);

Route::get('passo/all/{id}', [
    'as' => 'passo.all', 'uses' => 'PassoController@all'
]);

Route::patch('passo/{id}', [
    'as' => 'passo.update', 'uses' => 'PassoController@update'
]);

Route::delete('passo/{id}', [
    'as' => 'passo.destroy', 'uses' => 'PassoController@destroy'
]);
# fim passo

# Fluxo
Route::post('fluxo', [
    'as' => 'fluxo.store', 'uses' => 'FluxoController@store'
]);
Route::get('fluxo/all/{id}', [
    'as' => 'fluxo.all', 'uses' => 'FluxoController@all'
]);
Route::patch('fluxo/{id}', [
    'as' => 'fluxo.update', 'uses' => 'FluxoController@update'
]);
Route::delete('fluxo/{id}', [
    'as' => 'fluxo.destroy', 'uses' => 'FluxoController@destroy'
]);
# fim passo

# passofluxos
Route::post('passofluxos', [
    'as' => 'passofluxos.store', 'uses' => 'PassoFluxosController@store'
]);

Route::get('passofluxos/all/{id}', [
    'as' => 'passo.all', 'uses' => 'PassoFluxosController@all'
]);

Route::patch('passofluxos/{id}', [
    'as' => 'passo.update', 'uses' => 'PassoFLuxosController@update'
]);

Route::delete('passofluxos/{fluxo_id}/{passo_id}', [
    'as' => 'passo.destroy', 'uses' => 'PassoFluxosController@destroy'
]);
# fim passofluxos

# Regra Negocios
Route::post('regranegocio', [
    'as' => 'regranegocio.store', 'uses' => 'RegraNegocioController@store'
]);

Route::get('regranegocio/all', [
    'as' => 'regranegocio.all', 'uses' => 'RegraNegocioController@all'
]);

Route::get('regranegocio/allbyid/{id}', [
    'as' => 'regranegocio.allbyid', 'uses' => 'RegraNegocioController@allById'
]);

Route::get('regranegocio/{id}', [
    'as' => 'regranegocio.show', 'uses' => 'RegraNegocioController@show'
]);

Route::patch('regranegocio/{id}', [
    'as' => 'regranegocio.update', 'uses' => 'RegraNegocioController@update'
]);

Route::delete('regranegocio/{id}', [
    'as' => 'regranegocios.destroy', 'uses' => 'RegraNegocioController@destroy'
]);
# fim regra negocios

# Passo Regra Negocios
Route::post('passoregranegocio', [
    'as' => 'passoregranegocio.store', 'uses' => 'PassoRegraNegocioController@store'
]);

Route::get('passoregranegocio/all', [
    'as' => 'passoregranegocio.all', 'uses' => 'PassoRegraNegocioController@all'
]);

Route::get('passoregranegocio/allbyid/{id}', [
    'as' => 'passoregranegocio.allbyid', 'uses' => 'PassoRegraNegocioController@allById'
]);

Route::patch('passoregranegocio/{id}', [
    'as' => 'passoregranegocio.update', 'uses' => 'PassoRegraNegocioController@update'
]);

Route::delete('passoregranegocio/{id}', [
    'as' => 'passoregranegocios.destroy', 'uses' => 'PassoRegraNegocioController@destroy'
]);
# fim regra negocios

# Passo Regra Negocios
Route::post('mensagem', [
    'as' => 'mensagem.store', 'uses' => 'MensagemController@store'
]);

Route::get('mensagem/all', [
    'as' => 'mensagem.all', 'uses' => 'MensagemController@all'
]);

Route::get('mensagem/allbyid/{id}', [
    'as' => 'mensagem.allbyid', 'uses' => 'MensagemController@allById'
]);

Route::patch('mensagem/{id}', [
    'as' => 'mensagem.update', 'uses' => 'MensagemController@update'
]);

Route::delete('mensagem/{id}', [
    'as' => 'mensagem.destroy', 'uses' => 'MensagemController@destroy'
]);
# fim regra negocio

# Passo Regra Negocios
Route::post('passomensagem', [
    'as' => 'passomensagem.store', 'uses' => 'PassoMensagemController@store'
]);

Route::get('passomensagem/all', [
    'as' => 'passomensagem.all', 'uses' => 'PassoMensagemController@all'
]);

Route::get('passomensagem/allbyid/{id}', [
    'as' => 'passomensagem.allbyid', 'uses' => 'PassoMensagemController@allById'
]);

Route::patch('passomensagem/{id}', [
    'as' => 'passomensagem.update', 'uses' => 'PassoMensagemController@update'
]);

Route::delete('passomensagem/{id}', [
    'as' => 'passomensagem.destroy', 'uses' => 'PassoMensagemController@destroy'
]);
# fim regra negocios

# Tela
Route::post('tela', [
    'as' => 'tela.store', 'uses' => 'TelaController@store'
]);

Route::get('tela/all', [
    'as' => 'tela.all', 'uses' => 'TelaController@all'
]);

Route::get('tela/allbyid/{id}', [
    'as' => 'tela.allbyid', 'uses' => 'TelaController@allById'
]);

Route::patch('tela/{id}', [
    'as' => 'tela.update', 'uses' => 'TelaController@update'
]);

Route::delete('tela/{id}', [
    'as' => 'tela.destroy', 'uses' => 'TelaController@destroy'
]);
# fim regra negocio

# Tela
Route::post('campo', [
    'as' => 'campo.store', 'uses' => 'CampoController@store'
]);

Route::get('campo/all', [
    'as' => 'campo.all', 'uses' => 'CampoController@all'
]);

Route::get('campo/allbyid/{id}', [
    'as' => 'campo.allbyid', 'uses' => 'CampoController@allById'
]);

Route::patch('campo/{id}', [
    'as' => 'campo.update', 'uses' => 'CampoController@update'
]);

Route::delete('campo/{id}', [
    'as' => 'campo.destroy', 'uses' => 'CampoController@destroy'
]);
# fim

Route::post('passotela', [
    'as' => 'passotela.store', 'uses' => 'PassoTelaController@store'
]);

Route::get('passotela/all', [
    'as' => 'passotela.all', 'uses' => 'PassoTelaController@all'
]);

Route::get('passotela/allbyid/{id}', [
    'as' => 'passotela.allbyid', 'uses' => 'PassoTelaController@allById'
]);

Route::patch('passotela/{id}', [
    'as' => 'passotela.update', 'uses' => 'PassoTelaController@update'
]);

Route::delete('passotela/{passo_id}/{tela_id}', [
    'as' => 'passotela.destroy', 'uses' => 'PassoTelaController@destroy'
]);
# Proejto
Route::post('projeto', [
    'as' => 'projeto.store', 'uses' => 'ProjetoController@store'
]);

Route::get('projeto/all', [
    'as' => 'projeto.all', 'uses' => 'ProjetoController@all'
]);

Route::get('projeto/allbyid/{id}', [
    'as' => 'projeto.allbyid', 'uses' => 'ProjetoController@allById'
]);

Route::patch('projeto/{id}', [
    'as' => 'projeto.update', 'uses' => 'ProjetoController@update'
]);

Route::delete('projeto/{id}', [
    'as' => 'projeto.destroy', 'uses' => 'ProjetoController@destroy'
]);

Route::get('/', function () {
    return view('index');
});

Route::group(['prefix' => 'api'], function()
{
    Route::resource('authenticate', 'AuthenticateController', ['only' => ['index']]);
    Route::post('authenticate', 'AuthenticateController@authenticate');
});
