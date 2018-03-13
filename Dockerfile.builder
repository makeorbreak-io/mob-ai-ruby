FROM mob-ai-ruby:latest

RUN mkdir /robot/
ADD multipaint /robot/multipaint
ADD source_code /robot/main.rb

ENTRYPOINT ["ruby", "-I/robot", "robot/main.rb"]
