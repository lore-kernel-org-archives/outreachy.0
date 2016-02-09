X-GM-THRID: 6249367928124211200
X-Received: by 10.28.6.14 with SMTP id 14mr903374wmg.6.1455057342424;
        Tue, 09 Feb 2016 14:35:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.133.74 with SMTP id h71ls27239wmd.47.gmail; Tue, 09 Feb
 2016 14:35:41 -0800 (PST)
X-Received: by 10.194.178.129 with SMTP id cy1mr4382545wjc.2.1455057341940;
        Tue, 09 Feb 2016 14:35:41 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e130si457618wme.2.2016.02.09.14.35.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 14:35:41 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,423,1449529200"; 
   d="scan'208";a="202370138"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 23:35:41 +0100
Date: Tue, 9 Feb 2016 23:35:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: Use kmalloc_array
 instead of kmalloc
In-Reply-To: <37a3f0ea-26e5-4d78-8730-81b7ed756644@googlegroups.com>
Message-ID: <alpine.DEB.2.02.1602092334080.2066@localhost6.localdomain6>
References: <20160210013122.GA12148@janani-Inspiron-3521> <alpine.DEB.2.02.1602092300180.2066@localhost6.localdomain6> <37a3f0ea-26e5-4d78-8730-81b7ed756644@googlegroups.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-130159121-1455057342=:2066"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-130159121-1455057342=:2066
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 9 Feb 2016, Janani Ravichandran wrote:

> 
> 
> On Tuesday, 9 February 2016 17:01:18 UTC-5, Julia Lawall wrote:
> 
> 
>       On Tue, 9 Feb 2016, Janani Ravichandran wrote:
> 
>       > Use kmalloc_array instead of kmalloc for arrays. Coccinelle
>       patch used:
>       >
>       > @@
>       > expression E, F;
>       > constant FLAG;
>       > @@
>       >
>       > - kmalloc(E*F, FLAG)
>       > + kmalloc_array(E, F, FLAG)
> 
>       Actually, your patch doesn't do exactly this.  Your patch
>       (correctly) has
>       E and F switched in the call to kmalloc_array.
> 
> I actually used the semantic patch to find instances where the conversion
> could be applied,
> then looked at the declaration of kmalloc_array to determine the correct
> order of
> arguments and did the change manually to make sure the number of elements
> was the
> first argument and the size of the element was the second argument.
> 
> Please let me know if I should change anything here. Thank you!

The best solution would be to put:

- kmalloc(sizeof(T)*F, FLAG)
+ kmalloc_array(F, sizeof(T), FLAG)

where T is declared as a type metavariable.  This way one can see 
immediately that you have thought about the order in which to put the 
arguments.

julia

> 
> Janani
> 
>       >
>       > Signed-off-by: Janani Ravichandran <janani....@gmail.com>
>       > ---
>       > Changes since v1:
>       >  * Corrected an error in commit message.
> 
>       "an error" is not very explicit.
> 
>       julia
> 
>       >  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++--
>       >  1 file changed, 2 insertions(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>       b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>       > index 28ad63a..fb344d1 100644
>       > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>       > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>       > @@ -601,8 +601,8 @@ static void RxReorderIndicatePacket(struct
>       ieee80211_device *ieee,
>       >          bool                        bMatchWinStart = false,
>       bPktInBuf = false;
>       >          IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is
>       %d,pTS->RxIndicateSeq is %d, WinSize is
>       %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize);
>       >  
>       > -        prxbIndicateArray = kmalloc(sizeof(struct
>       ieee80211_rxb *) *
>       > -                        REORDER_WIN_SIZE, GFP_KERNEL);
>       > +        prxbIndicateArray = kmalloc_array(RECORDER_WIN_SIZE,
>       > +                        sizeof(struct ieee80211_rxb *),
>       GFP_KERNEL);
>       >          if (!prxbIndicateArray)
>       >                  return;
>       >  
>       > --
>       > 2.5.0
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20160210013122.GA12148%4
>       0janani-Inspiron-3521.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/37a3f0ea-26e5-4d78-8730-
> 81b7ed756644%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-130159121-1455057342=:2066--

