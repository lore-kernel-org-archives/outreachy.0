X-GM-THRID: 6665628449675149312
X-Received: by 2002:a24:5dc9:: with SMTP id w192mr9840279ita.33.1551974092311;
        Thu, 07 Mar 2019 07:54:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:4c81:: with SMTP id q1ls2099025jad.0.gmail; Thu, 07 Mar
 2019 07:54:51 -0800 (PST)
X-Google-Smtp-Source: APXvYqziLMjwNTFfLVpqsN+Wrwmv9o6V3gNYeKXqWzy81zGttuFRvO1LBb/GioR4+gBpYhXH4raY
X-Received: by 2002:a02:ca07:: with SMTP id i7mr8150734jak.11.1551974091461;
        Thu, 07 Mar 2019 07:54:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551974091; cv=none;
        d=google.com; s=arc-20160816;
        b=usgTQS5ZidND0j3vRsHSY7SP88P13BwiT2GlMW9IjPC7bgsZC6FtCexvzGxLsyk439
         cnA9wND6/mmrzJj92juuZmEXMRiC28NdmeLoBBGyI2t7oNsG/TX/q1lVdO2SyUtQShaB
         E4UB8c2TZPooDmqNKGkYE/YpcyN8WGwaTj8hYqKbWW34N6y/QkWZD0xXrhiUBnQ0AE7b
         JHrzbSDRZZXvrR/QljPeXdDpFOHsvnc00V37Dsvg1DOBAYin4z2YqkW8EIaAQeLC5vVp
         HxbDfrhynJheLfz11IiFAh+iuVcxmU2Fux2u/DTup9KZCuXPqsWjfoan+IlcS2wlh/o3
         DNHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=zfWOpGaou8LHWEhXzev8HVa//nwEehMyBtp9/FSYtWg=;
        b=BS5Kec/maSDb3QEndLVBRBHecO4w6IhZ7iLxM10jL6P/YR7fm9LIaT3mV05ZWlsyq/
         2XmdmkNWKfyKvaY9cEF1OL2lNgZ1HPtIVHJFxT6v4wyRqiD3kH0At3UczchgxwJu1CeY
         5L/MIddXyr7QaAz14ko8593jhPfK9Vg5PdzHCxa61AzHVaaVMAVMF0s4tu2LQK3wrnuv
         4QoIw34vXoUvU3A4c+n5HWd4joobFIpGpVjcCcZm/ugay1xBKHuayqZ/IDgxbrGwbJXa
         SGY6HVU/okY/1mcEzTG4qZAx18md+i/rVuiMQxMSjeLj3W9H//OxUmR+ZHVkB6sY26bb
         9Qag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eptdMhJd;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id y204si340420itb.0.2019.03.07.07.54.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 07:54:51 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eptdMhJd;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id i8so13284066oib.10
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 07:54:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zfWOpGaou8LHWEhXzev8HVa//nwEehMyBtp9/FSYtWg=;
        b=eptdMhJd9hVXcjKXV38BlBMIuXMQTIEiG4iB4DTa1L1Qp0PokCkqKEucuAzYQLlMIl
         ONfOZtTP5X1jlpKhjoi+IsaEp7adac6JahNt1gcczQbyST2tImsQC1wSxC8i+y5uWLdC
         FKx7jOwEYegHsE/hDGuWIwOL7bpQdmzfrnQgFAFt1F0D1dBkHr3oeSBdI6y7xmGtF6PI
         OCMvsYc8oc4SuzMcuJ31OXwjwL/xvKcZzajGqbDSmd1Wi5MPHk8oRLoMSeDswEqyo0bb
         v2GkdX1hUhqn5aktOovwO9Kg1EJEo2InXRrgM04eKURb4cLr8+lIp5bGLvmT7Z/B0Tqu
         BgQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zfWOpGaou8LHWEhXzev8HVa//nwEehMyBtp9/FSYtWg=;
        b=hGC8vJRdOmRyq8nO6UTa18gUys/jBi5Pbl0zVxkI6ENkRUWA/P/XW6+lisG8zVVgMR
         Pb4y+N8NTaHsSS+W7ReO3qRtNZidRvSmFOIbZ3H8MLXc+X9Bmm0S4N179SjnmnE0SRP6
         fC2nSC/27341EEJtnxT2ehwKMffHUAQaFk547r/WU70DA7VICJf8eFEPYxGKnZnqglmb
         qT+2RZxXnSOlPDHYcpl0fZNSEn3XKrGQs1bVerN/8ICIUdnSRbJrfEjyg+UXbPCsi5ZN
         K9PjEjzv5J5ZtURilq7i+5badTmFWvdcysoiE0O3IPFQugxsK1RynK15akQMyUNZ7e5W
         U35g==
X-Gm-Message-State: APjAAAWOtM/HGkD02WnywsdL+m8l28xR95HAQboCirQa5PC6rpYX1tDy
	bAhnguDInNFAs+RA1m8UsRINVDBsOZs=
X-Received: by 2002:aca:4bcb:: with SMTP id y194mr5183046oia.120.1551974090832;
        Thu, 07 Mar 2019 07:54:50 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id l134sm1896038oih.43.2019.03.07.07.54.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Mar 2019 07:54:50 -0800 (PST)
Date: Thu, 7 Mar 2019 09:54:47 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Remove an unused
 function
Message-ID: <20190307155446.GA21316@madhuleo>
References: <20190307124236.20430-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.20.1903071420470.5181@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1903071420470.5181@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 07, 2019 at 02:21:40PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 7 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > Remove an unused function to improve codebase.
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/vt6655/mac.h | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
> > index 99de843b4551..59538ac09fc5 100644
> > --- a/drivers/staging/vt6655/mac.h
> > +++ b/drivers/staging/vt6655/mac.h
> > @@ -887,8 +887,6 @@ void MACvSetShortRetryLimit(struct vnt_private *priv,
> >  			    unsigned char byRetryLimit);
> >
> >  void MACvSetLongRetryLimit(struct vnt_private *priv, unsigned char byRetryLimit);
> > -void MACvGetLongRetryLimit(struct vnt_private *priv,
> > -			   unsigned char *pbyRetryLimit);
> 
> This is the prototype of a function.  Is there a definition somewhere?  If
> so, it would be good to remove the definition at the same time.
> 
> julia
> 
> >
> >  void MACvSetLoopbackMode(struct vnt_private *priv, unsigned char byLoopbackMode);
> >
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190307124236.20430-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

Also, I found the other function, for which I have to remove function prototype and function definition. So, am i need to submit it as patch series or can i commit in one single patch?

thanks,
madhumitha

