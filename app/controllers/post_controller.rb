class PostController< ApplicationController
    def index
        post = Post.create({title:"t1",content:"c1"})
        puts"+++hello"
    end