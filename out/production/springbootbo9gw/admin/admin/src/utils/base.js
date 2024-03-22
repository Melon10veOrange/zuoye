const base = {
    get() {
        return {
            url : "http://localhost:8080/springbootbo9gw/",
            name: "springbootbo9gw",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootbo9gw/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "物流管理系统"
        } 
    }
}
export default base
