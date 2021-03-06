let triviaData = [
  { name: 'The Office',
    questions: [
      { answer: 'John Krasinski',
        question: 'The casting team originally wanted who to audition for the role of Dwight?'},
      { answer: 'Angela Kinsey',
        question: 'John Krasinski, Mindy Kaling, and who else were all, at one point, interns at Late Night With Conan O’Brien?'},
      { answer: 'Steve Carell',
        question: 'Who almost didn’t work in The Office because he was committed to another NBC show called Come to Papa?'},
      { answer: 'Ryan',
        question: 'During his embarrassing Dundie award presentation, whom is Michael Scott presenting a Dundie award when he sings along to “You Sexy Thing” by ’70s British funk band Hot Chocolate?'},
      { answer: '$25',
        question: 'In “The Alliance” episode, Michael is asked by Oscar to donate to his nephew’s walkathon for a charity. How much money does Michael donate, not realizing that the donation is per mile and not a flat amount?'},
      { answer: 'Karen Filippelli',
        question: 'Which character became Jim’s love interest after he moved to the Stamford branch in season three and joined the Scranton office during the merger?'},
      { answer: 'Lackawanna County',
        question: 'What county in Pennsylvania is Dunder Mifflin Scranton branch located?'},
      { answer: 'Finer Things Club',
        question: 'What is the exclusive club that Pam, Oscar, and Toby Flenderson establish in the episode “Branch Wars”?'},
      { answer: 'Jello',
        question: 'What substance does Jim put office supplies owned by Dwight into?'},
      { answer: 'Ryan',
        question: 'What is the name of the employee who started out as “the temp” in the Dunder Mifflin office?'},
      { answer: 'Michael Scott',
        question: 'Rainn Wilson did not originally audition for the part of the iconic beet farming Dwight Schrute, instead he auditioned for which part?'},
      { answer: 'Beets',
        question: 'Dwight owns and runs a farm in his spare time. What does this farm primarily produce?'},
      { answer: 'Chris Rock',
        question: 'In “Diversity Day” episode what famous comedian’s stand up routine does Michael imitate?'},
      { answer: 'Oscar',
        question: 'In the episode “The Client”, the employees were reading Michael’s movie script. Which employee read the part of Goldenface?'},
      { answer: 'A George Foreman Grill that he was cooking bacon on',
        question: 'What does Michael burn his foot on?'},
      { answer: 'Phyllis, Angela, and Pam',
        question: 'Who are the three main members of the party planning committee?'},
      { answer: 'Stealing Post-It notes',
        question: 'What does Michael pretend to fire Pam over in season one?'},
      { answer: 'Peanut butter and tunafish',
        question: 'What kind of sandwich does Michael have a dream about when he’s the head of Michael Scott Paper Company?'},
      { answer: 'Henrietta',
        question: 'What’s the name of Dwight’s porcupine who he used to make it look like Jim was pranking him?'},
      { answer: 'Milk and sugar',
        question: 'What’s in the thermos that Michael offers Pam during morning deliveries for the Michael Scott Paper Company?'},
      { answer: 'MISSsterious',
        question: 'What brand is Michael Scott wearing on the day he accidentally wearing a woman’s suit?'},
      { answer: 'Martin Luther King Jr.',
        question: 'Who does Michael wear on his head during the activity on diversity day?'},
      { answer: 'Licking your lips',
        question: 'During the episode, “Prince Family Paper,” what’s the secret signal that Dwight and Michael agree on using?'},
      { answer: 'Andy',
        question: 'Who calls Jim by the nicknames “Tuna” or “Big Tuna”?'},
      { answer: 'Tissue Boxes',
        question: 'At Jim and Pam’s wedding in the “Niagara” episode, what was Kevin wearing on his feet?'},
      { answer: 'Altoids',
        question: 'What does Jim use to make Dwight salivate in “Phyllis’ Wedding”?'},
      { answer: 'Mayo and black olives',
        question: 'What does Michael eat instead of ice cream because they don’t have any?'},
      { answer: 'Call of Duty',
        question: 'In the episode “The Coup”, the members of the Stamford branch play what video game with each other?'},
      { answer: 'Green',
        question: 'What of the following colors does Angela think is “whore-ish”?'},
      { answer: 'Mixed Berry',
        question: 'Jim Halpert knows the flavor of yogurt that Pam likes best, what is it?'},
      { answer: 'Ryan',
        question: 'Who took over Pam as the receptionist after she went to art school in season 5?'},
      { answer: 'Darryl',
        question: 'Who runs the warehouse below the Dunder Mifflin offices?'},
      { answer: 'Birkenstocks',
        question: 'What does Dwight keep a pair of in his car for special occasions?'},
      { answer: 'Sasha',
        question: 'What is Toby’s daughter’s name?'},
      { answer: 'Paul Lieberstein',
        question: 'What is the name of the actor who plays Toby Flenderson?'},
      { answer: 'Creed Bratton',
        question: 'Which actor shares his entire name with his character?'},
      { answer: 'Angela Kingsey',
        question: 'In 2019 Jenna Fischer and who else started an Office re-watch podcast entitled “The Office Ladies”?'},
      { answer: 'Creed, Oscar and Stanley',
        question: 'In the episode “Fun Run”, who are the three employees that go out to eat in the middle of the run?'},
      { answer: 'Toby Flenderson',
        question: 'Who served on the jury for the Scranton strangler case?'},
      { answer: 'Andy',
        question: 'Who punches a hole in the wall in between Michael’s office and the conference room?'},
      { answer: 'Dwight Schrute',
        question: 'NBC passed a pilot for a spin-off called “The Farm.” Who was it about?'},
      { answer: '“The American Workplace”',
        question: 'After the show was first picked up, what did NBC planned on retitling the series in order to differentiate it from the original British version?'},
      { answer: 'Ricky Gervais',
        question: 'What actor starred in the British version of The Office?'},
      { answer: 'Andy',
        question: 'Who is the proud owner of a Cornell hockey bobblehead?'},
      { answer: 'Phyllis',
        question: 'Through out the show it was revealed that one of the members of the office graduated High School with Michael. Who was it?'},
      { answer: 'Rabies',
        question: 'In the Season 4 pilot episode “Fun Run”, what cause does Michael organize a fun run for?'},
      { answer: 'Froggy 101',
        question: 'What is the number one rated Country and Western station in Scranton, Pennsylvania? (hint it’s a bumper sticker on Dwight’s desk)'},
      { answer: 'Black',
        question: 'What color does Dwight paint Michael’s office when he thinks he’s taking over Michael’s job?'},
      { answer: '“Weight Loss”',
        question: 'In what episode does Jim propose to Pam?'},
      { answer: 'NBC',
        question: 'Which network produced “The Office”?'},
      { answer: 'Susan',
        question: 'What is the middle name of Gabe Lewis?'},
      { answer: 'James Spader',
        question: 'What actor played Robert California?'},
      { answer: 'Sprinkles',
        question: 'Which of Angela’s cats does Dwight freeze?'},
      { answer: 'Oscar',
        question: 'Which cast member was having an affair with Angela’s fiancé, the senator?'},
      { answer: 'Meredith',
        question: 'Which office employee did Michael hit with his car?'},
      { answer: 'Ryan',
        question: 'Who started the fire?'},
      { answer: 'Little Kid Lover',
        question: 'What is Michael’s username for the online dating website?'},
      { answer: 'Broccoli',
        question: 'What vegetable does Michael force feed Kevin?'},
      { answer: 'Pam',
        question: 'Whose mother does Michael date?'},
      { answer: 'The Electric City',
        question: 'What is Scranton’s nickname?'},
      { answer: 'Teapot',
        question: 'In the season 2 episode “Christmas Party,” what Secret Santa gift does Jim get Pam?'},
      { answer: 'Pam',
        question: 'Who convinces Dwight that he is being recruited by the CIA?'},
      { answer: 'Scrantonicity',
        question: 'What is the name of Kevin’s cover band?'},
      { answer: 'Gas station',
        question: 'Where does Jim propose to Pam?'},
      { answer: 'Little Drummer Boy',
        question: 'Angela, played by Angela Kinsey, mentions that her favorite song is what?'},
      { answer: 'Stanley',
        question: 'In the episode “Basketball,” who does Michael say is on the team, ‘of course’?'},
      { answer: 'Spencer Gifts',
        question: 'Where did Michael get his “World’s Best Boss” mug?'},
      { answer: 'Erin',
        question: 'In the “St. Patrick’s Day” episode, who gets sick on their first date with Andy?'},
      { answer: 'Push her father down the isle in his wheelchair',
        question: 'What did Phyllis ask Michael to do in her wedding?'},
      { answer: 'Toby Flenderson',
        question: 'Who wins the Fun Run in season 4?'},
      { answer: '“Forever” by Chris Brown',
        question: 'What song does Michael dance down the aisle to during Pam and Jim’s wedding?'},
      { answer: 'With a Dundie award',
        question: 'How does Jan break Michael’s TV in the“Dinner Party” episode?'},
      { answer: 'John Krasinski',
        question: 'What actor on The Office shot the opening credit footage?'},
      { answer: 'B.J. Novak',
        question: 'What actor from The Office and John Krasinski went to the same high school?'},
      { answer: 'His jeans',
        question: 'What item of clothing does Michael insist on having dry cleaned?'},
      { answer: 'Michael Scott',
        question: 'Who is the Regional Manager at Dunder Mifflin?'},
      { answer: 'Jim',
        question: 'Who wins the bronze medal in the episode, “Office Olympics”?'},
      { answer: 'Michael',
        question: 'In the episode, “Diwali”, who attempts to kiss Pam?'},
      { answer: 'An oaky afterbirth',
        question: 'How does Michael describe the wine in the episode, “Dinner Party”?'},
      { answer: 'Angela Kinsey',
        question: 'Who was a phone operator for 1-800-Dentist when she auditioned for The Office?'},
      { answer: 'Carol',
        question: 'Which one of Michael’s girlfriends in The Office was played by Steve Carell’s real-life wife?'},
      { answer: 'Allison Jones',
        question: 'Who was responsible for casting The Office characters?'},
      { answer: 'Kevin',
        question: 'In the episode “Basketball,” after the game between the office workers and warehouse workers, one of the office workers is shown continuously making shots. Which employee is it?'},
      { answer: 'His cholesterol',
        question: 'What can Dwight Shrute supposedly raise and lower at his will?'},
      { answer: 'Roy',
        question: 'Which warehouse employee was engaged to Pam?'},
      { answer: 'Armageddon',
        question: 'What movie does Michael say that Dwight cried during?'},
      { answer: 'March 15',
        question: 'When is Michael’s birthday?'},
      { answer: 'A crossword puzzel',
        question: 'In almost every meeting, Stanley is seen doing what?'},
      { answer: 'Pam’s engagement ring',
        question: 'Jenna Fischer kept what after the series wrapped up?'},
      { answer: 'Dwight Schrute',
        question: 'Who is the Assistant to the Regional Manager?'},
      { answer: 'Andy',
        question: 'Who was sent to anger management?'},
      { answer: 'Michael Scott (Steve Carell), Pam Beesly (Jenna Fischer)',
        question: 'Which character speaks the the first line of the series and which character delivers the final line?'},
      { answer: 'David Koechner',
        question: 'Who plays Todd Packer, a former employee and Michael’s friend?'},
      { answer: 'Bob Vance',
        question: 'What is the name of Phyllis’ husband who also happens to work in the same office complex?'},
      { answer: 'Toby',
        question: 'Who is the Human Resources representative at Dunder Mifflin?'},
      { answer: 'Sweeney Todd',
        question: 'In the episode “Andy’s Play”, Andy Bernard performed in a local theatre production of what?'},
      { answer: 'Stanley',
        question: 'In the episode “Take Your Daughter to Work Day,” one employee’s daughter is flirting with Ryan Howard. Whose daughter was it?'},
      { answer: 'Dundies',
        question: 'What is the the name of the annual employee awards night on the show?'},
      { answer: 'Hope',
        question: 'In the episode, “Goodbye Michael,” what does Pam say Michael seems full of at the end of the episode?'},
      { answer: 'Creed',
        question: 'In the episode “Chair Model,” Pam would receive Michael’s chair when he got a new one. Who would get Pam’s chair?'},
      { answer: 'Science',
        question: 'After the Fun Run to beat Rabies, to whom is the oversized check made out?'},
      { answer: 'Chili’s',
        question: 'Based on where he eats most often, what is Michael Scott’s favorite restaurant?'},
      { answer: 'Pratt Institute',
        question: 'What art school did Pam go to?'
      }
    ]
  }
];

module.exports = triviaData;
