describe Comment do
	it 'validate comment body not empty' do
		comment.body.should_not be_blank
	end
end