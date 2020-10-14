X-GM-THRID: 6883501515077582848
X-Received: by 2002:a37:9cd3:: with SMTP id f202mr5654108qke.479.1602693526949;
        Wed, 14 Oct 2020 09:38:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ad4:4721:: with SMTP id l1ls53929qvz.2.gmail; Wed, 14 Oct
 2020 09:38:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxnSt6nBmZTks9bZY+ZSIDK3gHdUWWngUS5Ufc/mLKOpLi3Q7tED6+5Tcqy0fyafv5HkouE
X-Received: by 2002:a05:6214:4af:: with SMTP id w15mr50771qvz.51.1602693525359;
        Wed, 14 Oct 2020 09:38:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602693525; cv=none;
        d=google.com; s=arc-20160816;
        b=vgDpcND7+wvdBV0EdoINUFeX9KR8XMf+dNSwO6Uc08fivY65cz1iNvJALmoxL9TBNM
         0zi7ehezIEG/JC2ZxkqtfENrg5DGkhGzKlg1NY4OUlNBzTXW6w+JPzZFWWiEsZBl4Wbm
         3KuJkcAC8NQY3PDaBi3ms0b+RQ8lVSR2jgntAOwHktxJIJ0of7h+NAias46mqGL4JlbV
         uf/2ciUooe7g+Nfen8gPnLzPxCPHXd+d+DEs22kCVkHC1pzIA2i+sbAjpb3QbLm7oHFU
         u/KJyHg4Wg6jPJKVlpZ36NMrD5JSNBosSmpmem+IffMehjCjAO1pN06kxsC8naFiX5ba
         Y5Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Tyy8t/lEWqbRk9GJb792eN6Sp1LF9Ab7/cLMcD8PPHM=;
        b=n9HJ2yRJLikubd9I6hTJH8ivAdFCQGk+MZ7HCrOMTdMAAco45Peu5lyIVoGfFLdnk3
         Zq8Hn7H6R3I+Jk4jkZMXI3Uy9MElLaVvp+azNBLaqJr5Tk8ShfsCAOyIcQHlt4PKK9Lu
         5/6aYJow3UjFqCMmPOM3k9y999DveKIBNyAluESV32iqBAaP4pVRrWtyYzDAVJ51C46B
         Ittl0OZwXa32mbaPEYmuHaHQXGbgaghbhp5wGeqafgd9vhmlvSBwXfxdgugDz5r9ZzZX
         eC24CuGEeBNmwfgj6NHTpcY5lcoVvIPS/4vLmiPJqs1zNbWH2ptGeBiRMC+OxAkmsEgi
         55bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WxuBo17e;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id v189si872qka.7.2020.10.14.09.38.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 09:38:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WxuBo17e;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id d23so2064448pll.7
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2020 09:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Tyy8t/lEWqbRk9GJb792eN6Sp1LF9Ab7/cLMcD8PPHM=;
        b=WxuBo17eYG8Mgcyg6rGQmfOkOri0DN6HEmZOtJuUaViSCO8N2iNTT9qy6I6l2EAgWN
         TlLETkNKrf9x3av/wWewBwQDf4DHGA0sd4dOXU5s0wvXSkvopQ40Za/jGHWhDkQ+jMTm
         zb1F7jU4w8BXAaFWFCBj+sSTpUCApKJHpCaQPXktuNIB7fbyt/P3q/vxgKh1FkMazvuk
         8MNm8Um/tQtoSrj4oqmGv1sSKb5JDeSklEOcLXL7k1phqyFiNHYvG4QFHzeX+GTV+eTy
         Dzs4xxhaqK6Hove8xOWHNID0FH4yawuEWlDfDHLZSTYDqQzqRw1dIEVU6bImGIwEcTL7
         MG6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Tyy8t/lEWqbRk9GJb792eN6Sp1LF9Ab7/cLMcD8PPHM=;
        b=f6zVh1gXDZJIngXexVjxV+TgP58Ekpz67BSKZTtzg0pmgiixhBro4gJ7bigLcb9bcc
         h6qZr1cMyu1ZmLx8HnlV9s5I5hTtTCm3+J0Nw+7iWO5yi23VFa15z7HwfmL1T9eOylsw
         kCbuKnpQFbx5pbmOQ/cmu3aagMEPejIZLQMnOe5DEd9xSkG4rdlcVFjNX3v+tBFkoo8f
         f2BxymuGU9nbEuBRUooCAkynUm68ddP5qU07JXdIw4ka+U2u5j0/um+ms9N3yV53rXP+
         vAei6KNwAKABwDtYwkbqDjJNmO4FdG/sCBFeSaaZ9gv+Bg+0ybwBP0VBunCbYXlQpoVJ
         n/RA==
