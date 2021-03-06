import axios from 'axios';

const API_BASE = 'http://localhost:3000/api/v1';



export const actions = {
    allProducts({ commit }) {
        commit('ALL_PRODUCTS')
        axios.get(`${API_BASE}/products`).then(response => {
          commit('ALL_PRODUCTS_SUCCESS', {
            products: response.data,
          });
        })
      },
      productById({ commit }, payload) {
        commit('PRODUCT_BY_ID');
        const { productId } = payload;
        axios.get(`${API_BASE}/products/${productId}`).then(response => {
          commit('PRODUCT_BY_ID_SUCCESS', {
            product: response.data,
          });
        })
      },
      removeProduct({ commit },payload){
        commit('REMOVE_PRODUCT');
        const { productId } = payload;
        axios.delete(`${API_BASE}/products/${productId}`).then(()=>{
          commit('REMOVE_PRODUCT_SUCCESS', {
            productId,
          });
        })
      },
      allManufactur({ commit },payload) {
        commit('ALL_MANUFACTURERS');
        const { manufacturerId } = payload;
        axios.delete(`${API_BASE}/manufacturers/${manufacturerId}`).then(() =>{
          //返回 manufactuerId，用于删除本地对应制造商
          commit('REMOVE_MANUFACTURER_SUCCESS',{
            manufacturerId,
          });
        })
      }
}