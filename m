X-GM-THRID: 6749515623301120000
X-Received: by 2002:adf:fdd0:: with SMTP id i16mr5604294wrs.227.1571497753134;
        Sat, 19 Oct 2019 08:09:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:2249:: with SMTP id a9ls1571533wmm.1.gmail; Sat, 19
 Oct 2019 08:09:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxnbhPhRTWcOO1/ISIBUHU4M7N3umxnwwSJPvuoKlFw0YwXwpweGmBo1Otl2kCtIJzIllb4
X-Received: by 2002:a1c:7c0a:: with SMTP id x10mr12201244wmc.48.1571497752001;
        Sat, 19 Oct 2019 08:09:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571497751; cv=none;
        d=google.com; s=arc-20160816;
        b=y6lW12WvPKcZVmPJ3BxlJ4x79jN9pc3Vxy4Z9tHSASAERXBpBaaV+u6AJGCCuqsfC3
         vJeHv/LgurWUB2HZJ9+aPjh6eq9fND2pWFDFMCFHkoVWQhv0/Tf/l3Z+snoSFpr0rBHP
         XvdBf7IngKSaDroFWCBz4tE37G+MQqypPNiLIgKTU46wqPmTNAQaYs3iTm+DBppKf1o/
         SDTlJ77xcO96+kbO4kr3IPxx9e6x6B8qjwle6/DbS6Q1UUZ0lB5LWTkkmbSuq0xF54YM
         hJgfL0uqe7nnTLY9TH5wgSiprSxscyxyPMf/9M4GCV65xRXsz4tVJ2eugx2hQbNK9ajQ
         HrYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=Ay4timk1xWotJvsgSoLnsWO4oyPYDoeHPtFGTfhtgfI=;
        b=s1FU2qflMpMIQMICTVCoI2CqTRnuEdTmSbHn1sDfKIb0lY/zhX6UNr0vOqdeJvkFWt
         5D512bjMYUeamB5Ce16cDcyhbBV56PRsIvM7chm66DgrrOtcpW2t2kNkxIGvn9fIw+K4
         OqOtLLILRqW/AAm8Snm182tSlzRmaedkeDDFJQFkLqDKDWN+p8FcqRdam/tjKhB33QCx
         tujE9XYvyRw++PuYkaqFkoJdrlGMDvXSY5CtZIV3sF0ueUYYeSYF7DFnKn3wkhByNPhE
         7AUyrzden/WMnH1g8RZA3sB9ZfYYyOOcPOvVuxDsRFD6M2UISJe2tn/jmir1z+TUYMkf
         10Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t92CWFWj;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id p15si438076wrj.0.2019.10.19.08.09.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Oct 2019 08:09:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t92CWFWj;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id o28so9190121wro.7
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Oct 2019 08:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=Ay4timk1xWotJvsgSoLnsWO4oyPYDoeHPtFGTfhtgfI=;
        b=t92CWFWjyR94g1Dx9rLLDBajpCwSVgP9bI+BzzLmMWZgV5Vh/vgSRVH9WwcAtPk2Do
         Xj4UA6iD8Am3EqTrRbGqnY9iFTeScopQVDrgzgE3PHlLQWcFQVXhgY2YkjR6m4GXKYyo
         BCoYiHBP244f7Rpf7FTvRaBA0fp9Um9xEa+Pf70IjThEsRkF5q0kyTmWK2s9pJ8+LqVY
         jseC6rLkbvcasZ5ZCWPYTEcAIX39kcjutHWqaV6QeyB6kuurSRfhTNs34cTYuayoJ/uY
         0iro7dl30v60hbWNDYSZnfg6MJn+j1fz4QqKCztV0Lf/wjQENXhpmuFZtVlJ6NNuKMkD
         GmZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=Ay4timk1xWotJvsgSoLnsWO4oyPYDoeHPtFGTfhtgfI=;
        b=eNfVStauQvlGJFk7ejkH2euZMLlTpAEvbCGZOWZtF4aQUUXdi4LIkwvKxpn65XaYEe
         Dkg7ucW1BpuozoWKre7NefGFqMcXIFI5fCmsmG352YjqbDI5afaX3B3sUqwyiqq1o435
         cIu1LEd1MUDP7J6ZNpmvcsrzXUD+RkcjaKBFJrTuaVHvByxWLQFqpXUsqLiTe5hOXheV
         4rw6nqQ4ENJDPB9xChOvcyuJ63WSzLxWwHUtYgGIfcZntHlvKth1ZVpbE8J2vntJmwFU
         YdpJ9gxVExso60XByH45PA1OOcFl8g0ziMZpaoNjRhxSeGdBbWNPvSVdFevkt8FhYdij
         /gTw==
