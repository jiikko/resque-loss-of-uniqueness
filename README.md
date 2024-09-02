# README

This is the reproduction code for https://github.com/resque/resque-unique_at_runtime/issues/194

## Setup

- bundle install

## How to Run

- bundle exec foreman s
- `tail -F log/development.log | grep ERROR`

```
D, [2024-08-26T16:22:36.434387 #19091] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:36.434724 #19091] DEBUG -- : [R-UAR] attempting to lock queue with r-uar:
D, [2024-08-26T16:22:36.434975 #19091] DEBUG -- : [R-UAR] check passed will perform
I, [2024-08-26T16:22:36.435188 #19091]  INFO -- : Checking if the file can be locked
D, [2024-08-26T16:22:36.494446 #19092] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:36.494821 #19092] DEBUG -- : [R-UAR] attempting to lock queue with r-uar:
D, [2024-08-26T16:22:36.495250 #19092] DEBUG -- : [R-UAR] failed to lock queue with r-uar:
I, [2024-08-26T16:22:36.536327 #19091]  INFO -- : File has been unlocked
D, [2024-08-26T16:22:36.536528 #19091] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:36.536612 #19091] DEBUG -- : [R-UAR] unlock queue with r-uar:
D, [2024-08-26T16:22:36.537073 #19091] DEBUG -- : [R-UAR] on failure unlock
D, [2024-08-26T16:22:36.537158 #19091] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:36.537240 #19091] DEBUG -- : [R-UAR] unlock queue with r-uar:
D, [2024-08-26T16:22:36.554724 #19093] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:36.555094 #19093] DEBUG -- : [R-UAR] attempting to lock queue with r-uar:
D, [2024-08-26T16:22:36.555400 #19093] DEBUG -- : [R-UAR] check passed will perform
I, [2024-08-26T16:22:36.555621 #19093]  INFO -- : Checking if the file can be locked
I, [2024-08-26T16:22:36.655878 #19093]  INFO -- : File has been unlocked
D, [2024-08-26T16:22:36.656193 #19093] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:36.656309 #19093] DEBUG -- : [R-UAR] unlock queue with r-uar:
D, [2024-08-26T16:22:36.656807 #19093] DEBUG -- : [R-UAR] on failure unlock
D, [2024-08-26T16:22:36.656925 #19093] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:36.657030 #19093] DEBUG -- : [R-UAR] unlock queue with r-uar:
D, [2024-08-26T16:22:36.674864 #19094] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:36.675203 #19094] DEBUG -- : [R-UAR] attempting to lock queue with r-uar:
D, [2024-08-26T16:22:36.675488 #19094] DEBUG -- : [R-UAR] check passed will perform
I, [2024-08-26T16:22:36.675674 #19094]  INFO -- : Checking if the file can be locked
D, [2024-08-26T16:22:36.722747 #19095] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:36.723115 #19095] DEBUG -- : [R-UAR] attempting to lock queue with r-uar:
D, [2024-08-26T16:22:36.723527 #19095] DEBUG -- : [R-UAR] failed to lock queue with r-uar:
I, [2024-08-26T16:22:36.777024 #19094]  INFO -- : File has been unlocked
D, [2024-08-26T16:22:36.777440 #19094] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:36.777532 #19094] DEBUG -- : [R-UAR] unlock queue with r-uar:
D, [2024-08-26T16:22:36.778026 #19094] DEBUG -- : [R-UAR] on failure unlock
D, [2024-08-26T16:22:36.778107 #19094] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:36.778177 #19094] DEBUG -- : [R-UAR] unlock queue with r-uar:
D, [2024-08-26T16:22:36.795954 #19096] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:36.796293 #19096] DEBUG -- : [R-UAR] attempting to lock queue with r-uar:
D, [2024-08-26T16:22:36.796544 #19096] DEBUG -- : [R-UAR] check passed will perform
I, [2024-08-26T16:22:36.796747 #19096]  INFO -- : Checking if the file can be locked
I, [2024-08-26T16:22:36.897952 #19096]  INFO -- : File has been unlocked
D, [2024-08-26T16:22:36.898248 #19096] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:36.898359 #19096] DEBUG -- : [R-UAR] unlock queue with r-uar:
D, [2024-08-26T16:22:36.898941 #19096] DEBUG -- : [R-UAR] on failure unlock
D, [2024-08-26T16:22:36.899044 #19096] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:36.899152 #19096] DEBUG -- : [R-UAR] unlock queue with r-uar:
D, [2024-08-26T16:22:36.923404 #19098] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:36.923903 #19098] DEBUG -- : [R-UAR] attempting to lock queue with r-uar:
D, [2024-08-26T16:22:36.924409 #19098] DEBUG -- : [R-UAR] check passed will perform
I, [2024-08-26T16:22:36.925105 #19098]  INFO -- : Checking if the file can be locked
I, [2024-08-26T16:22:37.026367 #19098]  INFO -- : File has been unlocked
D, [2024-08-26T16:22:37.026732 #19098] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:37.026865 #19098] DEBUG -- : [R-UAR] unlock queue with r-uar:
D, [2024-08-26T16:22:37.027595 #19098] DEBUG -- : [R-UAR] on failure unlock
D, [2024-08-26T16:22:37.027850 #19098] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:37.028736 #19098] DEBUG -- : [R-UAR] unlock queue with r-uar:
D, [2024-08-26T16:22:37.053097 #19099] DEBUG -- : [R-UAR] getting key for !
D, [2024-08-26T16:22:37.053626 #19099] DEBUG -- : [R-UAR] attempting to lock queue with r-uar:
D, [2024-08-26T16:22:37.054009 #19099] DEBUG -- : [R-UAR] check passed will perform
I, [2024-08-26T16:22:37.054283 #19099]  INFO -- : Checking if the file can be locked
```

If you reproduce this, the following output will appear in about 10 minutes:


```
E, [2024-08-26T16:22:30.398166 #19015] ERROR -- : !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
E, [2024-08-26T16:22:30.398233 #19015] ERROR -- : !!!!!!!!Failed to control concurrency!!!!!!!!!!!!!!!!!!!!!!!
E, [2024-08-26T16:22:30.398300 #19015] ERROR -- : !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
E, [2024-08-26T16:22:30.412045 #19016] ERROR -- : !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
E, [2024-08-26T16:22:30.412103 #19016] ERROR -- : !!!!!!!!Failed to control concurrency!!!!!!!!!!!!!!!!!!!!!!!
E, [2024-08-26T16:22:30.412167 #19016] ERROR -- : !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
E, [2024-08-26T16:22:30.425528 #19017] ERROR -- : !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
E, [2024-08-26T16:22:30.425580 #19017] ERROR -- : !!!!!!!!Failed to control concurrency!!!!!!!!!!!!!!!!!!!!!!!
E, [2024-08-26T16:22:30.425634 #19017] ERROR -- : !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
E, [2024-08-26T16:22:30.441566 #19018] ERROR -- : !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
E, [2024-08-26T16:22:30.441626 #19018] ERROR -- : !!!!!!!!Failed to control concurrency!!!!!!!!!!!!!!!!!!!!!!!
E, [2024-08-26T16:22:30.441691 #19018] ERROR -- : !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
E, [2024-08-26T16:22:30.454611 #19019] ERROR -- : !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
```
