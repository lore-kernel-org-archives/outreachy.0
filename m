X-GM-THRID: 6949155933016555520
X-Received: by 2002:a05:6830:1513:: with SMTP id k19mr12522348otp.51.1617992773855;
        Fri, 09 Apr 2021 11:26:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:13d0:: with SMTP id d16ls2084594oiw.10.gmail; Fri,
 09 Apr 2021 11:26:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzBcTYDPg3iB7Gvdsbvv4lGEWFhtuJFVK1qw0G1SMxLCuH1IcDTdxYx5tX8WZIYdu+7Plw0
X-Received: by 2002:a05:6808:a8a:: with SMTP id q10mr10763070oij.167.1617992773124;
        Fri, 09 Apr 2021 11:26:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617992773; cv=none;
        d=google.com; s=arc-20160816;
        b=x8mdYB7dpwkYeXsU57w5GzihwHtb+Uz9RqQ/B0fM7pS5fTWht8+EqIU91Xndy1MO8s
         JA3qDufwWW4WVJrWdxyijd8sb4A0sE1cF6pqRjjh4mhmWNMzK/ifxBOq3prl6oWGl0PK
         bgexJt6cvgLQNOvzakIYcJVZY0oafmDC4YqYreW1vJa9eByl4MIxDMU9QmfWJNHGDKjO
         d2rL6TEKnQsrHzsW4OZNPvGEQ5Qk68k2oFksnxi/Wp2cKfdAu6dOP7rRr3lkYKhC1cRu
         SNYVQqsOLp2LnxO1wZuF7ZGOgBpTMPcdWd7xPmKdIVvM7I1g6CLNL04jRKijBxUhDmtz
         z34A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=c+DbAEwm0zRiHXUbKphWseVw53MsK9wYkvb3a3fbewM=;
        b=SfPq62h5JutA1cBGX14ylFXRsAAmCTXRFLAZXSMc78VbgnRSlYaiJHLYxT+cpXP52N
         w1Ddypp/2zLu/mwDmIZp/wEF6RbXc32uxm5zVvPpXlHao3NrVB/QAVrbW9KA+wzykUkH
         1NuGozuGjB/z0s4qhToAwIlBmU1kLv139PlNdKJTzpQ0J1YXbmFUwavfoW/Eawe/Nwgy
         n4QXP4/wKwXKXWDDYQK/6Cx01Fdn7jGcZngbQgdLLlFmzK5xquSqroFmMiReT27aG+/4
         HmtG7k3cyR3jHj9KrHD25NKniqz0gPViSLB+1wir+Nltiq+VaTGr69DIWRP6pBgRQV2S
         lztA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lXeEtyAc;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com. [2607:f8b0:4864:20::729])
        by gmr-mx.google.com with ESMTPS id x38si266784otr.3.2021.04.09.11.26.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 11:26:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) client-ip=2607:f8b0:4864:20::729;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lXeEtyAc;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x729.google.com with SMTP id i9so6789012qka.2
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 11:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=c+DbAEwm0zRiHXUbKphWseVw53MsK9wYkvb3a3fbewM=;
        b=lXeEtyAca43iGOTwSlP0zw5k6vVxMpXPwmtkGVDHceQMVS6ieis3frq9h8IaSRBVi4
         2fPmzKe50P9tL4LZA4G0mPxKCfeNvB5MVpF9N7e4csTMTMvKmEhlxYf+c+wSoSgtRaV/
         b7jMt/2yBfclVcmch4A+aLHf/jvI/AkE581hPmZzCKOoipBUUeztXGF8eblCYRxeVIZ6
         6yXk5qSSz5IIPw9uqF8XbCXiM1mmHVvzddUzAZU5mLgnhrB+DZWUVyj5ebVhi64mKm4F
         PkvZp3sp1e5tIWUQyisrGsJYrt82lBJxkLF6XLr7bGqhmiq7nquccTCuzo7KNXkmQhrl
         VLGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=c+DbAEwm0zRiHXUbKphWseVw53MsK9wYkvb3a3fbewM=;
        b=TZ5MyiLCxM4XxOYGFFTM4g+En8Ki7XsIudfrcCbHbhoospxA2cbSsJt+nW5WOTBpGU
         oGagruTPfQTlKZcqCr+FYHGgS+2rg2AlqdHvHBHCRu5ANLeAMIRChseVUfjJzJ2PFP8l
         1qeoi8NblMKEUjaa7BnjMjPV5XmRGYPAfsQZSvJ/q6Ag8C2Y8oWKY/dhuqkwNxH7TGUc
         Ke8cYd3Uij3wcRtCnjTUeFBUT0NIdLv7QXBVEVPJkeW1G8Xt3W1W4Yg5aEpfitY8t+b7
         p88LvDIiADFuSefqx2pLEecZAomZPTmPGH6AKAF88OuVEsMQYf9BcCSLJVL/gVJdNcXy
         CMCQ==
X-Gm-Message-State: AOAM532Ks6nWPxNBC24a9ql+7x8qUgW6jJlJStNpQzZpH8BN03AuxwLh
	Y9aweBYYdpe+pEtTN2RzVZ4=
X-Received: by 2002:a05:620a:13ac:: with SMTP id m12mr15181568qki.458.1617992772882;
        Fri, 09 Apr 2021 11:26:12 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from [192.168.100.7] ([177.220.174.147])
        by smtp.gmail.com with ESMTPSA id d190sm1058319qkf.103.2021.04.09.11.26.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 11:26:12 -0700 (PDT)
Message-ID: <aff7af9caab6fab8ec2c7ee0980669323b449aa9.camel@gmail.com>
Subject: Re: [Outreachy kernel][PATCH] staging: media: hantro: Rewrite macro
 function in lower case
From: ascordeiro <alinesantanacordeiro@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>, Julia Lawall
	 <julia.lawall@inria.fr>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Fri, 09 Apr 2021 15:26:08 -0300
In-Reply-To: <532a72f6fcb6f51451e12444413c0ad4441a679d.camel@collabora.com>
References: <20210409135404.GA26172@focaruja>
	 <9c09806cce4c7e5c5f0dc03e8c502cf29716f00f.camel@collabora.com>
	 <138794d79c42510d9b6ae744df20216904773032.camel@gmail.com>
	 <alpine.DEB.2.22.394.2104091924510.17316@hadrien>
	 <532a72f6fcb6f51451e12444413c0ad4441a679d.camel@collabora.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em sex, 2021-04-09 às 14:42 -0300, Ezequiel Garcia escreveu:
> On Fri, 2021-04-09 at 19:25 +0200, Julia Lawall wrote:
> > 
> > 
> > On Fri, 9 Apr 2021, ascordeiro wrote:
> > 
> > > Em sex, 2021-04-09 às 13:44 -0300, Ezequiel Garcia escreveu:
> > > > Hi Aline,
> > > 
> > > Hi Ezequiel,
> > > > 
> > > > On Fri, 2021-04-09 at 10:54 -0300, Aline Santana Cordeiro
> > > > wrote:
> > > > > Rewrite macros resembling functions #define
> > > > > HANTRO_PP_REG_WRITE
> > > > > and #define HANTRO_PP_RED_WRITE_S in lower case, according
> > > > > with
> > > > > code style.
> > 
> > Maybe you can see if these macros can be converted to static inline
> > functions.  Macros don't provide any type checking.
> > 
> 
> I'd like to leave these as they are for now, tbh ^_^
> 
> A more massive refactoring is needed in this driver,
> but it needs proper testing and it's a more complex plan.

Okay, thank you for your attention :)

Aline

> 
> Thanks!
> Ezequiel
> 



