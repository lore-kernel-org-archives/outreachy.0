X-GM-THRID: 6805399652543758336
X-Received: by 2002:a17:90a:e013:: with SMTP id u19mr5258907pjy.65.1584549796858;
        Wed, 18 Mar 2020 09:43:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ab86:: with SMTP id f6ls13951560plr.10.gmail; Wed,
 18 Mar 2020 09:43:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu4IWVuK3xqTNpwJob7VcjqMuJDxfOnuOOeywA+9bMKJfNTeGSmcTG8GepfRvtqkG3mHjLA
X-Received: by 2002:a17:90a:1d0:: with SMTP id 16mr5449417pjd.113.1584549795272;
        Wed, 18 Mar 2020 09:43:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584549795; cv=none;
        d=google.com; s=arc-20160816;
        b=n5YYEMBdu/PjNsdup0qKuwjsr1dQawRqNCjp/f/lKmIg+eYQpxR/28+7uiQveQWeej
         IS8AnQ/lTMjr2nRgamzpajWu7h9K8lryIlDl2/5VaRbY5Gnjcmgp+KRF0IgXd+wn3TbA
         UoGfTZTr/6a+mPU6AmMko+j0OASuo4oqgodSCq8n7sxgjhWVggHszj4eYgT4fPOsp4kU
         CxOvBadiFslii1Ul/KE/0hxGdd3e7gIoQBje5vB/Y3a6l/d0KsLFeWAMOEUP8S30hivL
         LBtgBPnVNn81mkz/gNMHIxh9hJfSLzdqTBE7TcCcP7bEr17rpiOQAP1LqZXmku/LoX/K
         dWxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fcnUHoACse7eTRxCkZZOXp83dug0akVVK+r5f16wH6o=;
        b=cNnGdIeS33sVewk57B7Ojb6UzRPwzRdIt4akshORhOlKAEwZZb1qFeO+eFpkkhWZf0
         mkcJEcHG6R0DsMIkCj0HQI4DpbsdfzhpS9PWgjJzI4K+B8tR+B5RFiWCYM5CPeqj6sIj
         nGraH3nqlp7+tHIK7pW3sInwa3zPLz97YvlQyp3DgM6/NTi9LRQ3wsVv7SCJd3UD47xq
         K5Q5KOhk1RKzVV9EC8orwhga+aptaTzgkRdDmoOLdrHEY0VNwV10PKva8FJzp7qkPdI+
         rSvOlBBfpVIXMfDaVTGajP8Ck98JMiMw+R05OaYMSf4WkRbkWMpqNDJjUm2m6WRxBNK8
         M2QA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TVdB8R15;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id x12si546353plv.3.2020.03.18.09.43.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 09:43:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TVdB8R15;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id g6so11429574plt.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 09:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fcnUHoACse7eTRxCkZZOXp83dug0akVVK+r5f16wH6o=;
        b=TVdB8R15xKD/dTLCokpwXYwZwQIa+dqy1ca4BGeX7BbX5YlindJlsX45waczjgcX4P
         1Pt78KsZc/CU854gBLqoYCQ0kLbgYmlsdyDR7aP4KWggHXJaD4gv3HlUo1vZi2DAq3e1
         KLcmpmZuGnQhBNg3qmK5LfT9U3MANtwTdZ8qaYdlNwDrniW3CKSRhjHrSecIxjyfX7JP
         odVc7oVpwBR0si0mo1euGjb4bkgUqv5LF/Ruvt1zJ+cPBf2ZwpuJ9d/4eu2dmhxEERAp
         YKKjhFW4qxNuzrf1HI3b2QZBPjOj2eAt8bz7ioRvPI+li7yUg6QZqbounQ6tiJmgmr8F
         BOQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fcnUHoACse7eTRxCkZZOXp83dug0akVVK+r5f16wH6o=;
        b=B0uHlaKBEOGJytcn9JyfJ67jOXWvLfy6DC0yn6Ve0Tm20mB1yiKlQTAQCpWhaH3Poh
         YjG2oRnoV4JyVHO7Qy8RWPo3eKaDAqdPNWFZ/x+boiyQVGdKnOEQ+Lt8swmtRCCWk7tB
         4uE9sDz6ETX0S3h5KG+DrmZtATbTovjdIzUXstycySFTTHPpOQirlq6QH3X/VpLVp63h
         eTJCqy7T8yngXj436MOwyRPWSf0VswYTkFlEqJiV2DkQbxZPjsqJnpspEVfv698F+vmB
         I4jz60PtXeHX+c34HFk9tviIg2SFi8XoJxXH6uCvvlSdPsk64I+EG3pMfjUvZf7CCgx+
         BIYg==
