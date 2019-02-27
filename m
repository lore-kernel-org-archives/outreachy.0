X-GM-THRID: 6662711106976350208
X-Received: by 2002:a25:a286:: with SMTP id c6mr1643736ybi.24.1551297031801;
        Wed, 27 Feb 2019 11:50:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d83:: with SMTP id 125ls647630ybn.10.gmail; Wed, 27 Feb
 2019 11:50:30 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaPvuBMzARQjpg7niEVfRHzTBTuWhqgtzNmkUEjHFnnsg3/k9uaZXsDhWf3t6kqnKWegePW
X-Received: by 2002:a25:aaf3:: with SMTP id t106mr814112ybi.66.1551297030674;
        Wed, 27 Feb 2019 11:50:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551297030; cv=none;
        d=google.com; s=arc-20160816;
        b=nZfd3RQ90TftFqtmPCFVZh+N/ntbSXV5T7c3nI1ryocg/87cVkrUiVvM5hlVv4eGuC
         Md/n4EyLP62eEwmM5U31BfHojVZuJXpyRGmnFX57YoiczTKOoiktvATkwZgRuGvBbq2J
         WD5ZbvVbovOesjtMrCIrdLYMJu4IAyDUdxFDt9vIJABiNzIsmpHP0L+YruITGxnbXqyw
         GdTiOhGMJg31VQW2cnIdnP/lrxd+zMi2nUXK871L5aVrC6+hU9wCepuoukKvFPfuQBtM
         OMcIUxA/+Mc62Zq+s5X5sRIEqpy2OJjK/L89xfKHN4uWcsGAEY++6qqndkyN3eFAu9rm
         81xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=eICiJcOpRfbp3QXrCo3gdULM1tP943Ld1FueZOyEfaU=;
        b=PGT0vXk3U3G/igUoBsVl9F6v+faiVnrAqNyqa+En8WFobsbWfTs6lleP+LsysYBX06
         0t33wCO+Wmz8+jP4VFaWzfFwdufbCBhJEumUm2uD6OkzO5xcwdVT5rkP9xw/z0iuRwpp
         cVw4dlY/XymhcakVZaOhBXBTDJTwIT++iQIM7AEHXYU/ZTbkLCvvopKSkm5IFVrVn89v
         hYC4yIBN+rYAKrlFW/Avi2W/abAqkUuefjIZtAQ0Mj/5j0KPjAOJhIYu478KlcfUj0An
         uz22iGGu/xdTXfGB1miKzFhCle5Pp+H1qUWSUwP9fybRoFd6uphtCu1YAx6uNaUg8MgF
         cd+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XFuW8dh8;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::232 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com. [2607:f8b0:4864:20::232])
        by gmr-mx.google.com with ESMTPS id e23si647819ybb.1.2019.02.27.11.50.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 11:50:30 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::232 as permitted sender) client-ip=2607:f8b0:4864:20::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XFuW8dh8;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::232 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x232.google.com with SMTP id t82so14444877oie.12
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Feb 2019 11:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=eICiJcOpRfbp3QXrCo3gdULM1tP943Ld1FueZOyEfaU=;
        b=XFuW8dh8B6QmiXXWS8U8QOciBuXAFXJhsgY6ee5fsCUoHwy2Zfqe7WRiNVsctOQRG7
         oIGjtfyJAlQvmCwrnWdpf7RZjgyPfThfhCLVcj4PH03htIK63H3DdVQLeRFTyj9QjY4B
         DeCOvpoQ5x9w1Rw27nNEBU6pDa4iJQms8fY7guynWn1ZGsoC9iV/0uPhjywhHOpyQ8if
         srBy2V1z+9p78Z1W0tiidJiJw4G97w3u6O91c6OgEKVBLJLl8oHkw2f1+S6k+i0RA4+L
         RxzFmL7UVUb3CsHTd2coqBVzxHv7yrsKN+1TDP6UvJqifcX0XJivyqpkPsRwYtSUIC6S
         3ILA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eICiJcOpRfbp3QXrCo3gdULM1tP943Ld1FueZOyEfaU=;
        b=qrHuFvPhNmX0Mhv5ZkZM+e12H4UotdSNr/vne5NsT2b0swUWKzYIIT4QNXzRi1pSXz
         jyrYZ4ONhrjIAdvyG1GUDGRVo8O0VFeufqYSGCCIztNrZecBBfxmSlptThiOd3Y3y+bi
         uCCV2aBwcqhaonIztuwWeKqybLbmpSYKA4dBuljOfugKxI0BXqgZPH6JJSKTqvpjliNj
         6QWaCESaWlmTG5YSfwy/IV01fXZFQxFoMYNlCVx1XMQWpBsH6xZD12vgh82V3vwhvWro
         qfiN72OjkIvxbKyJsm2auksauyeqZvVppR7TA7flIEiYYm+5ZxLnKqZl9fx2cc9PzAJZ
         /OTA==
X-Gm-Message-State: AHQUAua5OHqtweJcKIdXupu3FxrQ99N7MY41xhMiv/z92yXxZxqsSFt/
	peL9pj6wjslNUXZjHnyZg9R9zK2NC7A=
X-Received: by 2002:aca:5782:: with SMTP id l124mr654311oib.66.1551297030109;
        Wed, 27 Feb 2019 11:50:30 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id v62sm7168814oie.21.2019.02.27.11.50.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Feb 2019 11:50:28 -0800 (PST)
Date: Wed, 27 Feb 2019 13:50:26 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: vt6655: Alignment of
 static function declaration
Message-ID: <20190227195025.GA23319@madhuleo>
References: <20190227160148.21914-1-madhumithabiw@gmail.com>
 <20190227162834.GC23972@kroah.com>
 <20190227163950.GA22354@madhuleo>
 <alpine.DEB.2.21.1902272044480.2561@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1902272044480.2561@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Feb 27, 2019 at 08:45:26PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 27 Feb 2019, Madhumthia Prabakaran wrote:
> 
> > On Wed, Feb 27, 2019 at 05:28:34PM +0100, Greg KH wrote:
> > > On Wed, Feb 27, 2019 at 10:01:48AM -0600, Madhumitha Prabakaran wrote:
> > > > Align function arguments and function return type to improve
> > > > readability.
> > > >
> > > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > > ---
> > > > Changes in v3
> > > > - Included driver name in subject line.
> > > >
> > > > Changes in v2
> > > > - Improved alignment of function declaration
> > > > - Modified subject line and commit log
> > > > ---
> > > >  drivers/staging/vt6655/card.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> > > > index 229137f29690..8d0182f5725c 100644
> > > > --- a/drivers/staging/vt6655/card.c
> > > > +++ b/drivers/staging/vt6655/card.c
> > > > @@ -62,7 +62,7 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
> > > >
> > > >  static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
> > > >  				       unsigned char *pbyTxRate,
> > > > -				       unsigned char *pbyRsvTime)
> > > > +				       unsigned char *pbyRsvTime);
> > >
> > > The patch does not do what your changelog text says it is doing :(
> >
> > I want to ensure whether you mean 'git diff' is not same as it is stated in commit log. I think, i didn't reset the commited patch and just edited the subject line. Please correct me, if I'm wrong
> 
> The issue is that the effect of your patch is to add a semicolon.  But I
> suspect that the semicolon was there in the original code.  You removed it
> at some point, and then added it back.
> 
> julia
> 
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190227163950.GA22354%40madhuleo.
> > For more options, visit https://groups.google.com/d/optout.
> >


Instead of reviewing and rebasing a patch, I used a wrong technique to commit it. I will fix and resend it.

Thanks,
Madhumitha

