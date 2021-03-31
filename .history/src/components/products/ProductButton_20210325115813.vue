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
            }

            )
        }
    }

}

</script>