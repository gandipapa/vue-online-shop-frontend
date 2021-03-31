<template>
  <div>
    <product-detail :product="product"></product-detail>
  </div>
</template>
<script>
import ProductDetail from '@/components/products/ProductDetail.vue';

export default {
    created(){
        //跳转详情页时吐过本地状态不存在此产品从后端获取
        const { name } = this.product;
    if (!name) {
      this.$store.dispatch('productById', {
        productId: this.$route.params['id']
      });
      } 
    }, 
    computed:{
        product() {
            return this.$store.getters.productById(this.$route.params['id']);
        }
    },
    components:{
        'product-detail': ProductDetail,
    }   
}
</script>