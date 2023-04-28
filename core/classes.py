from calendar import HTMLCalendar

from core.models import Event


class EventCalendar(HTMLCalendar):
    def __init__(self, events=None):
        super(EventCalendar, self).__init__()
        self.events = events

    def formatday(self, day, weekday):
        """
        Return a day as a table cell.
        """
        print(day)
        events_from_day = list(filter(lambda ev: ev.eventStartDate.day <= day <= ev.eventEndDate.day, self.events))

        if day == 0:
            return '<td class="today">&nbsp;</td>'  # day outside month
        elif len(events_from_day) == 0:
            return '<td class="%s">%s</td>' % (self.cssclasses[weekday], day)
        else:
            return '<td class=""style="color: purple; margin-right: 100px"%s">%s</td>' % (self.cssclasses[weekday], day)

    def formatweek(self, theweek):
        """
        Return a complete week as a table row.
        """
        s = ''.join(self.formatday(d, wd) for (d, wd) in theweek)
        return '<tr>%s</tr>' % s

    def formatmonth(self, theyear, themonth, withyear=True):
        """
        Return a formatted month as a table.
        """
        self.events = list(filter(lambda ev: ev.eventStartDate.month <= themonth <= ev.eventEndDate.month, self.events))

        v = []
        a = v.append
        a('<table border="0" cellpadding="0" cellspacing="0" class="month">')
        a('\n')
        a(self.formatmonthname(theyear, themonth, withyear=withyear))
        a('\n')
        a(self.formatweekheader())
        a('\n')
        for week in self.monthdays2calendar(theyear, themonth):
            a(self.formatweek(week))
            a('\n')
        a('</table>')
        a('\n')
        return ''.join(v)