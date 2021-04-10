X-GM-THRID: 6949513279876104192
X-Received: by 2002:a17:902:8504:b029:e9:ab75:3938 with SMTP id bj4-20020a1709028504b02900e9ab753938mr8660057plb.24.1618061208716;
        Sat, 10 Apr 2021 06:26:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7246:: with SMTP id c6ls5310263pll.4.gmail; Sat, 10
 Apr 2021 06:26:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwaSZjXvUJ2D0/2toZkphwiSejuHa7ttOQmRJgpVjZdNtbO0oNBtGhbqHmOXBkkljXl7hk4
X-Received: by 2002:a17:90a:f8c:: with SMTP id 12mr19075708pjz.92.1618061207602;
        Sat, 10 Apr 2021 06:26:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618061207; cv=none;
        d=google.com; s=arc-20160816;
        b=WRVNnAjBtSVi1IZdst1LMOkJQmwUvcuNZvfmNT9IdYZj5ofV9o0TXa0tbVFMo6ohRe
         jYOxHsYIu3Wikd3Y4WSqAyBC8XDOZcsa+WYgIZPUcsI95rm75gibQ/S+5KltLKMDItSU
         Yj/ojzZ8TiDR1W1vNR7/bMrS1SVgIsIQFM/+LPr2vfSgjNXLdWvgrOakHsFHYygyqCuY
         C42bEg5HdIu67we7puolPp9PhWOiHmOYM/3foNq9ffy0Eq1WR25Pg29yNKng2XzLTeoH
         HBTY1mOuYmBLP7yhtKBiRNUdPxcyOUdAyhj2tCYxdPwZiZN/8LOzUghwIqVLTcnyXwOM
         t63w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XW4hlQ2ManVQB7no5c19dgI1mJt/P2dqrZMbZw4VRqs=;
        b=gHIuRMlIYZ+x1M2/4USF6ZtEGKFsWnv7LMCg43iQ1DFXJnsbgFkzt0q4rfmh6xwt5H
         ACi4HwrhXSvptmMd1e+hhHjR+UZTJuNj8GUyvjOQabi+MV8Zjf7R2KIYaxx2lmx7plhJ
         d2kyv6jipQ3hTSm9/lb0KwDgxpW42vRy5y6dpTRjgS85IrQQz3z15uFouhkZM4BML/qc
         yVkp0OCy1VvklWIP8L3G5RrC2gqfXM3S/irVGbJ5J0Q1+lK/424Dp8X+72HdsE7UpvVH
         zX5rm/Q2Kbh0h7LTIWlVbzRs7MQ0MeQq6JgVQcoVJ/vo0fbHJHuCqOnf8Q3ST3yjGoaC
         Z+KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=xdNb3ctG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u12si646405pgf.0.2021.04.10.06.26.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 06:26:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=xdNb3ctG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id B5E0D61028;
	Sat, 10 Apr 2021 13:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618061207;
	bh=rPcqecjTvR3ky4zAY9nAY6o/ftBaMVw2xbvS/QjaU7Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xdNb3ctGMcQ5Z2mb8Do+Hs9vL3Ur6qOKYFdQF6Zou2geHqapx9aTilw+CXoRikCyX
	 oVAFlxCy2JGRt21rHBokDnp8poIxdHT7qIHlvW9fgKK3VmMfJDTYHbM4DGLHmteF9o
	 ATwQYu23e8iHN+QFQPLaV7B7Un487yvsQssnJO8E=
Date: Sat, 10 Apr 2021 15:26:44 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Mitali Borkar <mitaliborkar810@gmail.com>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192e: fixed pointer
 error by adding '*'
Message-ID: <YHGnlCrZgqjFTgTH@kroah.com>
References: <YHGhdtldqAlRsPHT@kali>
 <alpine.DEB.2.22.394.2104101523140.2975@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2104101523140.2975@hadrien>

On Sat, Apr 10, 2021 at 03:23:35PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 10 Apr 2021, Mitali Borkar wrote:
> 
> > Fixed Comparison to NULL can be written as '!...' by replacing it with
> > simpler form i.e. boolean expression. This makes code more readable
> > alternative.
> > Reported by checkpatch.
> >
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> > Changes from v1:- added pointer to the function, which was missed during
> > fixing v1.
> >
> >  drivers/staging/rtl8192e/rtl819x_TSProc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > index 4457c1acfbf6..78b5b4eaec5f 100644
> > --- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > +++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > @@ -327,7 +327,7 @@ bool GetTs(struct rtllib_device *ieee, struct ts_common_info **ppTS,
> >  	}
> >
> >  	*ppTS = SearchAdmitTRStream(ieee, Addr, UP, TxRxSelect);
> > -	if (ppTS)
> > +	if (*ppTS)
> 
> This looks like a patch against your previous patch, and not against the
> original code.

That's fine as I already accepted the previous patch.

thanks,

greg k-h

