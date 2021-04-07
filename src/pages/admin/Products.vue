<template>
  <div class="products">
        <el-table
    class="table"
    :data="products">
      <el-table-column
        prop="name"
        label="名称"
        width="180">
      </el-table-column>
      <el-table-column
        prop="price"
        label="价格"
        width="180">
      </el-table-column>
      <el-table-column
        prop="manufacturer.name"
        label="制造商"
        width="180">
      </el-table-column>
      <el-table-column
        label="操作"
        width="200">
        <template slot-scope="scope">
          <el-button class="modify" type="text" size="small"><router-link :to="'/admin/edit/' + scope.row._id">修改</router-link></el-button>
          <el-button class="remove" @click="removeProduct(scope.row._id), deleteRow(scope.$index, products)" type="text" size="small">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
  </div>
  <!-- <div>
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
        <td class="modify"><router-link :to="'/admin/edit/'+ product._id">修改</router-link></td>
        <td class="remove"><a @click="removeProduct(product._id)" href="#"></a>删除</td>
      </tr>
    </tbody>
    </table>
    <div class="title">
      <h1>This is Admin</h1>
    </div>

  </div> -->
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
        this.$store.dispatch('allProducts');
      }
    },
    computed:{
        products(){
            return this.$store.getters.allProducts;
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
