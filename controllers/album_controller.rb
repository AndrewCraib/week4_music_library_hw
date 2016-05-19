get '/albums/new' do
  @artists = Artist.all()
  erb( :'albums/new' )
end

get '/albums' do
  @albums = Album.all()
  erb ( :'albums/index' )
end

post '/albums' do
 @album = Album.new( params )
 @album.save()
 redirect to('/albums')
end

get '/albums/:id' do
  @album = Album.find( params[:id] )
  erb( :'albums/show' )
end

get '/albums/:id/edit' do
  @album = Album.find( params[:id] )
  @artists = Artist.all()
  erb( :'albums/edit' )
end

put '/albums/:id' do
 @album = Album.update( params )
 redirect to( "/albums/#{params[:id]}" )
end

delete '/albums/:id' do
  Album.destroy( params[:id] )
  redirect to('/albums')
end
