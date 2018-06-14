module ApplicationHelper

	## place where we put in all of our methods that we'll be using in our 
	## views
	## methods we write and define here are available for our views to use

	## define a gravatar method that'll go to the web and grab an image
	## that's associated with the gravatar
	## pass in the option to change the size with a default size defined
	## if we don't send in size then we use default of 80
	def gravatar_for(user, options = {size:80})
		## we need to pass in the user object
		## when we pass in user object to this method it'll grab the email
		## address for this user then it'll store the hex digest of that
		## as the gravatar id
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		## the below line is so we can alter the size of the image
		size = options[:size]
		## now we need to form the url
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
		## must return the image in an image tag
		image_tag(gravatar_url, alt: user.chefname, class: "img-circle")
	end

end




























































