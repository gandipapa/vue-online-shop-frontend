<template>
    <form @submit.prevent="saveProduct">
        <div class="form-group new-button">
            <button class="button">Add Product</button>
        </div>
    </form>
</template>

<script>
export default {
    data:{ isSaved: false },
    props:['manufacturers'],
    methods:{
        saveProduct(){
            this.isSaved = true;
            //一些保存创建商品的逻辑;
        }
    }
}
</script>