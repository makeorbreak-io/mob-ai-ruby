FROM mob-ai-ruby:latest

RUN mkdir /robot/
ADD multipaint /robot/multipaint
ADD bot.rb /robot/bot.rb

ENTRYPOINT ["ruby", "-I/robot", "robot/bot.rb"]
