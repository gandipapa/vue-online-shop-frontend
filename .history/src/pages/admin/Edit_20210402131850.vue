<template>
  <div>
    <div class="title">
      <h1>This is Admin/Edit/</h1>
    </div>
    <product-from 
    @save-product="updateProduct"
    :model="model"
    :manufacturers="manufacturers"
    :isEditing="true"
    ></product-from>
  </div>
</template>
<script>
import ProductForm from '@/components/products/ProductFrom.vue';

export default {
created() {
  const { name } = this.model;
  if(!name){
    this.$store.dispatch('productById',{
      prodictId: this.$route.params['id']
    }); 
  }
  if(this.manufacturers.length === 0){
    this.$store.dispatch('allManufactuers');
  }
},
computed: {
  manufacturers() {
    return this.$store.getters.allManufacturers;
  },
  model(){
    const product = this.$store.getters.prodictId(this.$route.params['id']);
    //这里返回product 的拷贝，是为了在修改product的拷贝之后再保存钱不修改本地的vuex store product
    return {...product, manufacturer: { ...product.manufacturer} };
  }
 },
 methonds: {
   updateProduct(product) {
     this.$store.dispatch('updateProduct', {
       product,
     })
   }
 },
 components:{
  'product-from':ProductForm
  }    
}
</script>