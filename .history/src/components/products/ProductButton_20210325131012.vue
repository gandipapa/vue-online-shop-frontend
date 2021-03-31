<template>
    
</template>
<script>
export default{
    props:['product'],
    computed:{
        isAdding() {
            let isAdding = true;
            this.cart.map( proudct => {
                if( proudct._id === this.product_id) {
                    isAdding = false;
                }
            });

            return isAdding;
        },
        cart(){
            return this.$store.state.cart;          
        }
    },
    methods:{
        addToCart() {
                proudct:this.proudct,
            })
        },
        removeFromCart(productId) {
            this.$Store.commit('REMOVE_FROM_CART', {
                productId,
            })
        }
    }

}

</script>