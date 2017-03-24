class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  def create
    @post = Post.create(post_params)
    render json: @post, status: 201
  end

end
