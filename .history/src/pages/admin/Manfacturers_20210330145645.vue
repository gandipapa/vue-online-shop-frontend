<template>
    <div>
        <table class="table">
            <thead>
                <tr>
                    <th>制造商</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="manufacturer  in manufacturers" :key="manufacturer._id">
                    <td>{{ manufacturer.name }}</td>
                    <td class="modify"> <router-link :to="'/admin/manufacturers/edit'+ manufacturer._id">修改</router-link></td>
                    <td class="remove"> <a @click="removeManufacturer(manufacturer._id)" href="#">删除</a></td>
                </tr>
            </tbody>
        </table>
    </div>
</template>
<style>
.table{
     margin: 0 auto;

}

.modify{
    color:blue;
}

.remove{
    color:red;
}
.
</style>
<script>
export default {
    created(){
        if (this.manufactuers.length === 0){
            this.$stoore.dispatch('allManufacturers');
        }
    },
    computed:{
        manufactuers(){
            return this.$store.getters.allManufacturers
        }
    }
    
}
</script>