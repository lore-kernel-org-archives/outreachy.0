X-GM-THRID: 6805647461769543680
X-Received: by 2002:adf:dc4f:: with SMTP id m15mr968093wrj.219.1584563982686;
        Wed, 18 Mar 2020 13:39:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4ecf:: with SMTP id s15ls5072382wrv.0.gmail; Wed, 18 Mar
 2020 13:39:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsswLhO6NbDL7YtlzJHs5k266nPnSsxR2lJBEZJt5rXxX0gNO//DV4sdio2RUwOxOClfW5v
X-Received: by 2002:adf:dc90:: with SMTP id r16mr7721034wrj.338.1584563981582;
        Wed, 18 Mar 2020 13:39:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584563981; cv=none;
        d=google.com; s=arc-20160816;
        b=Ldx4XWOWvaLqx2Tuov09GWyoRDrzrbpsX3L6XtKqyDL50xbn/HSKRyy3eAJbV7s+Jl
         CHlKnruV56fQEEIYCk/qFP5ZFq8JtyquzzAnrM0C/FMxhYvPk+9LL7iwf5zEl6NYexUT
         I8Ur2e5hsBkr02Lf17Jsjqi+jz17nsfVoOvMM/G3PtW+Lhxlt0z0VJl0IUoA0UlP5wwZ
         VGiXZIh/eRp1FFawOG/N834VfJIRTC/IJsePXb4NZONp5kPRRQHIma1HZfZHX5HHDXl/
         OjfpBTX4YlR7NjnbaHriAQz8hTScWe3lAWs9rg4Jtm27LF/JifF3PqC7XLqJoxWrlMbe
         liDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=6yeTRNDzX6yjywjVT0w+b75abA7gCGppOSStLBATyhc=;
        b=eulWqdRsfx+ekJoyL78icKgojCWIDZuV1dAzT5E63AA5uu5Ka2OYaGAM1KiEYnnOUt
         fs2xZvmLrnPTD0Ywa2u6iHXma28od32Y1+8URM4AU4Ak7f0oioUf1DKpiV41UhH7DWAa
         vFeTLtNCNYwrlmMfMfG9SKB40sZFZ0uxFwgCpGqzjPQ0elxBr5eUrKNJL1PFGS7+9lDO
         Ymp2Vg7LqehC1wvAJwgB8/evI6VB9HLlcV6RYI5hb04kTFJ+UmRjl40bSVDc1no1NsMH
         nmGFjvapGbRnuRV+rdvOOr0dqQ9HrsVu2NZqC1Zy7/MQ6Ls2MWutuLQSInoTTsBaZEXt
         wqWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QUiW4qBf;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id f1si275wme.1.2020.03.18.13.39.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 13:39:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QUiW4qBf;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id w16so91407wrv.13
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 13:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=6yeTRNDzX6yjywjVT0w+b75abA7gCGppOSStLBATyhc=;
        b=QUiW4qBfC5NHZT8l3LZEipUR0xK2+v2wSaQM7yrubQHT+tQsKC8q4azxWUF8urIlC9
         B+pTJruYoOhHTJtyez5rGUkvdBGlHBYe37hwXPbHLjUabJkIdM/9gE8kJlyuDOOJdXEa
         PmAzoMQb/TL9hQOtz1aOJs0lMx/Q4RsNu2tWiUUuLfZjR2SXaCn/2NLGAldTalcNXQau
         3h8NXfTbPaJEfW17JbwLYRS3muEXVF7HHt46uPZ8p0gkoL/fH7y+hAshnbNNbeQCY37W
         wiVtBrksNIy6G6Wf/nvBnb/IGAV+mtrNwnFL3zlnS0cwTmwP8AwkFIai4ZNw84Z7CZtK
         nKxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=6yeTRNDzX6yjywjVT0w+b75abA7gCGppOSStLBATyhc=;
        b=r8DqlxBS3F5iSWiK6ZaGC547RWOYIcRBlcHtyWvjSiez2nXKzInirCLJSdG3o+sMEd
         6kR/PXya1yH+KxLRzNaq/rv5HA2SRp/yOdDmd0eEdFmCXPYCqvsExFBBsfdWAfHkfI8p
         Ba5jFwqIlUvKHEqrcs1PKSYJtgl+WMUKMozm0xGJG7HzeV873OznUL2qNqeLgi8rqzoD
         7WiPenoFXPK8r1hFnK4HqiBLr88yLvl8wP7HIyoxD2IkYc83NURma3McDkMk/KucflIP
         6poYqtcJLaMnqIZr/UavuS73ZIjxk8jF7BOy93VN0HKKXmVtk6tV0ofoVAqWic25jG2h
         fv4Q==
X-Gm-Message-State: ANhLgQ2rAzbYjh7OBSIemUHpCXzc4X678TcFOoTB+tYbsMfe4uHtgM36
	Y6roC+lzCRRtW4COaVLTI4U=
X-Received: by 2002:a5d:5286:: with SMTP id c6mr7392711wrv.418.1584563981207;
        Wed, 18 Mar 2020 13:39:41 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.71.247])
        by smtp.gmail.com with ESMTPSA id g129sm5832132wmg.12.2020.03.18.13.39.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 13:39:40 -0700 (PDT)
Message-ID: <40b9ab7772e7c2de78e2c674b1ecda2f94fb8ecd.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: qlge: Elemenate anomalies
 in driver's coding style.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com
Date: Wed, 18 Mar 2020 16:39:38 -0400
In-Reply-To: <alpine.DEB.2.21.2003182131510.2979@hadrien>
References: <20200318202747.4218-1-jane.pnx9@gmail.com>
	 <alpine.DEB.2.21.2003182131510.2979@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2020-03-18 at 21:33 +0100, Julia Lawall wrote:
> 
> On Wed, 18 Mar 2020, Sam Muhammed wrote:
> 
> > This driver maintains a coding style of declaring variables
> > and assigning values to them in separate lines.
> > There are anomalies, elemenate them.
> 
> I think I was not clear.  When I suggested to do only one thing, rather
> than starting with a series, I meant that you should do one or the other
> of the things in your previous patch, but not both.  If you make multiple
> changes to a file, they must be in a series, or Greg won't know in what
> order to apply them.
> 
> julia
> 
> 

Oh, so this patch should have this one _logical_ change only? 
so i resend as v2? or resend as a new patch?
sorry it's a bit confusing.

Sam

> >
> > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > ---
> >  drivers/staging/qlge/qlge_dbg.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> > index 1795533cbd3a..8bf592812518 100644
> > --- a/drivers/staging/qlge/qlge_dbg.c
> > +++ b/drivers/staging/qlge/qlge_dbg.c
> > @@ -496,7 +496,8 @@ static int ql_get_mpi_shadow_regs(struct ql_adapter *qdev, u32 *buf)
> >  static int ql_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,
> >  			   u32 offset, u32 count)
> >  {
> > -	int i, status = 0;
> > +	int i;
> > +	int status = 0;
> >
> >  	for (i = 0; i < count; i++, buf++) {
> >  		status = ql_read_mpi_reg(qdev, offset + i, buf);
> > --
> > 2.20.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200318202747.4218-1-jane.pnx9%40gmail.com.
> >



