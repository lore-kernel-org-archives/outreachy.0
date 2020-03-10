X-GM-THRID: 6802694026822680576
X-Received: by 2002:a2e:3011:: with SMTP id w17mr229672ljw.124.1583879329213;
        Tue, 10 Mar 2020 15:28:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9b59:: with SMTP id o25ls2745393ljj.2.gmail; Tue, 10 Mar
 2020 15:28:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs+ti9M7mFuQysD+8+f9adQBP5ZPJDTD1E4YnQUtY+aPv/8yC/TAGMy+SMU7qOtatcab55m
X-Received: by 2002:a2e:8e77:: with SMTP id t23mr206829ljk.221.1583879327723;
        Tue, 10 Mar 2020 15:28:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583879327; cv=none;
        d=google.com; s=arc-20160816;
        b=ebCa5hc8IFlto9WYFrWUrcTpRgg2B5eq4R5AjVh9+buI4yPkP0ey7WvlDFUPCfTENv
         AxC2JBALxTVM66e9bs/7CFV/A3mhmwsa5iMQRVhzUeyZLkcxxrMlDgQDF9YDIHuZmESM
         2vYtsQj5alyss3Kd4AosGURAdGJQcggMi0ljJi/UR+gc0XOmZEqf0E6UyBNRvJjfkc8b
         p/AcFLAUn2XwNi9fDZrMdQhsGHw6UTRkcfakMaYFV4MQYePmpbaKoJhgJiRFSTDhLQ8k
         yEZyJmN29EvkCPUA0nOXTJfeAAkXA+hMeBxTMBHDCygTOlKnFTUM8h9ityj7bKzEj0H/
         L0Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/Iwu4N0cTT8hSqoMtkFkOmcrmNqJEmNEwIpq5QApQAo=;
        b=Dc27HHwDIXvVaIUy+oH/p9jTEBN7GRUt0fvQsU7hO2rnK5ovPYw+Gh0BhBJrTqOg4R
         FD/h+kkGlRJY3Vl11KF04JVm6IL8k/1/bYn6Nx+ggFADbQ0xHH+HUr9+sTIhyzIDiOmk
         hfjOOA5cqWHYLQJuaZ2/PfuBeH9F1uw5yfMpvdLWy0W3wWMmtPu6McsOOCHVzYzNou7P
         E7NgtfJ5jjl1uRg81wBHXBkvyC+G8IJXMWbQQ4oHVNqxlqC7s6rRXZaVo+DAgLveOYY/
         wZd11PzttFd5kU069wRwpsXOzxZ9ps2cCG6iv2oAbfUpvRUkwRcmTxX/T/23Gxj1/w+W
         aSHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=koRc+WUV;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id r6si7977ljk.1.2020.03.10.15.28.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 15:28:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=koRc+WUV;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x443.google.com with SMTP id a25so108997wrd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 15:28:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/Iwu4N0cTT8hSqoMtkFkOmcrmNqJEmNEwIpq5QApQAo=;
        b=koRc+WUVC9Ea7j5F700+7Dv/AeFadrI4dZ3hBbE0oRVUOp4vtgifLqrb+hEvWHXUyP
         486Vp22kuN8gq+gzR1Jkk8KOt7rHQWq9x/0P+UhQvgXqxtE6iOy9UGxn5XpXsZ7PmPGi
         OHAd3UEtJ5VBF8uWPCYeoBhg7yML97VMimHD0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/Iwu4N0cTT8hSqoMtkFkOmcrmNqJEmNEwIpq5QApQAo=;
        b=f5+G2Ysnlnk8/s5Zr502bg3pnsmmScKIOIlgH+/nR7oSy89XCNG7AbZp13/XhtMHwi
         oGVbzAVr6BiOgq4UXvDfF5u/tT65mESVbg0k8l8qxW8dnOeIJWRIRsszgmxJIgLOuVJF
         OoMjQJ7OkJqb/jYx5x5JY1JDbEK2LYEIZbEA/qO7EoK8BbVHVeloowLzIBG6RsnDfeJ/
         mTrO4s8s/vosjD5mB5G9gixoy2MgCRPmT7d2brGePfovB5RyeqXRr58XDkHfzSZ2zZB8
         HSxF6oLASbmuCVJdB34lbt6HHwDVNP+PeCff9H2JSRbMJ4jsI8XeEbLfOpB9XNRgT4MT
         gcVw==
X-Gm-Message-State: ANhLgQ2UFScfGhlWjJMHd3EoKPhvsAE2ba9Lo93qGUjqDJkv0dKEIpd5
	wdrjDYBXJSeofbLpKVFU7yES+6TqFozicA==
X-Received: by 2002:a5d:5691:: with SMTP id f17mr84574wrv.74.1583879327143;
        Tue, 10 Mar 2020 15:28:47 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id s7sm1572739wro.10.2020.03.10.15.28.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 15:28:46 -0700 (PDT)
Date: Tue, 10 Mar 2020 23:28:44 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	julia.lawall@inria.fr
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: r8192U_wx: use
 netdev_warn() instead of printk()
Message-ID: <20200310222844.GC2925@supernova>
References: <20200310212658.4075-1-lu@pplo.net>
 <20200310224317.0ea0a4c3@elisabeth>
 <20200310221018.GB2925@supernova>
 <20200310231505.5dfcdbbf@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200310231505.5dfcdbbf@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 10, 2020 at 11:15:05PM +0100, Stefano Brivio wrote:
> On Tue, 10 Mar 2020 23:10:18 +0100
> Lourdes Pedrajas <lu@pplo.net> wrote:
> 
> > On Tue, Mar 10, 2020 at 10:43:17PM +0100, Stefano Brivio wrote:
> > > On Tue, 10 Mar 2020 22:26:58 +0100
> > > Lourdes Pedrajas <lu@pplo.net> wrote:
> > >   
> > > > printk() is deprecated, use netdev_warn() instead, which is a message printing
> > > > function for network devices, defined in include/linux/netdevice.h.
> > > > Issue found by checkpatch.
> > > > 
> > > > Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> > > > ---
> > > > Changes since v1:
> > > >  - Replace message printing function pr_warn with network devices
> > > >    specific, netdev_warn()
> > > > 
> > > >  drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
> > > > index 0118edb0b9ab..58c1a8da7a8d 100644
> > > > --- a/drivers/staging/rtl8192u/r8192U_wx.c
> > > > +++ b/drivers/staging/rtl8192u/r8192U_wx.c
> > > > @@ -588,7 +588,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
> > > >  				hwkey);                 /* KeyContent */
> > > >  
> > > >  		} else {
> > > > -			printk("wrong type in WEP, not WEP40 and WEP104\n");
> > > > +			netdev_warn("wrong type in WEP, not WEP40 and WEP104\n");  
> > > 
> > > Err, wait, did you try to compile this? :)
> > > 
> > > The idea of netdev_warn() is that it prefixes the error message by a
> > > reference to the specific network device, so that one knows what device
> > > is actually giving the problem (let's say you have two of these
> > > adapters on a system, or that you have virtual interfaces, etc.).
> > > 
> > > But for that to happen, it needs a pointer to the appropriate struct
> > > net_device.
> > > 
> > > -- 
> > > Stefano
> > >   
> > Stefano, Julia: oh my bad, I did the worst error: break the compilation! :(
> > It won't happen again!
> > 
> > Will search wich function is correct here.
> 
> The one you already found, that part was correct. :)
> 
> -- 
> Stefano
> 
Indeed, also found dev_warn and dev_printk functions, but they are
similar, they expect a pointer to a network device. Also thank for your
explanation, I re-read those functions and now makes me sense.

Lourdes

