#5-1
a_list<-list(alpha=1,list(beta=2,gamma=3,delta=3),eta=NULL)
length(a_list)
b_list<-list(c(0,1,4,9),
             16,
             25,
             36,
             49,
             NULL,
             64,
             NULL,
             81,
             NULL)
b_list
#5-2
(a_data_frame<-data.frame(
  iris
))
colMeans(a_data_frame[1:4])

#5-3
a<-data.frame(
  id=1
)
x<-cbind(beaver1,a)
b<-data.frame(
  id=2
)
y<-cbind(beaver2,b)
rbind(x,y)