X-Gm-Message-State: APjAAAUNlsonN1F5XKDKrrl7G0zJzMPPr2EgBxE13ESGzo+Ut2/Vpaxh
	l8drXI5Aa0CGUrkhDzV2fQ==
X-Received: by 2002:adf:fc4c:: with SMTP id e12mr1750054wrs.179.1571497751485;
        Sat, 19 Oct 2019 08:09:11 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjabhubz.org (host-92-23-80-57.as13285.net. [92.23.80.57])
        by smtp.gmail.com with ESMTPSA id t13sm10742318wra.70.2019.10.19.08.09.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2019 08:09:10 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Sat, 19 Oct 2019 16:09:03 +0100 (BST)
To: Dan Carpenter <dan.carpenter@oracle.com>
cc: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com, 
    devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/5] staging: wfx: fix warnings of no space is
 necessary
In-Reply-To: <20191019142443.GH24678@kadam>
Message-ID: <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
References: <20191019140719.2542-1-jbi.octave@gmail.com> <20191019140719.2542-2-jbi.octave@gmail.com> <20191019142443.GH24678@kadam>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 19 Oct 2019, Dan Carpenter wrote:

> On Sat, Oct 19, 2019 at 03:07:15PM +0100, Jules Irenge wrote:
> > diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> > index 3355183fc86c..573216b08042 100644
> > --- a/drivers/staging/wfx/bh.c
> > +++ b/drivers/staging/wfx/bh.c
> > @@ -69,13 +69,13 @@ static int rx_helper(struct wfx_dev *wdev, size_t read_len, int *is_cnf)
> >  	if (wfx_data_read(wdev, skb->data, alloc_len))
> >  		goto err;
> >  
> > -	piggyback = le16_to_cpup((u16 *) (skb->data + alloc_len - 2));
> > +	piggyback = le16_to_cpup((u16 *)(skb->data + alloc_len - 2));
> >  	_trace_piggyback(piggyback, false);
> >  
> > -	hif = (struct hif_msg *) skb->data;
> > +	hif = (struct hif_msg *)skb->data;
> >  	WARN(hif->encrypted & 0x1, "unsupported encryption type");
> >  	if (hif->encrypted == 0x2) {
> > -		if (wfx_sl_decode(wdev, (void *) hif)) {
> > +		if (wfx_sl_decode(wdev, (void *)hif)) {
> 
> In the future you may want to go through and remove the (void *) casts.
> It's not required here.
> 
> > diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.c
> > index f65f7d75e731..effd07957753 100644
> > --- a/drivers/staging/wfx/bus_spi.c
> > +++ b/drivers/staging/wfx/bus_spi.c
> > @@ -90,7 +90,7 @@ static int wfx_spi_copy_to_io(void *priv, unsigned int addr,
> >  	struct wfx_spi_priv *bus = priv;
> >  	u16 regaddr = (addr << 12) | (count / 2);
> >  	// FIXME: use a bounce buffer
> > -	u16 *src16 = (void *) src;
> > +	u16 *src16 = (void *)src;
> 
> Here we are just getting rid of the constness.  Apparently we are doing
> that so we can modify it without GCC pointing out the bug!!  I don't
> know the code but this seems very wrong.
> 
Checkpatch was complaining about  space between type cast and the 
variable. I just get rid of the space. Well I don't know whether this was 
false positive one.

Thanks for the feedback. I will update the patch.

Regards,
Jules

