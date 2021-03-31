<template>
    <div>
        <div class="title">
            <h1>{{msg}}</h1>
        </div>
        <template v-for="product in cart">
            <div :key="product._id" class="product">
                <p class="proudct_name">产品名称</p>
                <p class="proudct_">介绍</p>
                <p class="proudct_">价格:</p>
                <p class="proudct_"></p>

            </div>
        </template>
    </div>
</template>
<script>
export default {
    name:'home',
    data(){
        return{
            msg:'welcome to the cart page'
        }
    }
}
</script>