X-GM-THRID: 6668974043295645696
X-Received: by 2002:a24:5c81:: with SMTP id q123mr4797376itb.34.1552742510394;
        Sat, 16 Mar 2019 06:21:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7a07:: with SMTP id h7ls4653060iom.5.gmail; Sat, 16 Mar
 2019 06:21:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzTG8t4D0sX/pe76F1wGVsoEAzmmo1TSGAYTW9LLWKcA2DmFe90l08djuQrMrnNj3zX876Z
X-Received: by 2002:a6b:251:: with SMTP id 78mr5510663ioc.39.1552742509855;
        Sat, 16 Mar 2019 06:21:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552742509; cv=none;
        d=google.com; s=arc-20160816;
        b=hEmoFdQevunEOjBAsTUhmsgb3V2Fup23n2L+dT2rBwYEOCa5ix2nJGuKZ+FV7CoG53
         BIiANb4xCMlyVAQU1es63qIzlvVw9XNotPPBSmfAXHXAh2g4GzHXwXOsQzEfDTJr4XDf
         Tjq3+q4FA6ayQgR9ePbRj2mYqx6wquv7zzm0FCXSa7+x6vGQN1YJkjNLpjveeQ+X5VtB
         olgb0BoLTqM3T4Erql2/uO2a6J1pT+KYzIt1Hi/I4FlnpPcAPP5w1CjTp5bIr1un7SlA
         NdtOvWgxZmofDCXcthGSYq0Jt0K53xsPq9hKC+9QRynUv9qgkzhVXiCrxuHcwajo5/eC
         4fdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=a/ilQzcGv+iMCuJ80dYN8YylAsN+LihRHaCZdKNJP8U=;
        b=blxF99FfVVfjadnTSdvLUUZbE+gzx7jJO+pWZ+vNb79WqpvROMluZxq1h5djR4Ajpq
         eYr7HluxDgCqw3pRsdlNszZEJ8CzxnJ+K9BalEbttqCiEcQSFB2gDZ5YzDoxeCcAv/R8
         sX3gYs2pSmHp231ilGFVaL1un7TCZbuWQXEivRN+RAX50LEVssy4+mVftlIkrTVG8gtr
         n4GF0yXvRun3CxLVgIXqZgUr0Kvz6IH+77gGuPnfKfOPuyoH9TF9j7a6GeXIIAI2Waiu
         bx3L7GHt5isMvuGTAx9Hk3JN3ZT0kNCPmSrD+/sOZ8GSqyLatitfUL1KGiJEVzcqhjWI
         Ybkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S4dtTZyr;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id n6si225237iod.1.2019.03.16.06.21.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:21:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S4dtTZyr;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id h7so2826099otm.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 06:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=a/ilQzcGv+iMCuJ80dYN8YylAsN+LihRHaCZdKNJP8U=;
        b=S4dtTZyrRCDXxykgyTd8shO1wy2QhwvKG2PDF+XySYfbwarNMz7qZJebeQ3RXlnvoR
         afou7jFy3iv0jWWydKrdMoGMaypB+HVXXWA38FTQe6m6hKVGZgqfLOovnSyixJ7PFPZo
         a9oJJ2w2jSJq1jNDYAMqHQ++6Hv+wjTsiIqiLsM1kYNUu6AbVhGHfd7LjXeW4YO6C0N8
         1lpmGEN7OTjJbS2D/jr1GCVH9XhrsLQNPkNHv45GTkbfp/UbSvf8tqBP6kHOruuaD0eJ
         siePhB4AIXEbgZJdXOtzha6gbe9+47VOSIuLKOXyD3WGTTNPgr7yScItcnvxAshNHzoB
         KQKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=a/ilQzcGv+iMCuJ80dYN8YylAsN+LihRHaCZdKNJP8U=;
        b=mfDq+Nh29jYZ+JwAiybfOCXpVvxnz/sc5MXZy/oTI9q8iDda1UWT/jf9a0vtX91pw/
         Gl+0E/bOlO0KIApizvf2hnJwETVKQ/HjWHU12QtM1OMSHDYnJxOM6qFUP9464kpYO+yR
         5Blv6lr/29U3cGYxQXDm7fk4GL/adn8bycAYqG9r8YFbt19cukmobVb2GaLSshtIC0pi
         Ok3pFAXq5kdg56ZV/EOhUWhx9Tjgo4a8+xPO46ZzE1C61LUzO3ruGd09bmCl/8xekXCS
         u2S9vLbqNR6A5g+us2nkMExPVTL+47LhARC3fSrcjqcCNJBtfO/pBx90+qWmsytxXKo/
         PTmQ==
X-Gm-Message-State: APjAAAVzI4v8mqeAS0bjql5R+0U/0Qfd9rnVrxpkAj7PtZqsmWz/ZYDS
	30qAEavj8O+3DFX2dr5EfyMBTNMZwNw=
X-Received: by 2002:a9d:73c3:: with SMTP id m3mr5452404otk.26.1552742509500;
        Sat, 16 Mar 2019 06:21:49 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:603f:14f8:e32e:7b1b])
        by smtp.gmail.com with ESMTPSA id s126sm1976635oia.24.2019.03.16.06.21.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 06:21:48 -0700 (PDT)
Date: Sat, 16 Mar 2019 08:21:46 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: rtl87223bs: Refactor
 function and check return value
Message-ID: <20190316132145.GB23435@madhuleo>
References: <cover.1552740889.git.madhumithabiw@gmail.com>
 <79e1366235e198546f0a6781a8538ac825f775c1.1552740889.git.madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903161413522.2487@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903161413522.2487@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Mar 16, 2019 at 02:16:18PM +0100, Julia Lawall wrote:
> 
> 
> On Sat, 16 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > - Refactor return tenary statement in _rtw_malloc
> > - Check return value against NULL
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/osdep_service.c | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/os_dep/osdep_service.c b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
> > index 73b87da15eb2..9dfdd13d4acd 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/osdep_service.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
> > @@ -24,7 +24,15 @@ inline int RTW_STATUS_CODE(int error_code)
> >
> >  void *_rtw_malloc(u32 sz)
> >  {
> > -	return kmalloc(sz, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
> > +	int _sz;
> > +
> > +	if (in_interrupt())
> > +		_sz = kmalloc(sz, GFP_ATOMIC);
> > +	else
> > +		_sz = kmalloc(sz, GFP_KERNEL);
> > +	if (!_sz)
> > +		return -ENOMEM;
> > +	return _sz;
> 
> Sorry, but this is neither correct nor useful.
> 
> If you compile it, you should see that it is not correct.
> 
> The change that should be done is to eliminate the function entirely.  The
> calls should be replaced by calls to kmalloc directly, with the second
> argument appropriate to the context.

I will work on this and resend it

> 
> But the way to do that is not by starting with this function, but rather
> by working on the usage sites one by one.  When there are no usage sites,
> this function definition can be dropped.
> 
> julia
> 
> >  }
> >
> >  void *_rtw_zmalloc(u32 sz)
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/79e1366235e198546f0a6781a8538ac825f775c1.1552740889.git.madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

