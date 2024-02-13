> library(readr)
> bookings <- read_csv("bookings.csv")
> bookings_v2 <-
+     arrange(bookings, desc(lead_time))
> head(bookings_v2)
# A tibble: 6 × 32
  hotel       is_canceled lead_time arrival_date_year arrival_date_month arrival_date_week_nu…¹
  <chr>             <dbl>     <dbl>             <dbl> <chr>                               <dbl>
1 Resort Hot…           0       737              2015 July                                   27
2 Resort Hot…           0       709              2016 February                                9
3 City Hotel            1       629              2017 March                                  13
4 City Hotel            1       629              2017 March                                  13
5 City Hotel            1       629              2017 March                                  13
6 City Hotel            1       629              2017 March                                  13
> mean(bookings$lead_time)
> hotel_summary <- 
+     bookings %>%
+     group_by(hotel) %>%
+     summarise(average_lead_time=mean(lead_time),
+               min_lead_time=min(lead_time),
+               max_lead_time=max(lead_time))
> ggplot(data = bookings) +
+     geom_point(mapping = aes(x = lead_time, y = children))
> ggplot(data = bookings) +
+     geom_point(mapping = aes(x = lead_time, y = adults))
> ggplot(data = bookings) +
+     geom_bar(mapping = aes(x = distribution_channel))
> ggplot(data = bookings) +
+     geom_bar(mapping = aes(x = distribution_channel, fill=deposit_type))
> ggplot(data = bookings) +
+     geom_bar(mapping = aes(x = distribution_channel, fill=market_segment))
> ggplot(data = bookings) +
+     geom_bar(mapping = aes(x = distribution_channel)) +
+     facet_wrap(~deposit_type)
> ggplot(data = bookings) +
+     geom_bar(mapping = aes(x = distribution_channel)) +
+     facet_wrap(~deposit_type) +
+     theme(axis.text.x = element_text(angle = 45))
> ggplot(data = bookings) +
+     geom_bar(mapping = aes(x = distribution_channel)) +
+     facet_wrap(~market_segment) +
+     theme(axis.text.x = element_text(angle = 45))
> ggplot(data = bookings) +
+     geom_bar(mapping = aes(x = distribution_channel)) +
+     facet_grid(~deposit_type) +
+     theme(axis.text.x = element_text(angle = 45))
> ggplot(data = bookings) +
+     geom_bar(mapping = aes(x = distribution_channel)) +
+     facet_wrap(~deposit_type~market_segment) +
+     theme(axis.text.x = element_text(angle = 45))
> ggplot(data = bookings) +
+     geom_bar(mapping = aes(x = distribution_channel)) +
+     facet_wrap(~deposit_type~market_segment) +
+     theme(axis.text.x = element_text(angle = 45))
> ggplot(data = bookings) +
+     geom_bar(mapping = aes(x = hotel)) +
+     facet_wrap(~market_segment)
> onlineta_city_hotels <- filter(bookings, 
+                                (bookings$hotel=="city hotel" & 
+                                     bookings$market_segment=="Online TA"))
> ggplot(data = bookings) +
+     geom_bar(mapping = aes(x = market_segment)) +
+     facet_wrap(~hotel) +
+     labs(title="Hotel by market segment")
> min(bookings$arrival_date_year)
[1] 2015
> max(bookings$arrival_date_year)
[1] 2017
> mindate <- min(bookings$arrival_date_year)
> maxdate <- max(bookings$arrival_date_year)
> ggplot(data = bookings) +
+     geom_bar(mapping = aes(x = market_segment)) +
+     facet_wrap(~hotel) +
+     theme(axis.text.x = element_text(angle = 45)) +
+     labs(title="Comparison of market segments by hotel type for hotel bookings",
+          subtitle=paste0("Data from: ", mindate, " to ", maxdate))
> ggplot(data = bookings) +
+     geom_bar(mapping = aes(x = market_segment)) +
+     facet_wrap(~hotel) +
+     theme(axis.text.x = element_text(angle = 45)) +
+     labs(title="Comparison of market segments by hotel type for hotel bookings",
+          caption=paste0("Data from: ", mindate, " to ", maxdate))
> ggplot(data = bookings) +
+     geom_bar(mapping = aes(x = market_segment)) +
+     facet_wrap(~hotel) +
+     theme(axis.text.x = element_text(angle = 45)) +
+     labs(title="Comparison of market segments by hotel type for hotel bookings",
+          caption=paste0("Data from: ", mindate, " to ", maxdate),
+          x="Market Segment",
+          y="Number of Bookings")
> ggsave('hotel_booking_chart.png')
Saving 4.36 x 3.54 in image
> ggsave('hotel_booking_chart.png',
+        width=16,
+        height=8)
