X-GM-THRID: 3247770173440
X-Received: by 10.194.86.1 with SMTP id l1mr2397233wjz.0.1424807479889;
        Tue, 24 Feb 2015 11:51:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.91.44 with SMTP id cb12ls530084wib.27.canary; Tue, 24 Feb
 2015 11:51:19 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr2392711wjc.3.1424807479417;
        Tue, 24 Feb 2015 11:51:19 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ev8si959974wib.3.2015.02.24.11.51.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 24 Feb 2015 11:51:19 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,640,1418079600"; 
   d="scan'208";a="123232475"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2015 20:51:18 +0100
Date: Tue, 24 Feb 2015 20:51:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-2?Q?Ksenija_Stanojevi=E6?= <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/6] Staging: rtl8192u: Replace TRUE
 with true
In-Reply-To: <CAL7P5jL=N6g7joiJe901qSusygw5jyz6LnwXXkq6NdpzkiAa6w@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1502242050100.2049@localhost6.localdomain6>
References: <cover.1424798953.git.ksenija.stanojevic@gmail.com> <4ceaa6f20532b3112484ecaa074106d1c130c6c6.1424798953.git.ksenija.stanojevic@gmail.com> <alpine.DEB.2.02.1502242032591.2049@localhost6.localdomain6>
 <CAL7P5jL=N6g7joiJe901qSusygw5jyz6LnwXXkq6NdpzkiAa6w@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-345687386-1424807478=:2049"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-345687386-1424807478=:2049
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 24 Feb 2015, Ksenija Stanojević wrote:

> On Tue, Feb 24, 2015 at 8:33 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> -     if (priv->bDynamicTxLowPower == TRUE) {
> >> +     if (priv->bDynamicTxLowPower == true) {
> >
> > One could wonder if this could just be:
> >
> > if (priv->bDynamicTxLowPower) { ...
> >
> > To check this, you have to go find all of the initializations of this
> > field and check that 0 and 1 are the only possible values.
> >
> > julia
> >
> Field is of bool type so it's possible, but this is not the only place
> where such change could take place. Should i use a script?

You could do this with Coccinelle, but it is probably not the easiest 
Coccinelle project to start with.  For now, I think it could be useful to 
go around and look at the occurrences by hand, to see what the issues are.  
I would suggest to do one field at a time, so that the work is not 
overwhelming.

julia

> >>               if (priv->CustomerID == RT_CID_819x_Netcore)
> >>                       TxAGC = 0x22;
> >>               else
> >> @@ -275,7 +275,7 @@ void PHY_SetRF8256OFDMTxPower(struct net_device *dev, u8 powerlevel)
> >>                       priv->Pwr_Track = writeVal_tmp;
> >>               }
> >>
> >> -             if (priv->bDynamicTxHighPower == TRUE) {
> >> +             if (priv->bDynamicTxHighPower == true) {
> >>                       /*Add by Jacken 2008/03/06
> >>                        *Emily, 20080613. Set low tx power for both MCS and legacy OFDM
> >>                        */
> >> --
> >> 1.9.1
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4ceaa6f20532b3112484ecaa074106d1c130c6c6.1424798953.git.ksenija.stanojevic%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
> 
--8323328-345687386-1424807478=:2049--