X-Gm-Message-State: AOAM530IFHB9Q0XgxFY9vMUDker4vrkej9EbOAKO+H+TAxjj7fmLjK4Z
	Q4NKO72YQq5mv7luajXEjY4=
X-Received: by 2002:a17:90a:dc07:: with SMTP id i7mr62594pjv.111.1602693524505;
        Wed, 14 Oct 2020 09:38:44 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id e21sm116378pfl.22.2020.10.14.09.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 09:38:44 -0700 (PDT)
Date: Wed, 14 Oct 2020 22:08:38 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: rearrange lines
 exceeding 100 columns
Message-ID: <20201014163838.GA24058@ubuntu204>
References: <20201014154121.GA23584@ubuntu204>
 <alpine.DEB.2.22.394.2010141801041.2687@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2010141801041.2687@hadrien>

On Wed, Oct 14, 2020 at 06:01:39PM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 14 Oct 2020, Deepak R Varma wrote:
> 
> > Rearrange lines that are longer than 100 columns width. Issue reported
> > by chckpatch script.
> >
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> >
> > ---
> >
> >  drivers/staging/vt6655/device_main.c | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> > index 09ab6d6f2429..4fc90b111f9d 100644
> > --- a/drivers/staging/vt6655/device_main.c
> > +++ b/drivers/staging/vt6655/device_main.c
> > @@ -461,7 +461,10 @@ static bool device_init_rings(struct vnt_private *priv)
> >  		priv->opts.rx_descs0 * sizeof(struct vnt_rx_desc);
> >
> >  	priv->tx0_bufs = dma_alloc_coherent(&priv->pcid->dev,
> > -					    priv->opts.tx_descs[0] * PKT_BUF_SZ + priv->opts.tx_descs[1] * PKT_BUF_SZ + CB_BEACON_BUF_SIZE + CB_MAX_BUF_SIZE,
> > +					    priv->opts.tx_descs[0] * PKT_BUF_SZ +
> > +					    priv->opts.tx_descs[1] * PKT_BUF_SZ +
> > +					    CB_BEACON_BUF_SIZE +
> > +					    CB_MAX_BUF_SIZE,
> >  					    &priv->tx_bufs_dma0, GFP_ATOMIC);
> >  	if (!priv->tx0_bufs) {
> >  		dev_err(&priv->pcid->dev, "allocate buf dma memory failed\n");
> > @@ -1077,7 +1080,8 @@ static void vnt_interrupt_process(struct vnt_private *priv)
> >  			    priv->op_mode == NL80211_IFTYPE_ADHOC) &&
> >  			    priv->vif->bss_conf.enable_beacon) {
> >  				MACvOneShotTimer1MicroSec(priv,
> > -							  (priv->vif->bss_conf.beacon_int - MAKE_BEACON_RESERVED) << 10);
> > +							  (priv->vif->bss_conf.beacon_int -
> > +							   MAKE_BEACON_RESERVED) << 10);
> 
> Maybe it would make more sense to shorten the function name?
> 
Thank you Julia.
I do not think that will work. Even without the function name,
the line would still cross 100 columns if you try to fit it on a single
line. Also, shortening the function name would make it looks different
from rest of similar named functions.
Please suggest how would you do it?

> Also the {} are not needed.
> 
Agree if we can get the instruction on a single line. Else, I think it
is better to keep the {} to make it more readable.

Thank you.
Deepak.

> julia
> 
> 
> >  			}
> >
> >  			/* TODO: adhoc PS mode */
> > --
> > 2.25.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201014154121.GA23584%40ubuntu204.
> >

