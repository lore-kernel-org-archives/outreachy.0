X-GM-THRID: 6664981263437266944
X-Received: by 2002:aa7:c6c9:: with SMTP id b9mr5425736eds.7.1552030085119;
        Thu, 07 Mar 2019 23:28:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:355a:: with SMTP id s26ls1210207eja.0.gmail; Thu, 07
 Mar 2019 23:28:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqzZWq12LR0CasZrCaPh4K9DIc0qpR0744QDDBs/xKulkhsPj4K9iKoNGgSFSwlkWHvy2Hmp
X-Received: by 2002:a17:906:4312:: with SMTP id j18mr2025379ejm.12.1552030084200;
        Thu, 07 Mar 2019 23:28:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552030084; cv=none;
        d=google.com; s=arc-20160816;
        b=A6yZLZsmcJFGgk59+6T25LyS6CHDEB/APoHnlXYWt19ecBKbYxF7zbe40Lhl5+ZgzG
         wK3Zc5xgyDj1aAAE3icNNvi2QjRCpIWHKAxjOV33Kb3H4fuer6LwgTahQ+kjNSz1EggT
         6QlZBvEa4Hw2ZCIfFBKLXcZ0sc94ZdQBmMhcIKbAYf7/L5jgd/SnFZceC2IRqjGv27wR
         BJdpl5Pw+ZJBUX0TGYlQ5V8M67VoLp1auVIH4a1GJ2u9DBeq6BF3QWi24NSLhX9dj1bW
         3Ms50g2+aNgGowdEWivKynYp/IOfB/FqVe/rsOJ3Wyowj9QodHBSgHGf/s75sZbdWkqV
         ypZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=PIRdbdNimrWdq4hqFntU38SCP33qt/rcle10rAYxCQc=;
        b=sSunFZsOXZWCqRmSKK55Ro/7oJom2DCBgCKwQ5UlEaTM6VF0SoKFj5bwpDT/H6yn97
         7d8J14n0aNydEkMyqnPdxjvlaug4USTWUFYNzCxOD/rtd+q/Bmr1vEZlBoxCZkyqU/dx
         CTujc04Gnb8bJSxEHkcG+sSMwlsxXDOOXiLERp3RgjDsy0k7eZQNKqRifAt8SBL8PYvJ
         31L5MgBqpjF4i8WjuYFk3tpJ8xx/b3bz/j5iKWpMlWd7MxjKUCvb6zl6x3tCWMqHfka7
         4s7nmnbL7a85sd8mBSffMw6+G1NHbSSG4kefBul9lcx62fGEKr02UoqICe39smrDoB+W
         sLVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q1si274135edd.5.2019.03.07.23.28.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 23:28:04 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,455,1544482800"; 
   d="scan'208";a="372450157"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2019 08:28:03 +0100
Date: Fri, 8 Mar 2019 08:28:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v4 2/2] staging: fbtft: convert
 a macro to a function.
In-Reply-To: <CAOMPgjgKXCwp80uTW2P7W0kbUYwRKpM6N3QKXnYERM_LxM5Bsw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903080827240.5073@hadrien>
References: <20190306111512.GA11718@bhagyashri-Lenovo-G570> <20190307193050.GA16807@kroah.com> <CAOMPgjgKXCwp80uTW2P7W0kbUYwRKpM6N3QKXnYERM_LxM5Bsw@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1396643403-1552030083=:5073"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1396643403-1552030083=:5073
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 8 Mar 2019, Bhagyashri Dighole wrote:

>
>
> On Fri, Mar 8, 2019 at 1:00 AM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
>       On Wed, Mar 06, 2019 at 04:45:12PM +0530, Bhagyashri Dighole
>       wrote:
>       > Convert a macro to an inline function to improve type safety
>       and make
>       > the code simpler.
>       >
>       > Signed-off-by: Bhagyashri Dighole
>       <digholebhagyashri@gmail.com>
>       > ---
>       > Changes in v4:
>       >   -- Modify log messages.
>       >
>       > Changes in v3:
>       >   -- Change the subject line according to log messages.
>       >   -- Remove extra spaces.
>       >
>       > Changes in v2:
>       >   -- Make the converion from macro to inline function
>       >
>       >  drivers/staging/fbtft/fb_watterott.c | 9 +++++----
>       >  1 file changed, 5 insertions(+), 4 deletions(-)
>       >
>       > diff --git a/drivers/staging/fbtft/fb_watterott.c
>       b/drivers/staging/fbtft/fb_watterott.c
>       > index 502d67f..40e5427 100644
>       > --- a/drivers/staging/fbtft/fb_watterott.c
>       > +++ b/drivers/staging/fbtft/fb_watterott.c
>       > @@ -90,9 +90,10 @@ static int write_vmem(struct fbtft_par
>       *par, size_t offset, size_t len)
>       >       return 0;
>       >  }
>       > 
>       > -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
>       > -                        (((c) & 000700) >> 6) |\
>       > -                        (((c) & 0x0018) >> 3))
>       > +inline int rgb565_to_rgb332(u16 c)
>       > +{
>       > +     return ((c & 0xE000) >> 8)| ((c & 000700) >> 6)| ((c &
>       0x0018) >> 3);
>
>       Odd placement of '|' right?  checkpatch.pl didn't complain about
>       this?
>
>
> Yes, checkpatch.pl complain about it, but as per the suggestion i got,
> I need to skip one space because line is about to reach 80 characters.

A newline would be fine, if needed.

julia

>
>       Please put a space on both sides of that operator.
>
>       thanks,
>
>       greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAOMPgjgKXCwp80uTW2P7W0k
> bUYwRKpM6N3QKXnYERM_LxM5Bsw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1396643403-1552030083=:5073--

