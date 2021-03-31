<template>
    <product-form 
        @save-product = "addProduct"
        :model="modle"
        :manufacturers="manufactuers">
</template>
<script>
import ProductFrom from '@/components/products/productFrom.vue';
import ProductForm from '../../components/products/ProductForm.vue';
export default {
  components: { ProductForm },
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
        },
    },
    computed:{
        'product-form':ProductFrom
    }
    
}
</script>