---
layout: post
title: "ruby on hadoop, using streaming"
date: 2015-08-22 15:23:05 +0800
comments: true
categories: [hadoop, big-data]
---

wcmapper.rb
```
#!/usr/bin/ruby  -w

while line = gets
	words = line.split(" ")
	words.each{ |word| puts word.strip+"\t1"}
end

```

wcreducer.rb
```
#!/usr/bin/ruby  -w

current = nil
count = 0

while line = gets
	word, counter = line.split("\t")

	if word == current
		count = count+1
	else
		puts current+"\t"+count.to_s if current
		current = word
		count = 1
	end
end
puts current+"\t"+count.to_s
```


Implementing WordCount using hadoop streaming
```
hadoop fs -copyFromLocal test.txt /user/andy

hadoop jar /opt/hadoop/contrib/streaming/hadoop-streaming-1.0.4.jar -file wcmapper.rb -mapper wcmapper.rb -file wcreducer.rb -reducer wcreducer.rb -input test.txt -output output

hadoop fs -cat output/part-00000
```

Performing the analysis from the command line
```
cat test.txt | ./wcmapper.rb | sort | ./wcreducer.rb
```


