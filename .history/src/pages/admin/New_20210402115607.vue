<template>
    <product-form 
        @save-product = "addProduct"
        :model="model"
        :manufacturers="manufacturers"
    >
    </product-form>
</template>
<script>

import ProductForm from '@/components/products/ProductForm.vue';
export default {
    created(){
        if(this.manufacturers.length === 0 ){
            this.$store.dispatch('allManufacturers');
        }
    },
    computed:{
        manufacturers (){ 
            return this.$store.getters.allManufacturers;
        },
        model(){
            return {};
        }
    },
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
    components:{
        'product-form': ProductForm
    }
    
}
</script>