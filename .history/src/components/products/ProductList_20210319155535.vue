<template>
    <div>
        <div class="products">
            <div class="container">
                This is ProductList
            </div>
            <template v-for="product in products">
                <div :key = product._id  class="proudct">
                    <p class="product_name">产品名称</p>
                    <p class="product_description">介绍:</p>
                    <p class="product"></p>
                    <p class="product"></p>

                </div>
            </template>
        </div>
    </div>
</template>