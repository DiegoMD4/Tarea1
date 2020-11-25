// Uncomment these imports to begin using these cool features!


// import {inject} from '@loopback/core';

import {get} from '@loopback/rest';
export class ClientesController {
  constructor() {}
  @get('/Saludar')
  msj():string{
    return 'Hola Cliente'
  }
}
