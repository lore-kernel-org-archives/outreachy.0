X-GM-THRID: 6748957441042415616
X-Received: by 2002:a17:90a:8003:: with SMTP id b3mr24836464pjn.43.1571609482642;
        Sun, 20 Oct 2019 15:11:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8dc2:: with SMTP id j2ls3279367pfr.8.gmail; Sun, 20 Oct
 2019 15:11:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw+2hN3HD59SsdPg8RHTqu0698g7uLWk6+0nR2v/Qqb2fWHVHMx8WmcZKpBEXckrT9p+dVc
X-Received: by 2002:a63:2c9:: with SMTP id 192mr19474804pgc.315.1571609481391;
        Sun, 20 Oct 2019 15:11:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571609481; cv=none;
        d=google.com; s=arc-20160816;
        b=z2CcdFzVfsAp4mglp+SSbVG4uFM3aCfhFMBTgI4DGEJBDPRv+4zhv3Q8oIJtFeC8nw
         2z/ZPN/eEvbzsi2Ek2OFjtd9lUvnoqidHabZK/O19e+Cw3nSUDON1FOd5x+W3nJdHn4u
         qidOsOjPytdYoUq1yXwqhw4yV7xPLEwfNfcfJdQZidKmeO9L1HBoSgfHj4ArqSn6hYNs
         4HWQ9Kba4Lt7/jdyHQq1X/TACdRFmYFe8qD9CpsnmRW281f5nlD/Fw8ZegoE/e0n4gR8
         g/EMH/+pW/rH74o913xTgrSt8wTP3CgKE0xNZ0LwhOsBGkFgq7/UPMVuq8zzruFtIkO5
         9fyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tu7KF83EovV6maadOqj3/iVpHg9BHr9G5OJgEVmAQVg=;
        b=Y1xifhpRyWS7sBT/yu6ZEqTmNg8sS7OBdwtNRZOlZHwXSKAYjlrZB3arTPU1zY6Kkv
         LDS0hw5Im6IcH2M/2yoxSLTt7eMeyP+5LbmFh710tt9Jsvf0p85BAR55rDMs9Yh/womu
         4Euc88eAwI0aNqF7e+TjPpGhuoi9uuzTLz4Bk01JN/NAP0yrEzYCPnV4HzDvrpYX4IKs
         lb0qIDAlRfLCtU/yipqbatMgj/5Eo3RoolAJsF57k5o26MTk3GWCh1v8aJgiib/HODxP
         PUJrIQq9w7gXnWV/zTZBadNDV5eKDj7wh4e1MLEzqnbuTFU0CYYgpdHe1ul90n32VzNg
         D6Ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HGIxww5A;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id x13si517574pll.1.2019.10.20.15.11.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Oct 2019 15:11:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HGIxww5A;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id 15so1141440pgt.7
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Oct 2019 15:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tu7KF83EovV6maadOqj3/iVpHg9BHr9G5OJgEVmAQVg=;
        b=HGIxww5AlEKhj6Czp4j3F5gOFQsmJx6Y0RfRoeff2wips95brM5wv8fIeLugbDm5i8
         hDOchXNDWHrmhTmh8DH/hy+O+r86U0z+zltWc8bgPDIzbtHn4XSKUUYFyauEBKTNxyou
         FltCIa5rSi35GF2KX6jbK+skqnt8n7/1lYHkYjL5Kl8rcZs9lm2up1rdheqTmizVSWSH
         lFZ6NPi0zBh1k4D+rIIQJYV9jmeRZ3KBE2G2GCFJdrsHMCQPEfgMZfNuw2OfMCi+6iIl
         1N6mx59zWx/ADv3Ii8n2kDfm8MwsXEPwkcgCyPfn/nJyD6QgPAzWC6Jc84SZNOyPrJ/Q
         C/Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tu7KF83EovV6maadOqj3/iVpHg9BHr9G5OJgEVmAQVg=;
        b=F55eduB8jYRbp5phyWxroXp6pHLdwKIIplr3zLgTdpngeMHzdZqlPJVuQWQlD0qRJs
         F5XXHwmV568Vp9dwttJWHcHnP73bF6QLqEkQS5fN0sNQycgKUNG0yWYbJoxp4tdK2AlA
         gN17gViKXBpmwnHpKBMfdoSITvyrAOgsTGswhxXJV0789aB1ru4D9PRjHanSWWG1DLUN
         UA4wo7MbV1h568WW/k31mjCICitle56O40htlRWa1XYR4KQVoJxThX9HTppjiKWlFbQb
         N6/gYFiOttoiRV44BCKgXcBKpvjEjFKaFnbNsaafCREQPW97st/O6gObs2pDdZzNCUm8
         l8OQ==
X-Gm-Message-State: APjAAAV9UK4y9g6aEjGhKQ6YRYsmb63vp2Wpk8F8xMibkfWjbFGh2Mvj
	QYyoErWPNols1th+Yxj21dw=
X-Received: by 2002:a63:ce4b:: with SMTP id r11mr21258817pgi.194.1571609480941;
        Sun, 20 Oct 2019 15:11:20 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id c26sm13850726pfo.173.2019.10.20.15.11.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2019 15:11:20 -0700 (PDT)
Date: Sun, 20 Oct 2019 15:11:19 -0700
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Edit CamelCase in
 ddk750_power.h
Message-ID: <20191020221119.GA22202@jamal-XPS-13-9343>
References: <20191018020112.22226-1-jamal.k.shareef@gmail.com>
 <alpine.DEB.2.21.1910180828500.2666@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910180828500.2666@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Oct 18, 2019 at 08:30:01AM +0200, Julia Lawall wrote:
> You don't need to put the name of the file in the subject line.  One can
> see that easily from the diffstat information.
> 
> On Thu, 17 Oct 2019, Jamal Shareef wrote:
> 
> > Removes instances of CamelCase. Issue found by checkpatch.
> >
> > Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> > ---
> >  drivers/staging/sm750fb/ddk750_power.h | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
> > index 7002567a47d2..cd892f2b717f 100644
> > --- a/drivers/staging/sm750fb/ddk750_power.h
> > +++ b/drivers/staging/sm750fb/ddk750_power.h
> > @@ -3,10 +3,10 @@
> >  #define DDK750_POWER_H__
> >
> >  enum dpms {
> > -	crtDPMS_ON = 0x0,
> > -	crtDPMS_STANDBY = 0x1,
> > -	crtDPMS_SUSPEND = 0x2,
> > -	crtDPMS_OFF = 0x3,
> > +	crt_DPMS_ON = 0x0,
> > +	crt_DPMS_STANDBY = 0x1,
> > +	crt_DPMS_SUSPEND = 0x2,
> > +	crt_DPMS_OFF = 0x3,
> >  };
> >
> >  #define set_DAC(off) {							\
> > @@ -15,7 +15,7 @@ enum dpms {
> >  }
> >
> >  void ddk750_set_dpms(enum dpms state);
> > -void sm750_set_power_mode(unsigned int powerMode);
> > +void sm750_set_power_mode(unsigned int power_mode);
> 
> This looks suspicious.  You shouldn't be updating only the prototype
> without updating the definition as well.
> 
> julia
> 

A grep for these function names doesn't return any other hits. It does
look suspicious however. This enum is used by other function but not by
use of the enum labels themselves initially.

Jamal
> >  void sm750_set_current_gate(unsigned int gate);
> >
> >  /*
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191018020112.22226-1-jamal.k.shareef%40gmail.com.
> >

