<template>
    <product-form 
        @save-product = "addProduct"
        :model="modle"
        :manufacturers="manufactuers"
    >
    </product-form>
</template>
<script>
import ProductFrom from '@/components/products/PproductFrom.vue';

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