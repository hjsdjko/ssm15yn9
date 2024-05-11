const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm15yn9/",
            name: "ssm15yn9",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm15yn9/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "微信小程序校园二手交易网站"
        } 
    }
}
export default base
