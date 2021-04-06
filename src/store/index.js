import Vue from 'vue';
import Vuex from 'vuex';
//import axios from 'axios';
import { productMutations, cartMutations, manufacturerMutations } from './mutations';
import { productGetters, manufacturerGetters } from './getters';
import { productActions, manufacturerActions } from './actions';
// const API_BASE = 'http://localhost:3000/api/v1';

Vue.use(Vuex);

export default new Vuex.Store({
  strict: true,
  state: {
    // bought items
    cart: [],
    // ajax loader
    showLoader: false,
    // selected product
    product: {},
    // all products
    products: [],
    // all manufacturers
    manufacturers: [],
    // selected manufacturer
    manufacturer: {},
    // userInfo
    user: {}
  },
  mutations: {
    ...productMutations,
    ...cartMutations,
    ...manufacturerMutations,
  },
  getters: {
   ...productGetters,
   ...manufacturerGetters,
  }
  ,
  actions: {
   ...productActions,
   ...manufacturerActions,
  }
});

