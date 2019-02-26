X-GM-THRID: 6661416853760376832
X-Received: by 2002:aca:de02:: with SMTP id v2mr13988972oig.0.1551184933139;
        Tue, 26 Feb 2019 04:42:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5d11:: with SMTP id b17ls4734121oti.8.gmail; Tue, 26 Feb
 2019 04:42:10 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbHxqRPYzABJ4teOAT4adbilTSqkkGsA8KpIfREpzhnmM9V7aeSSfCzm/mZ69ipSwDj/h3i
X-Received: by 2002:a05:6830:1092:: with SMTP id y18mr14279223oto.42.1551184930412;
        Tue, 26 Feb 2019 04:42:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551184930; cv=none;
        d=google.com; s=arc-20160816;
        b=DjmK37oOq4CwjF5pb+ZAnKuU45pI7jhaI1CBiSN+ZOOrmvD/9lhtEaIqUQ+z4+GWJU
         +8/PApO4R/uBHbHE4j7CH5GXHd1+NpY1lnTqcvaQP91fH9oQxNPKmUY/gbfL7wL1dAya
         SH+mlBn+pTg0U9YODZ0rX3yRcfenGuLKDlo4L5MnxCxKFTlk3dckluv4FobaHWgt/pwW
         w71CLRb98V/sQWFoa5BCOj8kciZ/UqwmMqhWF+MWGALzYtOSYcsHCZZVYNKvPOwdajwz
         QjI/JnNI8CIZeYeWZJw9l4GETb3dC4Kq8BbkgT4A9x+hZyr/7QCSONX0MFST+pB67kjx
         WdUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=vkAWaTt/p+DED8u9MaqOR6EdbFqAeM+yRuNztHNwxso=;
        b=N7kjvtzdXmF4S5R4rkvhrglW9z7L+tR7pCeBapDz0OEjUa/usRSv78EHtoFMYYergV
         59LKJG5DvhsjrcoCyo4yxGi4t/FvuGIQNFEaUpIgbrUcDBNfBZEPsBRbdxaVB/MbfIXy
         TLp49VroHOJ4fsgoxnBSNIujAEEcBZcRl/Vp6lr4PV8SM3hHvgWtGgCkFeCAxAOsn+jw
         t0bg3e88aIwe6A4KA1RO40VR8O7EjfMCYpAAmdJ1l15KQLfKmd039MPmFsgnDahES3yF
         Q5d4WlQ2mmURQJqo6cUz3Iuq4FnAFp2I+XZ9+Q9ekAs6F6D0LJtgGTghqcjxAHjGNRUc
         tzbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I+FYTu6y;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id v129si607501oib.0.2019.02.26.04.42.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Feb 2019 04:42:10 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I+FYTu6y;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id n71so10910348ota.10
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Feb 2019 04:42:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vkAWaTt/p+DED8u9MaqOR6EdbFqAeM+yRuNztHNwxso=;
        b=I+FYTu6yu+wu7sWBoJRY/dmLm0r0bPpYBoWyfkGoOKPZh+SUeXyakVhtSwmMQ2HqS7
         ZbwUUApgoDlGyCT5hQytC4gBL70cBJcr+BbT2ReS510V0kvCvSFhKJ1ElTRcTwaIP/ws
         +Cd8w11D5m/+CZ0s8qYvsMopO7/JdxUT/SQj53ykRO4de3jBdaDuIzmE7xPPVvRpTFO5
         nU0obPAFhaFmEGl6ZMonX5a6uO7ffK8hU9mZT456MlsKlkFOi7jRlFE/bQYNKQblh9+W
         HA1lwQ/ysjHy0pewwaEt5pb9Cffbkxp+5IeA6S0UZZ/Z3joazjH0KrMFEiIUL3go1hqk
         Ykuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vkAWaTt/p+DED8u9MaqOR6EdbFqAeM+yRuNztHNwxso=;
        b=c0N918MTSkv6KYCzszFTTe2SN6ahoxwrRjZEXCPAxTsTnI3GCt4taVw3qbeOm6SSxT
         Z/+rDvQoz5Nt1hLg2/OmXXLipe5cWjGHfPxuWllF1y7jS0r0F7VtlcuFVxbOA+X5trPV
         VVtMbnT3Hu1gKjrntvbtSrqsVl4hDwITdXWxvwGR4E4HHCx5QgH32YYepYqWftsMZEUG
         OdcMNb5A3iQF24Y6/eziYGq/TP5Vm1yjX8U+m96eKeboYP6eADYeXPBk6Qh//Ro4DF+A
         o1bwYhTVN/t/2rAOBzqQlUjFxyfAQP8mHy36MlmJQU5Cra5ZISRV7QHRznuLxjp9+v9Y
         8GVw==
X-Gm-Message-State: AHQUAubJnW4Xvg42HRGPGALljDUDLxXXjIt4YYWTZ6ZhWaDYf7n68XZZ
	qycenP22+AKXR9CRKXLQOxCjJBavwd0=
X-Received: by 2002:a05:6830:13d3:: with SMTP id e19mr14380656otq.85.1551184930082;
        Tue, 26 Feb 2019 04:42:10 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id s126sm4075751oia.24.2019.02.26.04.42.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Feb 2019 04:42:09 -0800 (PST)
Date: Tue, 26 Feb 2019 06:42:07 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: vt6655: Fix check - Lines
 should not end with a '('
Message-ID: <20190226124206.GB356@madhuleo>
References: <20190225171403.393-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1902252154390.2481@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1902252154390.2481@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Feb 25, 2019 at 09:56:23PM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 25 Feb 2019, Madhumitha Prabakaran wrote:
> 
> > Improve readibility
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> > Changes in v2
> >  -Make a commit message imperative.
> >  -Use multiple lines to improve readibility
> >
> >  drivers/staging/vt6655/baseband.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
> > index d8321e7fd68b..35bbff807df9 100644
> > --- a/drivers/staging/vt6655/baseband.c
> > +++ b/drivers/staging/vt6655/baseband.c
> > @@ -1704,8 +1704,10 @@ static const unsigned short awcFrameTime[MAX_RATE] = {
> >   * Return Value: FrameTime
> >   *
> >   */
> > -unsigned int BBuGetFrameTime(unsigned char byPreambleType,				unsigned char byPktType,
> > -	unsigned int cbFrameLength,							unsigned short wRate)
> > +unsigned int BBuGetFrameTime(unsigned char byPreambleType,
> > +	unsigned char byPktType,
> > +	unsigned int cbFrameLength,
> > +	unsigned short wRate)
> 
> This is just inviting another patch to line up the parameters to the right
> of the (.  I would have expected that checkpatch would have complained
> about this.
> 
> >  {
> >  	unsigned int uFrameTime;
> >  	unsigned int uPreamble;
> 
> This looks ripe for some other changes - not using camel case and not
> encoding types in variable names (the u).
> 
> julia
> 
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190225171403.393-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1902252154390.2481%40hadrien.
> For more options, visit https://groups.google.com/d/optout.
I will fix it and change the commit message 

Madhumitha

