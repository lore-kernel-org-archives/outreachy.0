X-GM-THRID: 6208379102061133824
X-Received: by 10.112.173.170 with SMTP id bl10mr3301257lbc.7.1445500902498;
        Thu, 22 Oct 2015 01:01:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.88.141 with SMTP id m135ls170981lfb.100.gmail; Thu, 22 Oct
 2015 01:01:41 -0700 (PDT)
X-Received: by 10.112.16.229 with SMTP id j5mr3251352lbd.6.1445500901824;
        Thu, 22 Oct 2015 01:01:41 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id c7si991129wiy.3.2015.10.22.01.01.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 01:01:41 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0LroR0-1aWaUN1jHa-013cak; Thu, 22 Oct
 2015 10:01:41 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>, y2038@lists.linaro.org, outreachy-kernel@googlegroups.com
Subject: Re: Questions on some functions
Date: Thu, 22 Oct 2015 10:01:40 +0200
Message-ID: <9274066.vd5W3yiTYR@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CA+5yK5F0dsH5satgnY+ULsGzOPR1MZsZYuuuA6HdP5qAYb1diw@mail.gmail.com>
References: <CA+5yK5F0dsH5satgnY+ULsGzOPR1MZsZYuuuA6HdP5qAYb1diw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:XJn80+kdR2+Z5FADTeGnsmkdVr2YyCYAC3tK6kzubQZ72gBb8GE
 Pm2Kir8J6YIBxvVV1ihtJNKJZjdQkNRnPeU8geBqiDLOVRDiOoC05c5db0afdlkOpxWB77T
 OUtbnfhzKm86O4jbq21NRqSyYDbcbtZpi7QR01ewqZideN38Ncu4VHeueCiRGWgrmxqnnu9
 9lG8JAKXHoVn2hozsEJjw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:4rqgn6MJ6/w=:H4ybYRd106onWXBm/YXIMl
 APcgp75bQhtwj1o3wi5qN0vDqMmXDAYeSDY2WTuYjyYN2IRsnNmaqL8jzpBykcfm7pkMYeB1B
 znR5SDovFCTxDPV36LgHUawDWgTWnxF0cRC5Lx/9MfenLXkQs6M1Kb6/Z/UwJzPdVrs7y1ZZq
 SYpovRj0OkNx5s1LniOFSxarFuUbr99JFvGxxqXbBmvkPwmCvT+MDeuXcgT0AxLFUZsUWXiSs
 zxsg5toEoAGvFDg/qDDoRkqMogoWiSxtxKOTp3H4/2FekJlHRKydknK5dFHHF+3NpWdI8tkZP
 MPi6jLarV8vlKTxdLPn3jttMSkchHHmiuIAGQENBYgPPfJIj47S44PWyvNJFMYDDF9DySEQi/
 2603U18sf7vwNt3JTQ80Az35mSMm1sJcgG8DqSfrsCIJQFSCoQRi+JqW8wWklLGenPXP4QGbx
 AQhfbfrb7pkJKfPMQuzt0ArbmJefVEC/0271jaIc72jD2spSNs0J5iU9800iBcQXtRbayeH6U
 +dPmLhzVXcuK8ySbBZ7eSlE5UARe1Hf10qhuRuyCO7+EAwvB1KXQ5fWUVTpIeYtp5r3upRDNq
 +gEi14aQz/+j6vNgZTSMF7/NOMxLXzM3PBxIc2OEqlXbxZ0xNktyhiGe+n+W/NjadPtDK0GjK
 mHZJme+oB9paNm6C0jQkacf1OoUhFh2/U4/j5JqirsZzfy8hwVhm1L2l+p7669tTAPUKfcbwo
 lozjMVfQuORiR/SP

On Thursday 22 October 2015 12:08:14 Amitoj Kaur Chawla wrote:
> Hi Arnd,
> 
> 
> A couple of doubts I had while working on some patches.

Hi Amitoj,

I've put the y2038 and outreachy mailing lists on Cc, I hope that's
ok with you.

You ask good and important questions, and it will help others to
read my reply as well.

> I was working on drivers/net/wireless/atmel.c which has time_t in it.
> According to the y2038 page it should be replaced with ktime_t. But
> while reading online on y2038, I found time64_t as well.
> My question, what is the difference between time64_t and ktime_t and
> how do you decide which to use where?

time64_t uses seconds, while ktime_t uses nanoseconds. They are both
appropriate solutions for the problem, but it depends on the driver's
requirements which one work better. Most drivers want sub-second
resolution, so ktime_t has to be used. When a driver is only interested
in seconds, using time64_t is more efficient, because it avoids the
64-bit integer division required to convert nanoseconds into seconds.

> I found another patch in an archive where you've mentioned
> ktime_get(), ktime_get_real(), ktime_get_ts64(),
> ktime_get_real_ts64(), ktime_get_seconds() and
> ktime_get_real_seconds().
> What is the difference between ktime_get() and ktime_get_ts64()?

ktime_get_ts64() returns a 'struct timespec64' rather than 'ktime_t'.
The two are essentially equivalent, but using ktime_t is generally
more preferred, except that converting ktime_t into timespec64 later
is again an expensive operation. If a driver wants separate
seconds/nanoseconds fields, using timespec64 is better.
 
> You've also mentioned there that 'real is used when driver wants to
> know wallclock but is okay with time going backwards.'
> I didn't understand this, how do you know that the driver is 'okay
> with time going backwards' ?

Most of them are not: if a driver wants to know how much time has
passed between two events, and it gets a negative answer, things
can go wrong.

An example for a driver that does not care about time going backwards
is one that just prints the current time in a printk() statement
and does not compare it to another time value.

There are also examples where you have to use 'real' time, in particular
when the time value is passed through an external interface with a
known format (e.g. to user processes, on the network, or stored on disk).
Here, changing the code to monotonic time causes problems for the code
on the other end of that interface.

	Arnd

