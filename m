X-GM-THRID: 6670961947938127872
X-Received: by 2002:a17:906:c50:: with SMTP id t16mr5563536ejf.97.1553265090253;
        Fri, 22 Mar 2019 07:31:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9fad:: with SMTP id c42ls2426410edf.1.gmail; Fri, 22 Mar
 2019 07:31:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxRlxrLjxFX/mAp6WG0FphbDGlZDbVwfoZNg0/UmAW02NDVslYodWmCtNKTfIDuNp2siS6q
X-Received: by 2002:a50:912b:: with SMTP id e40mr6671293eda.44.1553265089418;
        Fri, 22 Mar 2019 07:31:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553265089; cv=none;
        d=google.com; s=arc-20160816;
        b=rBY6MPkIhJBuihjKADQFb0/cfvjI6hp+rpyWYSSYCKxtgWm12E047nNNUX2BEcDuir
         Oim7U5RFQW7gIYXGAK9dEaop7LFAn5XDlxJjbfgIlax5rYu1dxNoj7t5zgIDZ+jKsg0l
         2Rd2/qHLP9nEdoxsJXvOOCWnK3bWaxpG2qjBwrjZt4+4z6NhwRR7A+Oiay1hjoW7qkXJ
         VPvl7Smq2iHS1ewqWy8vW4QbjdwOB/dtuSs4t/BI4DDqqmR1CxuNUy+zaAfbKB+YW0fw
         EReDJlKGsZ9C0Hbbxb4ZyNQUjX3zV/diyhtbnqcolev16ibRVsBvEE0e4zo5ox0PrP1C
         PDJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Odv+H44CIvG3ZN6EBzx79MJ3XlNCTSDZtyrwHTU0WjM=;
        b=ZKPaoKoAgXqOgKleFTRlW4oAj3+6CZjMW82uf7HA4fluVxgbHxyoLXNTIt9XcORvIM
         i4Lukkb+x/IBmyIifMg5a+YBi7D7/6cTkZzStzWJsYq1Qf+H+L/RohOiS1W/w7xj9xHm
         m3L57rTo1ptvkivvl4N3shwJEhs8x1vivAjxcKBpENPiA2KMG5DliQGIUEFQDRfFi7zu
         +5cPu7TMZeE19F7eCAGt6B+Pz8toA9kkzOC01104yup+tpiQTiLvBAC8d74b5SptK0yo
         qRE2Ce8FoXTjU7caofFhsCuIPi9XY0awaq4kXtLX0M6VHrBB+yN63+yB1luLLRhRBubd
         dVCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r10si430840eda.4.2019.03.22.07.31.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 07:31:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300408322"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2019 15:31:28 +0100
Date: Fri, 22 Mar 2019 15:31:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Vatsala Narang <vatsalanarang@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 1/3] staging: vt6655: line over
 80 characters
In-Reply-To: <20190322141421.GA25959@kroah.com>
Message-ID: <alpine.DEB.2.20.1903221530060.27473@hadrien>
References: <20190321213906.15851-1-vatsalanarang@gmail.com> <20190322141421.GA25959@kroah.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Mar 2019, Greg KH wrote:

> On Fri, Mar 22, 2019 at 03:09:06AM +0530, Vatsala Narang wrote:
> > Move function arguments thet go over 80 characters a line limit to a new
> > line to get rid of checkpatch warning.
> >
> > Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> > ---
> >  drivers/staging/vt6655/rf.c | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> > index fd09b9771cf5..8d1caa4b19e8 100644
> > --- a/drivers/staging/vt6655/rf.c
> > +++ b/drivers/staging/vt6655/rf.c
> > @@ -737,7 +737,8 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
> >  		return false;
> >  	}
> >
> > -	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD(bySleepCount, byInitCount));
> > +	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD
> > +			(bySleepCount, byInitCount));
>
> This should go one character to the left, to line up with the "priv"
> above it.

Actually, this one breaks up a function (or macro) call and its arguments,
It would be better to put the newline after the previous , instead.  The
indentation looks ok, in the patch at least.

julia

>
> >
> >  	return true;
> >  }
> > @@ -933,7 +934,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
> >  	 * register
> >  	 * Channel Index 1~14
> >  	 */
> > -	if ((byOldChannel <= CB_MAX_CHANNEL_24G) && (byNewChannel > CB_MAX_CHANNEL_24G)) {
> > +	if ((byOldChannel <= CB_MAX_CHANNEL_24G) &&
> > +	    (byNewChannel > CB_MAX_CHANNEL_24G)) {
>
> This is good.
>
> >  		/* Change from 2.4G to 5G [Reg] */
> >  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[2]);
> >  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[3]);
> > @@ -942,7 +944,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
> >  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[10]);
> >  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[12]);
> >  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[15]);
> > -	} else if ((byOldChannel > CB_MAX_CHANNEL_24G) && (byNewChannel <= CB_MAX_CHANNEL_24G)) {
> > +	} else if ((byOldChannel > CB_MAX_CHANNEL_24G) &&
> > +			(byNewChannel <= CB_MAX_CHANNEL_24G)) {
>
> This needs to line up like the other one does.
>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190322141421.GA25959%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
>

