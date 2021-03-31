<template>
    <div>
        <div class="title">
            <h1>{{msg}}</h1>
        </div>
    </div>
</template>

<script>
import ProductList from '@/components/products/ProductList.vue'
    export default{
        name:'home',
        data(){
            return{
                msg:'Welcome to my app'
            };
        },
        components:{
        'product-list': ProductList
    }
        }
    }
</script>