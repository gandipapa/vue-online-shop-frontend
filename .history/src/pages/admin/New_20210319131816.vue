<template>
  <div>
    <div class="title">
      <h1>This is Admin/New</h1>
    </div>
  </div>
</template>
<script>
import ProductFrom from '@/components/products/productFrom.vue';
export default {
    data(){
        return{
            model:{},
            manufactuers:[
                {
                    _id:'sam',
                    name:'Samsung',
                },
                {
                    _id:'apple',
                    name:'Apple',
                },
            ]
        }
    },
    methods:{
        addProduct(model) {
            console.log('model',model);
        }

    }
    
}
</script>