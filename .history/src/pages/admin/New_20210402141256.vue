<template>
    <product-from 
        @save-product = "addProduct"
        :model="model"
        :manufacturers="manufacturers"
    >
    </product-from>
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
    methods:{
        addProduct(model) {
            this.$store.dispatch('addProduct',{
                product: model,
            })
        },
    },
    components:{
        'product-from': ProductForm
    }
}
</script>