<template>
	<div class="main-containers">
		<div class="top-container" :style='{"boxShadow":"0 0px 0px rgba(64, 158, 255, .3)","padding":"0px","margin":"0 auto","overflow":"hidden","alignItems":"center","background":"#fff","display":"flex","width":"100%","position":"relative","justifyContent":"space-around","height":"75px","zIndex":"1002"}'>
			<img v-if='false' :style='{"width":"44px","objectFit":"cover","borderRadius":"100%","display":"block","height":"44px"}' src='http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg'>
			<div v-if="true" :style='{"margin":"0 0 12px","color":"#0660ac","textAlign":"center","background":"none","display":"inline-block","fontSize":"24px","fontWeight":"bold"}'>物流管理系统</div>
			<div>
				<div v-if="true" :style='{"color":"#666","fontSize":"14px","display":"inline-block"}'></div>
				<div v-if="Token" :style='{"color":"#666","fontSize":"14px","display":"inline-block"}'>{{username}}</div>
				<el-button v-if="!Token" @click="toLogin()" :style='{"border":"1px solid #1170d2","padding":"0 30px","boxShadow":"1px 2px 4px #ccc","margin":"10px 0 12px","color":"#fff","borderRadius":"2px","background":"radial-gradient(circle, rgba(17,112,210,1) 0%, rgba(8,179,68,1) 100%)","display":"inline-block","fontSize":"14px","lineHeight":"36px","height":"36px"}'>登录/注册</el-button>
                <el-button v-if="Token" @click="logout" :style='{"border":"1px solid #1170d2","padding":"0 30px","boxShadow":"1px 2px 4px #bbb","margin":"10px 0 0 10px","color":"#1170d2","borderRadius":"2px","background":"#fff","display":"inline-block","fontSize":"14px","lineHeight":"36px","height":"36px"}'>退出</el-button>
			</div>
		</div>
		
		
		<div class="body-containers" :style='"horizontal" == "vertical" ? {"minHeight":"100vh","padding":"64px 0 0","margin":"0 0 0 210px","position":"relative","background":"rgba(64, 158, 255, .3)","display":"block"} : {"minHeight":"100vh","padding":"0","margin":"0","position":"relative","background":"url(http://codegen.caihongy.cn/20221119/59536cea60624059af14b8031ae0ce53.png) no-repeat center bottom,url(http://codegen.caihongy.cn/20221118/d7c5d6775d3f402fb36e0f9bd462ea34.jpg) no-repeat center top fixed,#fff"}'>
			<div class="menu-preview" :style='{"width":"100%","borderColor":"#efefef","borderStyle":"solid","background":"linear-gradient(to right,#1170d2, #08b344),#1170d2","borderWidth":"0","height":"auto"}'>
				<el-menu class="el-menu-horizontal-demo" :style='{"listStyle":"none","margin":"0 auto","borderColor":"#ffa100","flexWrap":"wrap","textAlign":"center","background":"none","borderWidth":"0","display":"flex","width":"100%","position":"relative","borderStyle":"solid","justifyContent":"center"}' :default-active="activeIndex" :unique-opened="true" mode="horizontal" :router="true" @select="handleSelect">
					<el-image v-if="false" :style='{"width":"44px","margin":"8px 10px 8px 0","objectFit":"cover","borderRadius":"100%","float":"left","height":"44px"}' src="http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg" fit="cover"></el-image>
					<el-menu-item v-for="(menu, index) in menuList" :index="index + ''" :key="index" :route="menu.url">
						<i v-if="true" :style='{"padding":"0 10px","margin":"0","color":"inherit","width":"14px","lineHeight":"56px","fontSize":"14px","height":"56px"}' :class="iconArr[index]"></i>
						<span :style='{"padding":"0 10px","lineHeight":"56px","fontSize":"14px","color":"inherit","height":"56px"}'>{{menu.name}}</span>
					</el-menu-item>
					<el-menu-item @click="goBackend">
						<i v-if="true" :style='{"padding":"0 10px","margin":"0","color":"inherit","width":"14px","lineHeight":"56px","fontSize":"14px","height":"56px"}' class="el-icon-box"></i>
						<span :style='{"padding":"0 10px","lineHeight":"56px","fontSize":"14px","color":"inherit","height":"56px"}'>后台管理</span>
					</el-menu-item>
					<el-menu-item @click="goChat">
						<i v-if="true" :style='{"padding":"0 10px","margin":"0","color":"inherit","width":"14px","lineHeight":"56px","fontSize":"14px","height":"56px"}' class="el-icon-service"></i>
						<span :style='{"padding":"0 10px","lineHeight":"56px","fontSize":"14px","color":"inherit","height":"56px"}'>在线咨询</span>
					</el-menu-item>
					<el-menu-item :index="menuList.length + 2 + ''" v-if="Token && notAdmin" @click="goMenu('/index/center')">
						<i v-if="true" :style='{"padding":"0 10px","margin":"0","color":"inherit","width":"14px","lineHeight":"56px","fontSize":"14px","height":"56px"}' class="el-icon-user"></i>
						<span :style='{"padding":"0 10px","lineHeight":"56px","fontSize":"14px","color":"inherit","height":"56px"}'>个人中心</span>
					</el-menu-item>
				</el-menu>
			</div>
			
			<div class="banner-preview" :style='{"width":"100%","margin":"0","height":"auto"}'>
				<el-carousel :style='{"width":"100%","margin":"0 auto"}' trigger="click" indicator-position="inside" arrow="always" type="default" direction="horizontal" height="500px" :autoplay="true" :interval="3000" :loop="true">
					<el-carousel-item :style='{"borderRadius":"0","width":"100%","height":"100%"}' v-for="item in carouselList" :key="item.id">
						<el-image :style='{"objectFit":"cover","width":"100%","height":"100%"}' :src="baseUrl + item.value" fit="cover"></el-image>
					</el-carousel-item>
				</el-carousel>
			</div>
			
			<router-view></router-view>
			
			<div class="bottom-preview" :style='{"minHeight":"150px","padding":"20px 0","margin":"20px 0 0","alignItems":"center","color":"#fff","background":"#333","flexDirection":"column","display":"flex","width":"100%","justifyContent":"center"}'>
			    <img :style='{"width":"44px","objectFit":"cover","borderRadius":"100%","display":"none","height":"44px"}' src="http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg" >
			    <div :style='{"margin":"0","fontSize":"14px","lineHeight":"28px","color":"#fff"}'></div>
			    <div :style='{"margin":"10px 0 0","fontSize":"14px","lineHeight":"28px","color":"#fff"}'></div>
			    <div :style='{"margin":"10px 0 0","fontSize":"14px","lineHeight":"28px","color":"#fff"}'></div>
			</div>
		</div>
		
        <el-dialog title="在线咨询" :visible.sync="chatFormVisible" width="600px" :before-close="chatClose">
            <div class="chat-content"
                style="background: #f5f5f5;padding: 10px;box-sizing: border-box;overflow-y: scroll;max-height: 40vh;min-height: 40vh;">
                <div :class="{'right-content': item.reply == '' || item.reply == null, 'left-content': item.ask == '' || item.ask == null}"
                    v-for="item in chatList" :key="item.id">
                    <el-tag v-if="(item.ask||item.reply)&&!item.img" :type="(item.ask == '' || item.ask == null) ? 'warning' : 'success'" style="margin: 10px;">
                        {{(item.ask == '' || item.ask == null) ? item.reply : item.ask}}
                    </el-tag>
                    <el-image v-else :src="baseUrl + item.img" style="width: 120px;margin: 10px;" fit="scale-down" :preview-src-list="[baseUrl + item.img]"></el-image>
                </div>
            </div>
            <div slot="footer" class="dialog-footer">
                <div v-if="askShow"
                    style="padding-bottom: 10px;display: flex;align-items: center;justify-content: center;">
                    <el-upload class="upload-demo" :action="uploadUrl" :on-success="uploadSuccess" 
                        :show-file-list="false">
                        <el-button type="success">上传图片</el-button>
                    </el-upload>

                    <el-button type="primary" style="margin-left: 20px;" @click="askChange">
                        转{{askType==1?'人工服务':'智能回复'}}</el-button>
                </div>
                <div style="width: 100%;display: flex;align-items: center;justify-content: space-between;">
                    <img style="width: 30px;cursor: pointer;" @click="askShow = !askShow" src="../assets/jiahao.png">
                    <el-input v-model="form.ask" placeholder="请输入内容" style="width: calc(100% - 110px);">
                    </el-input>
                    <el-button type="primary" @click="addChat(null)">发送</el-button>
                </div>

                <!-- <el-input v-model="form.ask" placeholder="请输入内容" style="width: calc(100% - 80px);float: left;">
                </el-input>
                <el-button type="primary" @click="addChat">发送</el-button> -->
            </div>
        </el-dialog>
	</div>