X-Gm-Message-State: ANhLgQ1hNuH9L96aRGPOkFPUFsh4ARsH+rFqHdBU7osncNyYeyV1JRPI
	sPGcZI1C+1JwrGw/NjLMkcE=
X-Received: by 2002:a17:902:aa06:: with SMTP id be6mr4814334plb.132.1584549794986;
        Wed, 18 Mar 2020 09:43:14 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id u9sm3297501pfn.116.2020.03.18.09.43.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 09:43:14 -0700 (PDT)
Date: Wed, 18 Mar 2020 22:13:08 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Rohit Sarkar <rohitsarkar5398@gmail.com>
Cc: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: iio: adc: ad7192:
 Reformat lines crossing 80 columns
Message-ID: <20200318164306.GA23434@deeUbuntu>
References: <cover.1584505215.git.mh12gx2825@gmail.com>
 <50419988d636c90511a07da256c91aa3b3e33bff.1584505215.git.mh12gx2825@gmail.com>
 <20200318093158.192a27ce@elisabeth>
 <20200318160649.GA23154@deeUbuntu>
 <5e724ad5.1c69fb81.7d54e.9f63@mx.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5e724ad5.1c69fb81.7d54e.9f63@mx.google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 18, 2020 at 09:52:41PM +0530, Rohit Sarkar wrote:
> On Wed, Mar 18, 2020 at 09:36:50PM +0530, DEEPAK VARMA wrote:
> > On Wed, Mar 18, 2020 at 09:31:58AM +0100, Stefano Brivio wrote:
> > > On Wed, 18 Mar 2020 09:56:59 +0530
> > > Deepak R Varma <mh12gx2825@gmail.com> wrote:
> > > 
> > > > Macro arguments are computed at the time of macro invocation. This makes
> > > > the lines cross 80 column width. Add variables to perform the
> > > > calculations before hand and use these new variable in the macro calls
> > > > instead.
> > > > 
> > > > Also re-indent enum members to address checkpatch warning / check messages.
> > > > 
> > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > > ---
> > > >  drivers/staging/iio/adc/ad7192.c | 15 ++++++++-------
> > > >  1 file changed, 8 insertions(+), 7 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> > > > index bf3e2a9cc07f..0265f6607d75 100644
> > > > --- a/drivers/staging/iio/adc/ad7192.c
> > > > +++ b/drivers/staging/iio/adc/ad7192.c
> > > > @@ -156,8 +156,8 @@
> > > >   */
> > > >  
> > > >  enum {
> > > > -   AD7192_SYSCALIB_ZERO_SCALE,
> > > > -   AD7192_SYSCALIB_FULL_SCALE,
> > > > +	AD7192_SYSCALIB_ZERO_SCALE,
> > > > +	AD7192_SYSCALIB_FULL_SCALE,
> > > >  };
> > > >  
> > > >  struct ad7192_state {
> > > > @@ -477,17 +477,18 @@ static ssize_t ad7192_set(struct device *dev,
> > > >  }
> > > >  
> > > >  static void ad7192_get_available_filter_freq(struct ad7192_state *st,
> > > > -						    int *freq)
> > > > +					     int *freq)
> > > >  {
> > > >  	unsigned int fadc;
> > > > +	unsigned int sync3_filter, sync4_filter;
> > > >  
> > > >  	/* Formulas for filter at page 25 of the datasheet */
> > > > -	fadc = DIV_ROUND_CLOSEST(st->fclk,
> > > > -				 AD7192_SYNC4_FILTER * AD7192_MODE_RATE(st->mode));
> > > > +	sync4_filter = AD7192_SYNC4_FILTER * AD7192_MODE_RATE(st->mode);
> > > 
> > > Have you read page 25 of the datasheet? Why is this called
> > > sync4_filter, with a 'y'?
> > > 
> > 
> > Sorry, I am not sure what you are referring to. Can you please elaborate
> > or point me to where the data sheet is located?
> > 
> > Deepak.
> 
> Hey Deepak,
> You can find the datasheet for ad7192 here https://pdf1.alldatasheet.com/datasheet-pdf/view/988287/AD/AD7192.html
> 

Thank you Rohit. I got it. I understand Stefano's comments now. I named
the variables with a 'y' to keep it similar to the macro
AD7192_SYNCn_FILTER. Let me know if the variable name looks odd and I
should rename it to sinc4_filter instead.

Thanks,
Deepak.

> Thanks,
> Rohit

