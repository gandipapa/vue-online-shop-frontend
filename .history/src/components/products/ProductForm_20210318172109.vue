<template>
    <form @submit.prevent="saveProduct">
        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
            <div class="form-group">
                <label> name </label>
                <input 
                  type="text" 
                  placeholder="Name"
                  v-model="model.name"
                  name="name"
                  class="form-control"/>
            </div>
            <div class="form-group">
                <label>Price</label>
                <input
                  type="number"
                  class="form-control"
                  placeholder="Price"
                  v-model="model.price"
                  name="price"/>
            </div>
            <div class="form-group">
                <label>Manufacturers</label>
                <select
                  type="text"
                  class="form-control"
                  v-model="model.manufacturer"
                  name="manufacturer">
                    <template v-for="manufacturer in manufacturers"  >
                        <option :key="manufacturer" :value="manufacturer._id" :selected="manufacturer._id == (model.manufacturer && model.manufacturer._id)">{{manufacturer.name}}</option>
                    </template>

                </select>   


            </div>
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