library(UsingR)
library(lubridate)

dh<-function(birthday,pDay){
        b<-ymd(birthday)
        pd<-ymd(pDay)
        d<-day(b) #birthday day
        m<-month(b) #birthday month
        pdd<-day(pd) #prediction date day 
        pdm<-month(pd) #prediction date month
        pdy<-year(pd) #prediction date year
        
        bdn<-snr(d) #birthday day number
        bmn<-snr(m) #birthday month number
        pddn<-snr(pdd) #prediction date day number
        pdmn<-snr(pdm) #prediction date month number
        pdyn<-yn(pdy) #prediction date year number
        mn<-bmn+bdn+pddn+pdmn+pdyn
        while(nchar(mn)>1){
                mn<-snr(mn)
        }
        return(mn)
}
snr<-function(x){
        en<-floor(x/10)
        tn<-(x/10-floor(x/10))*10
        x<-en+tn
        return(x)
}
yn<-function(x){
        y1<-floor(x/1000)
        y2<-floor((x-y1*1000)/100)
        y3<-floor((x-y1*1000-y2*100)/10)
        y4<-x-y1*1000-y2*100-y3*10
        y<-y1+y2+y3+y4
        y<-snr(y)
        while(nchar(y)>1){
                y<-snr(y)
        }
        return(y)
}
shinyServer(
        function(input, output) {
                output$dailyHoroscope<-renderText({
                        paste('Your birthday is:',
                        format(input$bd, format="%Y-%m-%d"), 'and selected day is:',
                        format(input$pd, format="%Y-%m-%d"), sep = " ")
                        })
                output$dailyNumber<-renderText({
                        dayNumber<-paste('Day influence number is',dh(input$bd,input$pd),sep=" : ")
                })
                output$dailyHoroscopeDescription<-renderText({
                        hkd(dh(input$bd,input$pd))
                })
        })
