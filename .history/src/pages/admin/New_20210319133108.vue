<template>
    <product-form 
        @save-product = "addProduct"
        :model="model"
        :manufacturers="manufactuers"
    >
    </product-form>
</template>
<script>

import ProductForm from '@/components/products/ProductForm.vue';
export default {
  components: { ProductForm },
    data(){
        return{
            model:{},
            manufacturers:[
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
        },
    },
    computed:{
        'product-form':ProductFrom
    }
    
}
</script>