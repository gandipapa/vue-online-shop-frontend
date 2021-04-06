<template>
  <div>
    <div class="title">
      <h1>This is Admin/Edit/</h1>
    </div>
    <product-form 
    @save-product="updateProduct"
    :model="model"
    :manufacturers="manufacturers"
    :isEditing="true"
    ></product-form>
  </div>
</template>
<script>
import ProductForm from '@/components/products/ProductForm.vue';

export default {
created() {
  const { name } = this.model;
  if(!name){
    this.$store.dispatch('productById',{
      productId: this.$route.params['id']
    }); 
  }
  if(this.manufacturers.length === 0){
    this.$store.dispatch('allManufacturers');
  }
},
computed: {
  manufacturers() {
    return this.$store.getters.allManufacturers;
  },
  model(){
    const product = this.$store.getters.productById(this.$route.params['id']);
    //这里返回product 的拷贝，是为了在修改product的拷贝之后再保存钱不修改本地的vuex store product
    return {...product, manufacturer: { ...product.manufacturer} };
  }
 },
 methods: {
   updateProduct(product) {
     this.$store.dispatch("updateProduct", {
        product,
     })
   }
 },
 components:{
  'product-form':ProductForm
  }    
}
</script>