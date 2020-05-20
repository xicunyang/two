<template>
    <div class="about">
        two 子应用的关于页
        <br>
        <button @click="testFn">测试主应用的下发事件</button>
        <br>
        {{'测试主子应用间通讯 --- '+name}}
    </div>
</template>

<script>
    export default {
        name: "About",
        data() {
            return {
                name: 'init name'
            }
        },
        mounted(){
            this.$onGlobalStateChange((state,prev)=>{
                if(state.mt !== prev.mt){
                    this.name = state.mt
                    this.$pager.next({
                        from: "two",
                        showMsg: "主子应用通讯成功"
                    });
                }
            })
        },
        methods: {
            testFn(){
                this.$show('测试主应用的下发事件成功')
            }
        }
    }
</script>

<style scoped>

</style>
