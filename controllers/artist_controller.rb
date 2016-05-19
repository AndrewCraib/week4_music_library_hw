get '/artist/new' do
  erb( :'artist/new' )
end

get '/artist' do
  @artists = Artist.all()
  erb ( :'artist/index' )
end

post '/artist' do
 @artist = Artist.new( params )
 @artist.save()
 redirect to('/artist')
end

get '/artist/:id' do
  @artist = Artist.find( params[:id] )
  erb( :'artist/show' )
end

get '/artist/:id/edit' do
  @artist = Artist.find( params[:id] )
  erb( :'artist/edit' )
end

put '/artist/:id' do
 @artist = Artist.update( params )
 redirect to( "/artist/#{params[:id]}" )
end

delete '/artist/:id' do
  Artist.destroy( params[:id] )
  redirect to('/artist')
end