<template>
  <div>
    <table class="table">
      <thead>
        <tr>
          <th>名称</th>
          <th>价格</th>
          <th>制造商</th>
          <th></th>
          <th></th>
        </tr>
      </thead>
    <tbody>
      <tr v-for="product in products" :key="product._id">
        <td>{{product.name}}</td>
        <td>{{ product.price}}</td>
        <td>{{product.manufacturer.name}}</td>
        <td class="modify"><router-link :to="'/admin/edit'"></router-link>修改</td>
        <td class="remove"><a @click="removeProduct(product._id)" href="#"></a>删除</td>
      </tr>
    </tbody>
    </table>
    <div class="title">
      <h1>This is Admin</h1>
    </div>
    <div class="body">
      {{ product.name }}
    </div>
  </div>
</template>
<style>
table{
 margin: 0 auto;
}
.modify{
  color:blue;
}
.remove a{
  color: red;
}
</style>
<script>
export default{
    created(){
      if(this.products.length === 0 ){
        this.$store.dispath('allProducts')
      }
    },
    //计算属性
    computed:{
        product(){
            return this.$store.getters.allproducts;
        }
    },
    methods:{
      removeProducts(productId){
        const res = confirm('是否删除此商品');

        if(res) {
          this.$store.dispath('removeProduct',{
            productId,

          })
        }
      }
    }
}
</script>
