X-GM-THRID: 6251650339458514944
X-Received: by 10.194.24.233 with SMTP id x9mr157784wjf.0.1455708654901;
        Wed, 17 Feb 2016 03:30:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.82.132 with SMTP id g126ls254412lfb.92.gmail; Wed, 17 Feb
 2016 03:30:53 -0800 (PST)
X-Received: by 10.25.136.198 with SMTP id k189mr156678lfd.5.1455708653215;
        Wed, 17 Feb 2016 03:30:53 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c143si112390wmd.1.2016.02.17.03.30.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 03:30:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,460,1449529200"; 
   d="scan'208";a="203483111"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2016 12:30:51 +0100
Date: Wed, 17 Feb 2016 06:30:49 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
cc: Laura Garcia Liebana <nevola@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/7] staging: netlogic: Remove
 blank spaces after a cast
In-Reply-To: <20160217053240.GC4073@sudip-pc>
Message-ID: <alpine.DEB.2.10.1602170629580.2664@hadrien>
References: <cover.1455661648.git.nevola@gmail.com> <d3ee83a0b5ee4adb0b7ba37995c1809284532197.1455661648.git.nevola@gmail.com> <20160217053240.GC4073@sudip-pc>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 17 Feb 2016, Sudip Mukherjee wrote:

> On Tue, Feb 16, 2016 at 11:36:31PM +0100, Laura Garcia Liebana wrote:
> > Remove uneeded blank spaces after a cast. Checkpatch found these issues.
> >
> > Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> > ---
> > v2: Include parentheses for pointers, as Julia suggested
> >
> >  drivers/staging/netlogic/xlr_net.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
> > index 59fbaba..b89e3cb 100644
> > --- a/drivers/staging/netlogic/xlr_net.c
> > +++ b/drivers/staging/netlogic/xlr_net.c
> > @@ -130,13 +130,13 @@ static void xlr_net_fmn_handler(int bkt, int src_stnid, int size, int code,
> >  	struct xlr_net_priv *priv;
> >  	u32 port, length;
> >  	unsigned char *addr;
> > -	struct xlr_adapter *adapter = (struct xlr_adapter *) arg;
> > +	struct xlr_adapter *adapter = (struct xlr_adapter *)arg;
> >
> >  	length = (msg->msg0 >> 40) & 0x3fff;
> >  	if (length == 0) {
> >  		addr = bus_to_virt(msg->msg0 & 0xffffffffffULL);
> >  		addr = addr - MAC_SKB_BACK_PTR_SIZE;
> > -		skb = (struct sk_buff *) *(unsigned long *)addr;
> > +		skb = (struct sk_buff *)(*)(unsigned long *)addr;
>
> I think a better choice might have been:
> 	skb = (struct sk_buff *)(*(unsigned long *)addr);

Yes, this is what I had in mind.  I'm not sure that the current code would
compile.  It looks sort of like a function pointer declaration...

julia

>
> regards
> sudip
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160217053240.GC4073%40sudip-pc.
> For more options, visit https://groups.google.com/d/optout.
>

