X-GM-THRID: 6339162656111329280
X-Received: by 10.31.120.78 with SMTP id t75mr7565970vkc.43.1476023801488;
        Sun, 09 Oct 2016 07:36:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.14.207 with SMTP id 198ls2743139ite.7.canary; Sun, 09 Oct
 2016 07:36:37 -0700 (PDT)
X-Received: by 10.36.5.209 with SMTP id 200mr587252itl.5.1476023797019;
        Sun, 09 Oct 2016 07:36:37 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p131si2469348vkf.1.2016.10.09.07.36.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:36:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,466,1473112800"; 
   d="scan'208";a="240006863"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Oct 2016 16:36:35 +0200
Date: Sun, 9 Oct 2016 16:36:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Bhumika Goyal <bhumirks@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: rtl8192e: Remove ternary
 operator
In-Reply-To: <20161009142656.GA27065@kroah.com>
Message-ID: <alpine.DEB.2.10.1610091635130.3462@hadrien>
References: <1475951297-10364-1-git-send-email-bhumirks@gmail.com> <20161009142656.GA27065@kroah.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 9 Oct 2016, Greg KH wrote:

> On Sat, Oct 08, 2016 at 11:58:17PM +0530, Bhumika Goyal wrote:
> > Relational and logical operators evaluate to either true or false.
> > Explicit conversion is not needed so remove the ternary operator.
> > Done using coccinelle:
> >
> > @r@
> > expression A,B;
> > symbol true,false;
> > binary operator b = {==,!=,&&,||,>=,<=,>,<};
> > @@
> > - (A b B) ? true : false
> > + A b B
> >
> > Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> > ---
> >  drivers/staging/rtl8192e/rtl819x_HTProc.c | 12 ++++--------
> >  drivers/staging/rtl8192e/rtllib.h         |  2 +-
> >  2 files changed, 5 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> > index dd9c0c8..8cd51a9 100644
> > --- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
> > +++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> > @@ -558,19 +558,15 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
> >  #endif
> >  	HTSetConnectBwMode(ieee, (enum ht_channel_width)(pPeerHTCap->ChlWidth),
> >  			  (enum ht_extchnl_offset)(pPeerHTInfo->ExtChlOffset));
> > -	pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1) ?
> > -				 true : false);
> > +	pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);
>
> Ugh, I _hate_ ? : statements.
>
> Just write the thing out, is this easy to read as is?
>
> >  	pHTInfo->bCurShortGI20MHz = ((pHTInfo->bRegShortGI20MHz) ?
> > -				    ((pPeerHTCap->ShortGI20Mhz == 1) ?
> > -				    true : false) : false);
> > +				    (pPeerHTCap->ShortGI20Mhz == 1) : false);
> >  	pHTInfo->bCurShortGI40MHz = ((pHTInfo->bRegShortGI40MHz) ?
> > -				     ((pPeerHTCap->ShortGI40Mhz == 1) ?
> > -				     true : false) : false);
> > +				     (pPeerHTCap->ShortGI40Mhz == 1) : false);
>
> Is this?  Kernel code is meant to be read by humans first, and the
> compiler second.  None of this will be any different if you write out a
> if () statement.  Please just do that instead.

Wouldn't && or || be nicer if possible?  If the == 1 are actually testing
booleans, it could be quite concise.

julia

>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161009142656.GA27065%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
>

