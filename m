X-GM-THRID: 6802694026822680576
X-Received: by 2002:a5d:5290:: with SMTP id c16mr28122618wrv.235.1583878222893;
        Tue, 10 Mar 2020 15:10:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:548b:: with SMTP id h11ls2171794wrv.9.gmail; Tue, 10 Mar
 2020 15:10:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsw4KcypPthD0zVNXXL0TzxlZ3HDdNIbM0yF/oCn5gWu7pJhhcpXm04aIU/RjoyXvHR01pL
X-Received: by 2002:adf:f710:: with SMTP id r16mr15753wrp.226.1583878221532;
        Tue, 10 Mar 2020 15:10:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583878221; cv=none;
        d=google.com; s=arc-20160816;
        b=kGA5a1RyScE6poMAdoMdAV9ArGkKYvjeNW2or2gjM72PfyvYsORjS8fk+CRza31mMu
         BPzm1m7qpL0eoJvZ6o9SNBimKh3SbFGyxc3M3eejAcVJ6RTHKOcRDhrvW9GLkQ0HFUmO
         RQmh2zhqMZ5jc0PexTWew98IWrEx2dKUxrF5Ig7HtvROrNDLtQcGciKXYM4ulRcYtPg4
         PzpDk94nfO+mzI7nB+zB5VvInVxp55mnaljUjxPKEnzPOpr6dR50oPuz4A/oefnNeU8F
         dZMBAi/crxBRFcnWAU63ODzEnIih0LLZyUYbQaYP+IcgXJFsi5veUEk9OWRTwjXs2G/v
         kXDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qnv+UaZ7GGjOXzdLnNqrxtyG396Qa4/fq295p/qdlmE=;
        b=mcxXNpx3jU7r/zQKOTcVNaky8xeKK41TCM0dga76CxksKrTNesRj9/Yx/lOPz4s6sA
         eu6bw69GbXZN3vWy7Zv7ZFvn+D4GJdeeXuZKf2RBBVry4L8glGzIvRPMDm2nUN5b8IJM
         5smt76A8ZHZK1nTtDpih8JS/bw+4QTVX/voYyfTMIa8XRIpUXO+UvvYdp62eIGUPtaGv
         EjlaFf1pxG5LrZM5TBZS/EAabmXh8pMV7bVRO8/y3ig4vCTE3bzcH/lUo5nHet3yRtw+
         x3SpNQBNHdz3GoNDA9lmI7UxxriCvYGGhJg4LBL+fGgBaSYRY6W9Ihh7iCEydmF3AxB2
         0wTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=JrJAN18x;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id n3si8075wrs.3.2020.03.10.15.10.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 15:10:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=JrJAN18x;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x343.google.com with SMTP id f7so3134600wml.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 15:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qnv+UaZ7GGjOXzdLnNqrxtyG396Qa4/fq295p/qdlmE=;
        b=JrJAN18xQ0f6Cq3XzPz9a1xBAfEiS+1oC676ZcfZELzMJtyACyLfCocMAWhjEec55t
         IynAfLd43XhM8VtIGZQl1Wle2ZtB2jRkZJYRZYBtpjUOMWV22XGpGBXCn4sZkBlCJ5Wa
         On61gaI17jXN+0k+Cx+teoL9RXBuywkmAv8qA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qnv+UaZ7GGjOXzdLnNqrxtyG396Qa4/fq295p/qdlmE=;
        b=Rag9FOzc4v9N1VWc7ihJyGtMzj1RGxqv9EUVecxs5fDjzVQ3NyaeXT0Yy3z7d2gA+2
         LE08N6S0lDSLC5MiPJgZabd+0CDJh2rKJICNYT/3kmYVNQDvZzKu/lKlHWEMT38+yqmP
         31DJgVeYg7fi3rfeKxVZZAjafBKAfe6vmL3iijE9YJwx6zgJvTFbHKSg9gmTnPbxqU9I
         rWFsquUiTuelkbxCejxC91zbwd3uGpOCp5wTFq6fQX0ZlqtPf1LbRehobYd42mc3hVbW
         ljtTZUAd+D4rFF0hH2WwrcnCjoCFTu1O5q87W+pzuNzhQ+jD1p0114vwm3DVZdDbpoJ3
         /QQQ==
X-Gm-Message-State: ANhLgQ07zbIBnE5X7Qxa/oZKr35IQ727cZa37FUT9CLedjNPOqY/SMMw
	PxLz3P64RC7RMrH0ibynYdw8IA==
X-Received: by 2002:a1c:6a07:: with SMTP id f7mr3997088wmc.38.1583878221169;
        Tue, 10 Mar 2020 15:10:21 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id z6sm12183274wru.15.2020.03.10.15.10.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 15:10:20 -0700 (PDT)
Date: Tue, 10 Mar 2020 23:10:18 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	julia.lawall@inria.fr
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: r8192U_wx: use
 netdev_warn() instead of printk()
Message-ID: <20200310221018.GB2925@supernova>
References: <20200310212658.4075-1-lu@pplo.net>
 <20200310224317.0ea0a4c3@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200310224317.0ea0a4c3@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 10, 2020 at 10:43:17PM +0100, Stefano Brivio wrote:
> On Tue, 10 Mar 2020 22:26:58 +0100
> Lourdes Pedrajas <lu@pplo.net> wrote:
> 
> > printk() is deprecated, use netdev_warn() instead, which is a message printing
> > function for network devices, defined in include/linux/netdevice.h.
> > Issue found by checkpatch.
> > 
> > Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> > ---
> > Changes since v1:
> >  - Replace message printing function pr_warn with network devices
> >    specific, netdev_warn()
> > 
> >  drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
> > index 0118edb0b9ab..58c1a8da7a8d 100644
> > --- a/drivers/staging/rtl8192u/r8192U_wx.c
> > +++ b/drivers/staging/rtl8192u/r8192U_wx.c
> > @@ -588,7 +588,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
> >  				hwkey);                 /* KeyContent */
> >  
> >  		} else {
> > -			printk("wrong type in WEP, not WEP40 and WEP104\n");
> > +			netdev_warn("wrong type in WEP, not WEP40 and WEP104\n");
> 
> Err, wait, did you try to compile this? :)
> 
> The idea of netdev_warn() is that it prefixes the error message by a
> reference to the specific network device, so that one knows what device
> is actually giving the problem (let's say you have two of these
> adapters on a system, or that you have virtual interfaces, etc.).
> 
> But for that to happen, it needs a pointer to the appropriate struct
> net_device.
> 
> -- 
> Stefano
> 
Stefano, Julia: oh my bad, I did the worst error: break the compilation! :(
It won't happen again!

Will search wich function is correct here.

Lourdes

