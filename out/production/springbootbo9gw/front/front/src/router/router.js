import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Messages from '../pages/messages/list'
import News from '../pages/news/news-list'
import NewsDetail from '../pages/news/news-detail'
import yonghuList from '../pages/yonghu/list'
import yonghuDetail from '../pages/yonghu/detail'
import yonghuAdd from '../pages/yonghu/add'
import zhandianxinxiList from '../pages/zhandianxinxi/list'
import zhandianxinxiDetail from '../pages/zhandianxinxi/detail'
import zhandianxinxiAdd from '../pages/zhandianxinxi/add'
import cheliangxinxiList from '../pages/cheliangxinxi/list'
import cheliangxinxiDetail from '../pages/cheliangxinxi/detail'
import cheliangxinxiAdd from '../pages/cheliangxinxi/add'
import shoufeibiaozhunList from '../pages/shoufeibiaozhun/list'
import shoufeibiaozhunDetail from '../pages/shoufeibiaozhun/detail'
import shoufeibiaozhunAdd from '../pages/shoufeibiaozhun/add'
import dingdanxinxiList from '../pages/dingdanxinxi/list'
import dingdanxinxiDetail from '../pages/dingdanxinxi/detail'
import dingdanxinxiAdd from '../pages/dingdanxinxi/add'
import wuliuxinxiList from '../pages/wuliuxinxi/list'
import wuliuxinxiDetail from '../pages/wuliuxinxi/detail'
import wuliuxinxiAdd from '../pages/wuliuxinxi/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'messages',
					component: Messages
				},
				{
					path: 'news',
					component: News
				},
				{
					path: 'newsDetail',
					component: NewsDetail
				},
				{
					path: 'yonghu',
					component: yonghuList
				},
				{
					path: 'yonghuDetail',
					component: yonghuDetail
				},
				{
					path: 'yonghuAdd',
					component: yonghuAdd
				},
				{
					path: 'zhandianxinxi',
					component: zhandianxinxiList
				},
				{
					path: 'zhandianxinxiDetail',
					component: zhandianxinxiDetail
				},
				{
					path: 'zhandianxinxiAdd',
					component: zhandianxinxiAdd
				},
				{
					path: 'cheliangxinxi',
					component: cheliangxinxiList
				},
				{
					path: 'cheliangxinxiDetail',
					component: cheliangxinxiDetail
				},
				{
					path: 'cheliangxinxiAdd',
					component: cheliangxinxiAdd
				},
				{
					path: 'shoufeibiaozhun',
					component: shoufeibiaozhunList
				},
				{
					path: 'shoufeibiaozhunDetail',
					component: shoufeibiaozhunDetail
				},
				{
					path: 'shoufeibiaozhunAdd',
					component: shoufeibiaozhunAdd
				},
				{
					path: 'dingdanxinxi',
					component: dingdanxinxiList
				},
				{
					path: 'dingdanxinxiDetail',
					component: dingdanxinxiDetail
				},
				{
					path: 'dingdanxinxiAdd',
					component: dingdanxinxiAdd
				},
				{
					path: 'wuliuxinxi',
					component: wuliuxinxiList
				},
				{
					path: 'wuliuxinxiDetail',
					component: wuliuxinxiDetail
				},
				{
					path: 'wuliuxinxiAdd',
					component: wuliuxinxiAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
