X-GM-THRID: 6249638056866873344
X-Received: by 10.112.167.136 with SMTP id zo8mr4993823lbb.10.1455136563565;
        Wed, 10 Feb 2016 12:36:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.139.8 with SMTP id n8ls126788lfd.45.gmail; Wed, 10 Feb 2016
 12:36:02 -0800 (PST)
X-Received: by 10.112.137.102 with SMTP id qh6mr5212785lbb.9.1455136562952;
        Wed, 10 Feb 2016 12:36:02 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w197si192283wmw.3.2016.02.10.12.36.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 12:36:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,427,1449529200"; 
   d="scan'208";a="164248005"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 21:36:01 +0100
Date: Wed, 10 Feb 2016 21:36:01 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: RAKHI SHARMA <rakhish1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] drivers: staging: rtl8712: Use
 ether_addr_copy() over memcpy()
In-Reply-To: <CAMnyiXu=swBQdGVc+dQ6sCuZ37d7XWi6bh+8Q_cyfRug6VpJkw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602102134570.2075@localhost6.localdomain6>
References: <1455107239-16386-1-git-send-email-rakhish1994@gmail.com> <alpine.DEB.2.10.1602101402170.3493@hadrien> <CAMnyiXu=swBQdGVc+dQ6sCuZ37d7XWi6bh+8Q_cyfRug6VpJkw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-939813915-1455136562=:2075"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-939813915-1455136562=:2075
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Wed, 10 Feb 2016, RAKHI SHARMA wrote:

> 
> 
> On Wed, Feb 10, 2016 at 6:32 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> 
> 
>       On Wed, 10 Feb 2016, Rakhi Sharma wrote:
> 
>       > Waring is removed by using ether_addr_copy() over memcpy().
>       > WARNING: Prefer ether_addr_copy() over memcpy() if the
>       Ethernet addresses are
>       > __aligned(2)
> 
>       You need to show that the addresses concerned actually are
>       aligned.
> 
>       julia
> 
> Hi, Will you please give me a little hint how I do this?

Sorry, I meant to do that :)  There is a tool called pahole that you can 
use for this purpose.  You can also search through the git logs for 
ether_addr_copy to see how others have justified this change.

julia

>       > Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
>       > ---
>       >  drivers/staging/rtl8712/rtl871x_recv.c | 10 +++++-----
>       >  1 file changed, 5 insertions(+), 5 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8712/rtl871x_recv.c
>       b/drivers/staging/rtl8712/rtl871x_recv.c
>       > index 4ff5301..2d5231a 100644
>       > --- a/drivers/staging/rtl8712/rtl871x_recv.c
>       > +++ b/drivers/staging/rtl8712/rtl871x_recv.c
>       > @@ -358,11 +358,11 @@ static sint sta2sta_data_frame(struct
>       _adapter *adapter,
>       >                       sta_addr = pattrib->src;
>       >               }
>       >       } else if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
>       > -             memcpy(pattrib->dst, GetAddr1Ptr(ptr),
>       ETH_ALEN);
>       > -             memcpy(pattrib->src, GetAddr2Ptr(ptr),
>       ETH_ALEN);
>       > -             memcpy(pattrib->bssid, GetAddr3Ptr(ptr),
>       ETH_ALEN);
>       > -             memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
>       > -             memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
>       > +             ether_addr_copy(pattrib->dst, GetAddr1Ptr(ptr));
>       > +             ether_addr_copy(pattrib->src, GetAddr2Ptr(ptr));
>       > +             ether_addr_copy(pattrib->bssid,
>       GetAddr3Ptr(ptr));
>       > +             ether_addr_copy(pattrib->ra, pattrib->dst);
>       > +             ether_addr_copy(pattrib->ta, pattrib->src);
>       >               sta_addr = mybssid;
>       >       } else {
>       >               ret  = _FAIL;
>       > --
>       > 1.9.1
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1455107239-16386-1-git-s
> end-email-rakhish1994%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAMnyiXu%3DswBQdGVc%2BdQ
> 6sCuZ37d7XWi6bh%2B8Q_cyfRug6VpJkw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-939813915-1455136562=:2075--

