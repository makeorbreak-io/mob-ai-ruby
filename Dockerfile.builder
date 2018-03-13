FROM mob-ai-ruby:latest

RUN mkdir /robot/
ADD multipaint /robot/multipaint
ADD source_code /robot/bot.rb

ENTRYPOINT ["ruby", "-I/robot", "robot/bot.rb"]
