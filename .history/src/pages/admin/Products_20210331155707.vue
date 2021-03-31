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
<script>
export default{
    //计算属性
    computed:{
        product(){
            return this.$store.state.products[0];   
            
        }
    }
}
</script>
