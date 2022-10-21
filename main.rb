#!/home/gitpod/.rvm/rubies/ruby-3.1.2/bin/ruby
require_relative 'q1'
require_relative 'q2'
require_relative 'q3'
require_relative 'q4'

#Question1

s1 = <<EOS
Facebook and its founder must release documents and electronic correspondence to a defense lawyer whose client has fled from criminal
charges that he falsely claimed a majority ownership in the social media giant, a federal judge said Friday.
EOS
puts s1.count_word()
puts s1.count_word("and")
s2 = %{two, three, two, three, one, three, three}
puts s2.count_word()
puts s2.count_word("three")
puts s2.count_word("four")
s3 = ""
puts s3.count_word()

#Question2

obj = Compress.new("i love you but do you love me too I dont care who you gee knee thai may you baby oh oh who you")
p obj.compressed_words, obj.indexes
puts obj.decompress(obj.compressed_words, obj.indexes)

#Question3
str = <<EOF
<%= simple_form_for @project do |f| %>
    <%= f.input :name %>
    <%= f.input :description %>
    <h3>Tasks</h3>
    <div id='tasks'>
        <%= f.simple_fields_for :tasks do |task| %>
        <%= render 'task_fields', :f => task %>
        <% end %>
        <div class='links'>
        <%= link_to_add_association 'add task', f, :tasks %>
        </div>
    </div>
    <%= f.submit 'Save' %>
<% end %>
EOF

obj = Webfilter.new(str)
puts obj.filter

#Question4

str = <<EOF
ADVISOR: Now, then, Mr., uh, Vickstad. How can I help you?
STUDENT: Well, I'm thinking about transferring, but I'm, I'm not sure ...
     I was hoping you could help me make a decision.
ADVISOR: I'll try. Where are you thinking of transferring to? And why do
     you want to leave Kryptos U?
STUDENT: Um...I'm thinking of going to Central University, because it's
     in my hometown. I've uh, been kind of homesick here this year, and
     I haven't made many friends...I just feel so lonely. So, I thought that
     uh, maybe, it'd be better to be closer to my parents and friends and
     all.
ADVISOR: I see. And would you keep the same major if you transferred?
     What is it...business administration?
STUDENT: Yeah, I would. The credits I've earned here will transfer to
      Central. I've already checked.
ADVISOR: May I ask why you chose to come to Kryptos University in the
      first place?
STUDENT: Sure. Um, well, the main reason is you have a great business
     school. And the second reason is that I...I wanted to get away from
     home.
ADVISOR: You're right, Mr. Vickstad, we do have an excellent business
      school. But, so does Central. The thing is, you've got almost a year
      under your belt here now. At Central, you'll be starting from scratch.
STUDENT: Yeah, I know that. But I'm a little bit familiar with Central,
      'cuz I had older friends who went there, and I visited it before I came
    here.
ADVISOR: You know, freshman year is usually the hardest. I remember
     how homesick I was my first year. I'll tell you, I was ready to pack it
     in after the first two weeks. But the longer I stayed, the more
     comfortable I felt. By senior year, I was glad I chose to stay.
STUDENT: Really? Did it get a lot better your sophomore year?
ADVISOR: Yes, it did. You might well find the same is true for you. Also,
     even though your credits here will transfer, you will have to take
     extra courses, because Central has different requirements. You'll
     probably have to go to school for an extra year.
STUDENT: Hmm...I hadn't thought about that. I'll have to check into it.
      Maybe I should give it one more year. I mean, it's probably good for
      me to learn to live away from my family and friends, right? It'll make
      me stronger in the future.
ADVISOR: You can always move back there after you graduate. Of
      course, by that time you may not want to!
STUDENT: Thank you for all your help. I guess I'll find out the exact
      transfer requirements. You've given me a lot to think about.
ADVISOR: Don't mention it. If you feel like you want to talk more, don't
      hesitate to come back and see me.
EOF

puts conv_filter(str)
