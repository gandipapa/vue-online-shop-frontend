<template>
    
</template>
<script>
import ProductButton from './ProductButton';
export default {
    name:'product-item',
    props:['product'],
    components: {
        'product-bottom': ProductButton,
    }
}
</script>