import Vue from 'vue'
import Router from 'vue-router'
// import HelloWorld from '@/components/HelloWorld'
import Home from '@/pages/Home'
import Admin from '@/pages/admin/Admin'
import Cart from '@/pages/Cart'
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home,
    },
    {
      path: '/admin',
      name: 'Admin',
      component: Index,
      children:[
        {
          path:'new',
          name:'New',
          component:New,
        },
        {
          path:'',
          name:'Products',
          component:Products,
        },
        {
          path:'edit/:id',
          name:'Edit',
          componet:Edit,
        }
      ]
    },
    {
      path: '/cart',
      name: 'Cart',
      component:Cart,
    }
  ],
})
