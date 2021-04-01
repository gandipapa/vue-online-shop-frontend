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
import productForm from '@/components/products/ProductFrom.vue';

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
components:{
  'product-from':ProductForm
}    
}
</script>