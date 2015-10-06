X-GM-THRID: 6202253257836855296
X-Received: by 10.112.173.136 with SMTP id bk8mr2585730lbc.20.1444117503087;
        Tue, 06 Oct 2015 00:45:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.147.7 with SMTP id v7ls526922lfd.65.gmail; Tue, 06 Oct 2015
 00:45:02 -0700 (PDT)
X-Received: by 10.112.136.99 with SMTP id pz3mr4529867lbb.11.1444117502616;
        Tue, 06 Oct 2015 00:45:02 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id bn1si527759wib.0.2015.10.06.00.45.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 00:45:02 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0M1TKv-1ac9H50Ocr-00tPgR; Tue, 06 Oct
 2015 09:45:02 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>, Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: usleep_range is preferred over udelay
Date: Tue, 06 Oct 2015 09:45:01 +0200
Message-ID: <6335208.lbv5QB1mEN@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.10.1510060812440.2553@hadrien>
References: <20151005195012.GA21881@amitoj-Inspiron-3542> <CA+5yK5Hh=0vgxfVb1WzXiy4w6z9GG9mJEHC21Bsvd9zdGzCJMw@mail.gmail.com> <alpine.DEB.2.10.1510060812440.2553@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:xc+nJBIN6UBq+yOLtxQJNEO11eRzF4PpKXbi6QfFZMkabTa+NFU
 LLCpG8PpeM7PHEMetx3e8KTIyEQih7behptIVuz2wiFRwhneIooGcmcvgrPxn6xrsKPCSXh
 fC/0zV6t/XD7WKcAm+PtoSdkEFsx1cRvVvUK/i897I6ZJEJmES7GNPfFVM9pTIjBIkHzCpl
 NLsJf73NLFgGEUGMqe1AQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:ik+HmBSm2i4=:bReI50Nz7KPbdivPpyoTsG
 uuRLGt1SAauh3i+XqYwveoclfOJd2Iyy+Ogh3oCcXGdm+z9BDsY8DUvLQbd1c25P7wbT77fGb
 RgBqxW0KPi9jNmY6fPc75TCrthcwbVJhomapfz/j2mBC2GNo29n/r0x7tHxBtyDtJJjey9QkM
 zVMi1PebrgVbRU6iNyAnj0RZleribwIUs5yg//ynq3C4TR5Xr/tsmEnas+p+Afe7wXZbYkpiz
 +lJMIG/f/HlidKW9obE2FdOvS8CbppExDC/0kbzY7n3klMhwtjFmCyLyELjRhTxuwk48u+rWh
 hP2k126qKy0NBuLESuRWpVhOgCKgohyhW++OVdVOm9g69GJGRXh5RkQESANaTmejhikfF2klt
 Rf6cDqh+4c/Uq/Jn6OIABD0+mxq3lUU81iCO88AZo2cNnjJ5cXLtOaHVqeGaWVR8bcVnz9snO
 7dYDzdUTKaiId778e/9ZgU1gC/cReh0z7THKIPY8jsKz5NdE3mtcUBhoaDok/sfr6lPHBofZQ
 WDRllyBYMkF4G9mEnRU6zP3ceDzTbl6e3Cd3Srs4p1QxyJin7w6c10Udf9K5XN2bFvMsKVjWF
 wpKsswpwGacDD22njEWhMilTvgsAXf1KeHO2IjXeXl0A2LzFmCGeH5zfE5flcvYd3IrCpp/m5
 TUnKXWHupq1r1++tPEsQHpCDm+NYKSQ1wjx1C1ZX/CaFYjtMWeqoEuWIQXtIvYGgOLdGwinlb
 heA/Kt3C8XbkC3MM

On Tuesday 06 October 2015 08:12:58 Julia Lawall wrote:
> > >> Fix checkpatch.pl issue: "CHECK: usleep_range is preferred over udelay;
> > >> see Documentation/timers/timers-howto.txt".
> > >> Replace `udelay()` with a call to `usleep_range()` with a reasonable
> > upper limit.
> > >
> > > What is the definition of reasonable?  Do maybe other similar drivers use
> > > these values?
> > >
> >
> > I checked over here and here. They both used 1000. However, this uses 20.
> > But, the first two drivers seemed more similar to me. I couldn't find
> > anything in the documentation specifying the selection of range.
> 
> OK.

It really depends on what the driver is trying to do. In this case, it
waits for a device register to signal 'done', and it tries this five times
for a maximum of 50 microseconds, which is a relatively short period.

Changing the maximum to 1000 means that it can now sleep for up to
5 milliseconds instead, which is a noticeable time, especially if
it gets called frequently.

The questions to answer here are:

* Is it safe to call a sleeping function from this point at all?
  Look for other sleeping functions (proves that it is allowed to
  sleep) and for spinlocks (if a lock is held, you may not sleep)
  in this function.

* How often do you expect the function to get called? Once per data
  packet means it's not ok to sleep long, once an hour would mean it's
  clearly ok.

* Are there other calls in this function that take longer than a
  millisecond?


	Arnd

