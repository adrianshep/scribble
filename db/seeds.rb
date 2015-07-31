# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# require_relative './comment_data.rb'
# require_relative './post_data.rb'

Comment.destroy_all
Post.destroy_all

user1 = User.create(username: "John Irving")
user2 = User.create(username: "Norman Mailer")
user3 = User.create(username: "Jonathan Franzen")
user4 = User.create(username: "Ernie Papa Hemingway")

post1 = Post.create(title: "A Prayer For Owen Meany", username: "John Irving", text: "When someone you love dies, and you're not expecting it, you don't lose her all at once; you lose her in pieces over a long time—the way the mail stops coming, and her scent fades from the pillows and even from the clothes in her closet and drawers. Gradually, you accumulate the parts of her that are gone. Just when the day comes—when there's a particular missing part that overwhelms you with the feeling that she's gone, forever—there comes another day, and another specifically missing part", created_at: Date.current)
post2 = Post.create(title: "A Son Of The Circus", username: "John Irving", text: "In our hearts... there must abide some pity for those people who have always felt themselves to be separate from even their most familiar surroundings, those people who either are foreigners or who suffer a singular point of view that makes them feel as if they’re foreigners - even in their native lands. In our hearts... there also abides a certain suspicion that such people need to feel set apart from their society. But people who initiate loneliness are no less lonely than those who are suddenly surprised by loneliness, nor are they undeserving of our pity.", created_at: Date.current)
post3 = Post.create(title: "The Naked And The Dead", username: "Norman Mailer", text: "Roth was feeling a gentle warmth as he thought of his son. He was remembering the way his son used to awaken him on Sunday mornings. His wife would put the baby in bed with him, and the child would straddle his stomach and pull feebly at the hairs on Roth’s chest, cooing with delight. It gave him a pang of joy to think of it, and then, back of it, a realization that he had never enjoyed his child as much when he had lived with him. He had been annoyed and irritable at having his sleep disturbed, and it filled him with wonder that he could have missed so much happiness when he had been so close to it. It seemed to him now that he was very near a fundamental understanding of himself, and he felt a sense of mystery and discovery as if he had found unseen gulfs and bridges in all the familiar drab terrain of his life.", created_at: Date.current)
post4 = Post.create(title: "Advertisements For Myself", username: "Norman Mailer", text: "It is on this bleak scene that a phenomenon has appeared: the American existentialist—the hipster. It is on this bleak scene that a phenomenon has appeared: the American existentialist—the hipster. It is on this bleak scene that a phenomenon has appeared: the American existentialist—the hipster. It is on this bleak scene that a phenomenon has appeared: the American existentialist—the hipster.", created_at: Date.current)
post5 = Post.create(title: "The Corrections", username: "Jonathan Franzen", text: "The madness of an autumn prairie cold front coming through. The madness of an autumn prairie cold front coming through.The madness of an autumn prairie cold front coming through.The madness of an autumn prairie cold front coming through.The madness of an autumn prairie cold front coming through.", created_at: Date.current)
post6 = Post.create(title: "Freedom", username: "Jonathan Franzen", text: "The news about Walter Berglund wasn’t picked up locally–he and Patty had moved away to Washington two years earlier and meant nothing to St. Paul now–but the urban gentry of Ramsey Hill were not so loyal to their city as not to read the New York Times. According to a long and very unflattering story in the Times, Walter had made quite a mess of his professional life out there in Washington. His old neighbors had some difficulty reconciling the quotes about him in the Times (‘arrogant,’ ‘high-handed,’ ‘ethically compromised’) with the generous, smiling, red-faced 3M employee they remembered pedaling his commuter bicycle up Summit Avenue in February snow; it seemed strange that Walter, who was greener than Greenpeace and whose own roots were rural, should be in trouble now for conniving with the coal industry and mistreating country people. Then again, there had always been something not quite right about the Berglunds.", created_at: Date.current)

comment1 = post1.comments.create(title: "long-winded", username: "Norman Mailer", text: "i found it too long and too boring and a damned nuiscance to read", created_at: Date.current)
comment2 = post1.comments.create(title: "look who's talking", username: "Ernie Papa Hemingway", text: "i called your first novel poorly wrapped cheese, you pompous...", created_at: Date.current)
comment3 = post2.comments.create(title: "the big TO", username: "Ernie Papa Hemingway", text: "Toronto is damn fine city in which to set a novel. Cuba could've figured in the story.", created_at: Date.current)
comment4 = post3.comments.create(title: "fugging?", username: "Jonathan Franzen", text: "It's spelled F-U-C-K, Norm.", created_at: Date.current)
comment5 = post4.comments.create(title: "self-referential in the extreme", username: "John Irving", text: "What, you're giving me crap after this exercise in narcissism?", created_at: Date.current)
comment6 = post5.comments.create(title: "no takers?", username: "Jonathan Franzen", text: "Why isn't anyone commenting on my posts?", created_at: Date.current)






# comment_data = get_comment_data()
# post_data = get_post_data()
