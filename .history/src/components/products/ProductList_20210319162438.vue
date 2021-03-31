<template>
    <div>
        <div class="products">
            <div class="container">
                This is ProductList
            </div>
            <template v-for="product in products">
                <div :key = product._id  class="proudct">
                    <p class="product_name">产品名称{{product.name}}</p>
                    <p class="product_description">介绍:{{product.description}}</p>
                    <p class="product_price">价格:{{product.price}}</p>
                    <p class="product">生产厂商:{{product.manufacturer}}</p>
                    <img :src="product_image" alt="" class="product_image">
                    <button @click="addToCart(product)">加入购物车</button>
                </div>
            </template>
        </div>
    </div>
</template>
<style>
.product {
  border-bottom: 1px solid black;
}

.product__image {
  width: 100px;
  height: 100px;
}
</style>
<script>
export default {
    name:'product-list',
    computed
    
}

</script>