</template>

<script>
import Vue from 'vue'
export default {
    data() {
		return {
            activeIndex: '0',
			roleMenus: [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除"],"menu":"站点信息","menuJump":"列表","tableName":"zhandianxinxi"}],"menu":"站点信息管理"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["新增","查看","修改","删除"],"menu":"车辆信息","menuJump":"列表","tableName":"cheliangxinxi"}],"menu":"车辆信息管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["新增","查看","修改","删除"],"menu":"收费标准","menuJump":"列表","tableName":"shoufeibiaozhun"}],"menu":"收费标准管理"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["查看","删除","修改","配送"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"appFrontIcon":"cuIcon-attentionfavor","buttons":["查看","修改","删除"],"menu":"物流信息","menuJump":"列表","tableName":"wuliuxinxi"}],"menu":"物流信息管理"},{"child":[{"appFrontIcon":"cuIcon-message","buttons":["查看","回复","删除"],"menu":"留言反馈","tableName":"messages"}],"menu":"留言反馈"},{"child":[{"appFrontIcon":"cuIcon-album","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-camera","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"appFrontIcon":"cuIcon-attentionfavor","buttons":["新增","查看","修改","删除"],"menu":"新闻资讯","tableName":"news"},{"appFrontIcon":"cuIcon-service","buttons":["新增","查看","修改","删除"],"menu":"在线咨询","tableName":"chat"},{"appFrontIcon":"cuIcon-addressbook","buttons":["新增","查看","修改","删除"],"menu":"智能助手","tableName":"chathelper"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看","下单"],"menu":"站点信息列表","menuJump":"列表","tableName":"zhandianxinxi"}],"menu":"站点信息模块"},{"child":[{"appFrontIcon":"cuIcon-goodsnew","buttons":["查看"],"menu":"车辆信息列表","menuJump":"列表","tableName":"cheliangxinxi"}],"menu":"车辆信息模块"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看"],"menu":"收费标准列表","menuJump":"列表","tableName":"shoufeibiaozhun"}],"menu":"收费标准模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["查看","删除","支付"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"appFrontIcon":"cuIcon-attentionfavor","buttons":["查看"],"menu":"物流信息","menuJump":"列表","tableName":"wuliuxinxi"}],"menu":"物流信息管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看","下单"],"menu":"站点信息列表","menuJump":"列表","tableName":"zhandianxinxi"}],"menu":"站点信息模块"},{"child":[{"appFrontIcon":"cuIcon-goodsnew","buttons":["查看"],"menu":"车辆信息列表","menuJump":"列表","tableName":"cheliangxinxi"}],"menu":"车辆信息模块"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看"],"menu":"收费标准列表","menuJump":"列表","tableName":"shoufeibiaozhun"}],"menu":"收费标准模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}],
			baseUrl: '',
			carouselList: [],
			menuList: [],
			chatFormVisible: false,
			chatList: [],
            askType: 1, //1为智能回复 2为人工服务
            uploadUrl: this.$config.baseUrl + 'file/upload',
            headers: {
                Token: localStorage.getItem('Token')
            },
            askShow: false,
			form: {
				ask: '',
				userid: localStorage.getItem('userid')
			},
			Token: localStorage.getItem('Token'),
            username: localStorage.getItem('username'),
            notAdmin: localStorage.getItem('sessionTable')!='"users"',
			timer: '',
			iconArr: [
				'el-icon-star-off',
				'el-icon-goods',
				'el-icon-warning',
				'el-icon-question',
				'el-icon-info',
				'el-icon-help',
				'el-icon-picture-outline-round',
				'el-icon-camera-solid',
				'el-icon-video-camera-solid',
				'el-icon-video-camera',
				'el-icon-bell',
				'el-icon-s-cooperation',
				'el-icon-s-order',
				'el-icon-s-platform',
				'el-icon-s-operation',
				'el-icon-s-promotion',
				'el-icon-s-release',
				'el-icon-s-ticket',
				'el-icon-s-management',
				'el-icon-s-open',
				'el-icon-s-shop',
				'el-icon-s-marketing',
				'el-icon-s-flag',
				'el-icon-s-comment',
				'el-icon-s-finance',
				'el-icon-s-claim',
				'el-icon-s-opportunity',
				'el-icon-s-data',
				'el-icon-s-check'
			],	
		}
    },
    created() {
		this.baseUrl = this.$config.baseUrl;
		this.menuList = this.$config.indexNav;
		this.getCarousel();
        if(localStorage.getItem('Token') && localStorage.getItem('Token')!=null) {
            this.saveChathelper('主人，我是您的智能助手小搏，请问有什么可以帮您！');
            this.getChatList();
        }
    },
    mounted() {
        this.activeIndex = localStorage.getItem('keyPath') || '0';
    },
    watch: {
        $route(newValue) {
            let that = this
            let url = window.location.href
            let arr = url.split('#')
            for (let x in this.menuList) {
                if (newValue.path == this.menuList[x].url) {
                    this.activeIndex = x
                }
            }
            this.Token = localStorage.getItem('Token')
        },
    },
    methods: {
        handleSelect(keyPath) {
            if (keyPath) {
                localStorage.setItem('keyPath', keyPath)
            }
        },
		toLogin() {
		  this.$router.push('/login');
		},
        logout() {
            localStorage.clear();
            Vue.http.headers.common['Token'] = "";
            this.$router.push('/index/home');
            this.activeIndex = '0'
            localStorage.setItem('keyPath', this.activeIndex)
            this.Token = ''
            this.$forceUpdate()
            this.$message({
                message: '登出成功',
                type: 'success',
                duration: 1000,
            });
        },
		getCarousel() {
			this.$http.get('config/list', {params: { page: 1, limit: 3 }}).then(res => {
				if (res.data.code == 0) {
					this.carouselList = res.data.data.list;
				}
			});
		},
		goBackend() {
			window.open(`${this.$config.baseUrl}admin/dist/index.html`, "_blank");
		},
		getChatList() {
			this.$http.get('chat/list', {params: { userid: localStorage.getItem('userid'), sort: 'addtime', order: 'asc',limit: 1000 }}).then(res => {
				if (res.data.code == 0) {
                    for (let x in res.data.data.list) {
                        if (res.data.data.list[x].ask) {
                            if (res.data.data.list[x].ask.split('/').length > 1) {
                                res.data.data.list[x].img = res.data.data.list[x].ask
                            }
                        }
                        if (res.data.data.list[x].reply) {
                            if (res.data.data.list[x].reply.split('/').length > 1) {
                                res.data.data.list[x].img = res.data.data.list[x].reply
                            }
                        }
                    }
					this.chatList = res.data.data.list;
                    let div = document.getElementsByClassName('chat-content')[0]
                    setTimeout(() => {
                        if (div)
                            div.scrollTop = div.scrollHeight
                    }, 0)
				}
			});
		},
        addChat(ask = null) {
            this.$http.post('chat/add', ask ? {
                ask: ask,
                userid: localStorage.getItem('userid')
            } : this.form).then(res => {
                if (res.data.code == 0) {
                    if (this.askType == 1 && ask == null) {
                        let ask = JSON.parse(JSON.stringify(this.form.ask))
                        this.$nextTick(function() {
                            setTimeout(() => {
                                this.getChathelper(ask)
                            }, 1000) // 要加点延迟, 不然有可能不生效
                        })
                    }
                    this.form.ask = '';
                    this.getChatList();
                }
            });
        },
        getChathelper(ask) {
            this.$http.get('chathelper/page', {
                params: {
                    ask: ask,
                    limit: 1
                }
            }).then(res => {
                if (res.data.code == 0) {
                    if (res.data.data.list.length) {
                        this.saveChathelper(res.data.data.list[0].reply)
                    } else {
                        this.saveChathelper('主人，小搏还不够聪明，无法理解您的意思！')
                    }
                }
            });
        },
        saveChathelper(reply) {
            this.$http.post('chat/save', {
                reply: reply,
                userid: localStorage.getItem('userid')
            }).then(res => {
                if (res.data.code == 0) {
                    this.form.ask = '';
                    this.getChatList();
                }
            });
        },
        askChange() {
            this.askShow = !this.askShow;
            this.askType = this.askType == 1 ? 2 : 1
            if(this.askType==1) {
                this.saveChathelper('主人，我是您的智能助手小搏，请问有什么可以帮您！');
            } else if(this.askType==2){
                this.saveChathelper('您好，在线客服很高兴为您服务！');
            }
        },
        uploadSuccess(res) {
            if (res.code == 0) {
                this.askShow = !this.askShow;
                this.addChat('upload/' + res.file)
            }
        },
		chatClose() {
			clearInterval(this.timer);
			this.chatFormVisible = false;
		},
		goChat() {
            if(!localStorage.getItem('Token')) {
                this.toLogin();
                return;
            }
			this.chatFormVisible = true;
			this.timer = setInterval(this.getChatList, 2000);
		},
		goMenu(path) {
            if (!localStorage.getItem('Token')) {
                this.toLogin();
            } else {
                this.$router.push(path);
            }
		},
    }
}
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.menu-preview {
	  .el-scrollbar {
	    height: 100%;
	
	    & /deep/ .scrollbar-wrapper {
	      overflow-x: hidden;
	    }
	  }
	}
	
	
	.menu-preview .el-menu-horizontal-demo .el-menu-item {
		cursor: pointer;
		padding: 0;
		margin: 0;
		color: #fff;
		white-space: nowrap;
		display: flex;
		font-size: 16px;
		border-color: #ffc800 #ffc800 #ffc800 #ffc800;
		line-height: 56px;
		border-radius: 0;
		background: none;
		width: 120px;
		justify-content: center;
		border-width: 0px;
		position: relative;
		border-style: solid;
		list-style: none;
		text-align: center;
		height: 56px;
	}
	
	.menu-preview .el-menu-horizontal-demo .el-menu-item:hover {
		cursor: pointer;
		padding: 0;
		margin: 0;
		color: #fff;
		white-space: nowrap;
		font-size: 14px;
		border-color: #ffa100 #ffa100 #ffa100 #ffa100;
		line-height: 56px;
		border-radius: 0;
		background: #0b4887;
		width: 120px;
		border-width: 0px;
		position: relative;
		border-style: solid;
		list-style: none;
		height: 56px;
	}
	
	.menu-preview .el-menu-horizontal-demo .el-menu-item.is-active {
		cursor: pointer;
		padding: 0;
		margin: 0;
		color: #fff;
		white-space: nowrap;
		font-size: 14px;
		border-color: #ffa100 #ffa100 #ffa100 #ffa100;
		line-height: 56px;
		border-radius: 0;
		background: #0b4887;
		width: 120px;
		border-width: 0px;
		position: relative;
		border-style: solid;
		list-style: none;
		height: 56px;
	}
	
	.banner-preview {
	  .el-carousel /deep/ .el-carousel__indicator button {
	    width: 0;
	    height: 0;
	    display: none;
	  }
	}
	
	.banner-preview .el-carousel /deep/ .el-carousel__container .el-carousel__arrow--left {
		width: 36px;
		font-size: 12px;
		height: 36px;
	}
	
	.banner-preview .el-carousel /deep/ .el-carousel__container .el-carousel__arrow--left:hover {
		background: #2087c3;
	}
	
	.banner-preview .el-carousel /deep/ .el-carousel__container .el-carousel__arrow--right {
		width: 36px;
		font-size: 12px;
		height: 36px;
	}
	
	.banner-preview .el-carousel /deep/ .el-carousel__container .el-carousel__arrow--right:hover {
		background: #2087c3;
	}

	.banner-preview .el-carousel /deep/ .el-carousel__indicators {
		padding: 0;
		margin: 0 0 12px 0;
		z-index: 2;
		position: absolute;
		list-style: none;
	}
	
	.banner-preview .el-carousel /deep/ .el-carousel__indicators li {
		border-radius: 50%;
		padding: 0;
		margin: 0 4px;
		background: #fff;
		display: inline-block;
		width: 12px;
		opacity: 0.4;
		transition: 0.3s;
		height: 12px;
	}
	
	.banner-preview .el-carousel /deep/ .el-carousel__indicators li:hover {
		border-radius: 50%;
		padding: 0;
		margin: 0 4px;
		background: #fff;
		display: inline-block;
		width: 12px;
		opacity: 0.7;
		height: 12px;
	}
	
	.banner-preview .el-carousel /deep/ .el-carousel__indicators li.is-active {
		border-radius: 50%;
		padding: 0;
		margin: 0 4px;
		background: #fff;
		display: inline-block;
		width: 12px;
		opacity: 1;
		height: 12px;
	}

    .chat-content {
      .left-content {
          width: 100%;
          text-align: left;
      }
      .right-content {
          width: 100%;
          text-align: right;
      }
    }
</style>
