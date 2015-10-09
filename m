X-GM-THRID: 6202253257836855296
X-Received: by 10.180.106.197 with SMTP id gw5mr155842wib.7.1444417471345;
        Fri, 09 Oct 2015 12:04:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.130 with SMTP id hc2ls438456wib.1.canary; Fri, 09 Oct
 2015 12:04:30 -0700 (PDT)
X-Received: by 10.180.81.165 with SMTP id b5mr159818wiy.1.1444417470604;
        Fri, 09 Oct 2015 12:04:30 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id hs5si2640wib.1.2015.10.09.12.04.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:04:30 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0Lst7y-1ainqu0yb4-012bGW; Fri, 09 Oct
 2015 21:04:30 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: usleep_range is preferred over udelay
Date: Fri, 09 Oct 2015 21:04:28 +0200
Message-ID: <6179643.RVhvoqj9Rt@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CA+5yK5GwMXDUVUUSdzn1O1iuAed1CDs6Ogqs+fcoH=xufPSzmA@mail.gmail.com>
References: <20151005195012.GA21881@amitoj-Inspiron-3542> <5882355.uMFG4U3DtR@wuerfel> <CA+5yK5GwMXDUVUUSdzn1O1iuAed1CDs6Ogqs+fcoH=xufPSzmA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:pD0Ne6lcbEA3NnRNJ7U+kxvF8AUgtsIyBQur60AowjvHV6ixGjT
 I69Uh3Ia9vKyTL6frv8+VBy8FBgdMHz6Uf992wsib4/c2cLwDPv6nmTOy+gdMeiGUU0YpaK
 0IRCSrUkL8bbl2cQZ4Ax9L0n5OPe+fza3lOqB/ZnNqqACKvXNR8bqGa5yDAzX61mag6doQ1
 avfyltW2z9UkWBA0AiBbQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:+F5k1R3Y9r8=:nZeMECIYD5ZMeKhJAlOzq0
 TqJnBgNUyKIgJNpVDuaPK3vBAI6kiR2bd28PE2QvuAUdWrGDweeIpA8thxvwKRVqLkDzXCpPW
 iYtVpeo7aak58HAe6/y4R1CmMGmKZQY/3z0gARNc0l9ZvyMoWBjS7WPCsvi+fVixy7CRrgOL5
 M2SKfes3Ux78pLnszi6TfpSYAagYrq4g6FvyEMypBeDABV4MsWwr1fzye2Mn3vqT7+LgZDbz7
 p4Kx3cEpWcgaW6QtCvvhnLBb5IWK+MDTU4+a6LpLzh7fYY0A1ogol2RxRS/Qpnuzbaz5odc5W
 Kn1oWfBQ4Ml7CgsaUPTyYFg2qJbxnVS2SBB8PXspKptgO7KtP0L/QK3vW1jLmDBemhqcCwzt7
 stDXGwdp+ouv9rb+rhBdD4IqVFGo7Sha4eNDI5QSXhCRAeFo9dzwRutczqW0tmUWbbIQuQ0Ar
 QF+trKRNyW+H7+CrH4o1Xjhcg+djHXj2OoQzb2K8BDzRedH/ps5KyXEHADBVsL1BKcF5jc+iJ
 +N0N7n8zJChhE9hUb97oA2FfhZwe7RZMmOx8OoUzLTJjOj3+UqxH34QphOM0LIeBY/V5gId8h
 atQdrN7J3VeiXrYs+z/ptuhWfF1vIlYWBwr+6UO2c7U0nVpq316sK+D8HJSUFgfQJhFaiGYmH
 Bgmd/f0pvTGaAASS7IOp4JvoZfx3vr50dvKe4eFEB7eJPqlnYv+voAzqfef2UgCKBDuDmqMCS
 OiIjvi+qr8eQhqnC

On Saturday 10 October 2015 00:26:33 Amitoj Kaur Chawla wrote:
> On Thu, Oct 8, 2015 at 1:07 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> > On Thursday 08 October 2015 08:23:10 Amitoj Kaur Chawla wrote:
> >> On Tue, Oct 6, 2015 at 1:15 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> >> > It really depends on what the driver is trying to do. In this case, it
> >> > waits for a device register to signal 'done', and it tries this five times
> >> > for a maximum of 50 microseconds, which is a relatively short period.
> >> >
> >> > Changing the maximum to 1000 means that it can now sleep for up to
> >> > 5 milliseconds instead, which is a noticeable time, especially if
> >> > it gets called frequently.
> >> >
> >> > The questions to answer here are:
> >> >
> >> > * Is it safe to call a sleeping function from this point at all?
> >> >   Look for other sleeping functions (proves that it is allowed to
> >> >   sleep) and for spinlocks (if a lock is held, you may not sleep)
> >> >   in this function.
> >> >
> >>
> >> There aren't any other sleeping functions in this function. However,
> >> udelay() has been used one more time in a loop.
> >
> > udelay() is not a sleeping function, so that doesn't count here.
> >
> > Try to look further out if you can't find a sleeping function or a spinlock
> > here, scanning the callers of this function and everything they call for
> > common sleeping functions like kmalloc(..., GFP_KERNEL), mutex_lock() or
> > msleep().
> 
> kmalloc(..., GFP_ATOMIC) is being called in the function. Callers of
> this function aren't calling these sleeping functions.

Ah, interesting. Using kmalloc(..., GFP_ATOMIC) is usually a sign that the
function is called in atomic context and is not allowed to sleep. However
based on what you write below, I suspect that is actually a mistake
and it should use GFP_KERNEL instead, because GFP_ATOMIC allocations
are much more likely to fail.

> >> > * How often do you expect the function to get called? Once per data
> >> >   packet means it's not ok to sleep long, once an hour would mean it's
> >> >   clearly ok.
> >> >
> >> > * Are there other calls in this function that take longer than a
> >> >   millisecond?
> >>
> >> How can I find out these 2 things? Only udelay() is the sleeping function.
> >
> > Try understanding what the functions actually do by looking at the call
> > chain for the first one, it should be fairly easy in this case.
> >
> > For the second one, look for functions that get called from this one,
> > if any of them contains a mdelay() or msleep(), or a loop around
> > udelay(), try guessing how long that can take.
> 
> The function is calling msleep(20) and has a loop around it, repeating
> hundred times so that means a couple of milliseconds delay, right?

This means the function can sleep up to 2 seconds, which is basically
an eternity from a driver's perspective, so adding a few shorter sleep
periods is certainly not harmful.

> Is usleep_range() only used for short delays and msleep() for the longer
> ones?

Yes. There are other differences, but a main one is that msleep() can
not sleep less than a millisecond, while usleep_range() can sleep much
shorter periods.

	Arnd

