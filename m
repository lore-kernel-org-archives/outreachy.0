X-GM-THRID: 6949956774560530432
X-Received: by 2002:ac2:4c09:: with SMTP id t9mr16961273lfq.1.1618164729379;
        Sun, 11 Apr 2021 11:12:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:2050:: with SMTP id t16ls727085ljo.4.gmail; Sun, 11
 Apr 2021 11:12:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJycg8ni8YQdBmMncA+dk9xm9g0/Y113nuUDqmMleFYK/EWJQxbPszHiDKPbQP1voNTGcITc
X-Received: by 2002:a2e:95d5:: with SMTP id y21mr12044835ljh.58.1618164727767;
        Sun, 11 Apr 2021 11:12:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618164727; cv=none;
        d=google.com; s=arc-20160816;
        b=yA8ZneFN92dxscuGiQhGqoHIlSi3ohrAJCV11uP+atI9TnnRV3IOtNhWkXlRi+uY73
         B8FcoDF6zfBqlD2UcnGeVLRDJf+zCYWtmb4pCWMfYSrSZUtOdodEiUEK/gYAJfqpl/6n
         K6IDmag9gkjif1MnQAHUw2gIi4PTgyNret2SowX7OvYezvJN+SdwOO+N7dGtjrZudPL0
         pJqrJWH5sC0Qv2lF9MNeSkjAVuFeThZAz5oodnXE4oHQtsq166xnpe6AvVwPB6l+BPZg
         1Ue1CMWJQPRlO55rOAnN9GEDfCvni4gGF3zILF9AOdub+y3J0piCNDg5fUiXunkNsCzN
         FdKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=V/wlowhj303jApNXvbAfUSmOBTZkKuUYqGVds57LCTI=;
        b=tOeV1QYqlDXmlwVfnfn9LIYRJ60Mmp6bCxAirn6TPywmFelBTqoUMclxYwNa2Ramq4
         X+4/5hEbjVsQd1oZFAPZjJLTmpVQLc5q88Z/SIG3hU1cHYFvoKl0RsiWl9WHd9jpWiw9
         hjliJcvO3ZJoNIALRR0ndALJE4JmYinuqYWqkA+4NjIuANdharihGZfhjUGmP1FBvPM+
         fixtld+0zFTN2WiJvmx3HoB8/VgEXeV2P0iO+hrcYO1RUvJ2P0X+kK8M7unlC6W2qpGk
         N90ddlZQadKCf1pkPtuNmXox7HdG/e5a8U43l4ixTnboyY6wU80YZ8SqO9dlKyjYw0Ir
         gKWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A9wVVuPP;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id q9si540510ljm.3.2021.04.11.11.12.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 11:12:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A9wVVuPP;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x530.google.com with SMTP id f8so12350819edd.11
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 11:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=V/wlowhj303jApNXvbAfUSmOBTZkKuUYqGVds57LCTI=;
        b=A9wVVuPP9QzIZGi01P+Ix15Olu+Wg/P6UPwE4eFpS+HpjKKn8yv+Ph/NPwsz12QDXU
         2wWZccgzNDt0DIY/aZ7BxPEP6GZplNpzSMyeONhPZS03L1neT5xbYlm8i9KB3i+Qk4R7
         pHH6a0n3Mrug+Rh2pFIpegy3MeK426Ra//74u0okBzHbENxErvwlJ1S0xfy4lhbputpc
         inB6kxdtxeu2VEnXtgPv8c6biyzzIx4YkLcL+JBM4Afhs40zbLdMfnkTiIFnJWnWcVsI
         8Y/vs5irgIFU3WMk12ZaWS3/LNRMR24I0oIjgFXhYOzXsA/v5KJVK8ySM0A08P1kQePU
         uFxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V/wlowhj303jApNXvbAfUSmOBTZkKuUYqGVds57LCTI=;
        b=KMdSmCNcKoRbk5CmA9L4ZP4JaTBSk4qJWIjF4CWeoDIT1FoBBfC79fqBgXTGUHDVuB
         OkZJQkKmwEGvXjWy8SfhhOkR/cbgD4r6NOK5NZjzMcOmAbddXCwPga3AJvHpa6qLzFO8
         0IkhmyhV94Tx4Q0fPHyknfai+DVn6X5XDlk5axHi1ZfXzhww49+BeSd3rBYvfWj6WN3r
         la+5uW6771jEdWfk7jhdwELL7lfH7hZxY4c4MPwpDSRhDSOZjAnvLGSoPik9YXpfV1jW
         t91yaaocpeJOfufAj2K0ZXUttA6KS3Gg5/ujCaOd45tfTJhHDygYTYsMGIiQhHGlP8yl
         1Tkw==
X-Gm-Message-State: AOAM5338FG9Wk7ENZGhE9CUWo2ePt4VYzlQJ+uR5r8iiXCDrfcpC7Hbg
	EHiuviHOcFh3/3hMbSFsuuQ=
X-Received: by 2002:a50:8711:: with SMTP id i17mr26938506edb.352.1618164727342;
        Sun, 11 Apr 2021 11:12:07 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id bs10sm5039043edb.8.2021.04.11.11.12.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 11:12:06 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove variable set but not used
Date: Sun, 11 Apr 2021 20:12:05 +0200
Message-ID: <2836382.q67jgZTtOx@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2104111943230.11703@hadrien>
References: <20210411174143.31618-1-fmdefrancesco@gmail.com> <alpine.DEB.2.22.394.2104111943230.11703@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Sunday, April 11, 2021 7:43:57 PM CEST Julia Lawall wrote:
> On Sun, 11 Apr 2021, Fabio M. De Francesco wrote:
> > Remove variable "int ret" which is instantiated but not used.
> 
> instantiated -> declared?  I thought instantiated could mean initialized,
> but that doesn't seem to be the case.
> 
> julia
Please, help me to remind...

If a local variable is declared but not set to any value, does it take 
space on the stack?

If I understand your message, it does not. Therefore it is only declared 
but no memory is allocated for it (i.e., it is not instantiated). Right?

If you confirm I've understood this topic, I can send a v2 patch.

Thanks for your review,

Fabio
> 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> >  drivers/staging/rtl8192u/r8192U_core.c | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/drivers/staging/rtl8192u/r8192U_core.c
> > b/drivers/staging/rtl8192u/r8192U_core.c index
> > f48186a89fa1..30055de66239 100644
> > --- a/drivers/staging/rtl8192u/r8192U_core.c
> > +++ b/drivers/staging/rtl8192u/r8192U_core.c
> > @@ -902,7 +902,6 @@ static void rtl8192_hard_data_xmit(struct sk_buff
> > *skb, struct net_device *dev,> 
> >  				   int rate)
> >  
> >  {
> >  
> >  	struct r8192_priv *priv = (struct r8192_priv 
*)ieee80211_priv(dev);
> > 
> > -	int ret;
> > 
> >  	unsigned long flags;
> >  	struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb +
> >  	MAX_DEV_ADDR_SIZE); u8 queue_index = tcb_desc->queue_index;
> > 
> > --
> > 2.31.1
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group. To unsubscribe from this group and
> > stop receiving emails from it, send an email to
> > outreachy-kernel+unsubscribe@googlegroups.com. To view this discussion
> > on the web visit
> > https://groups.google.com/d/msgid/outreachy-kernel/20210411174143.3161
> > 8-1-fmdefrancesco%40gmail.com.





