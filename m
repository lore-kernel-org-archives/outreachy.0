X-GM-THRID: 6805399652543758336
X-Received: by 2002:ab0:2a55:: with SMTP id p21mr3312857uar.54.1584547618881;
        Wed, 18 Mar 2020 09:06:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:30d8:: with SMTP id c24ls1943211uam.1.gmail; Wed, 18 Mar
 2020 09:06:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtAENXg8NtmFVn7mxw97z/Q1nOw5y6XP3Gt6dWak3gpw6OB0URXrTH2foc4Ts1dy2yiVdlJ
X-Received: by 2002:a9f:21aa:: with SMTP id 39mr3402644uac.138.1584547617367;
        Wed, 18 Mar 2020 09:06:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584547617; cv=none;
        d=google.com; s=arc-20160816;
        b=ThmOSzNad+DAWW9/3u0zOHNCmQ9CY9u1ZKkOzWgYEJJ6UKu1XZOYQrTnYk0HkJBuEC
         0M5pk3HhewFQcBNf4g8o/2eLflD1joR5lj3RWhHtxZ1RylTvnu5yPjAxbMgKpS2O9Z5h
         JXuPO2FX7gdiykVgsc5BDzzHYi3Q/bv0rP5FEvlC7El7KjdCQPw5yMIPGjVTOgRWnf3B
         6VC5EQ38Jcu0smCopF+qmlTNoJLTGwpBuDqxOzNYeib3H9d+UAWXcnllcQPJOcZBjnCY
         vpSykO23sKiFGvMuHkgKXEfhsgcDPZ7uYG0i6UEEumvcUcrZ5MRG4aNCQmKl2dBeVoHi
         dcFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Fri9PqkqhwvvbowUeaeg84Qe5DMBL3espMfmU2oUWLg=;
        b=VPxnHkxzcAYH/k3SBGYLcHGuYeA4cfwXiyu0sJjK+jwJWJOrBjN8iVvnf027nvVEIe
         rEFRLAHJkCyTkvjGIj3rFuda7dJx+93X9Tm23wRCGP6OJFwm4541zOQVH/8zk8TK+Tba
         6WhXdx8z88nwlSahKlPoaXfV9/qo5AwCUxFcPQ/9UNiTZ1sSK80URDGCGmlPV7v+Ojij
         mQYyKN/Zm/UW89nwhqg0xreatFrfUmViA5VDE1wjfrCGDJSHpsThwTU2VYxeafrNe2gh
         2go9W/icdyk7cdSrT16ACpmhHav74+7pAmtCdhzzunlYIXzHjl9nN4vUmta0Fl1nuX2w
         a3Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rZ2yk0Nv;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id g4si427637vke.3.2020.03.18.09.06.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 09:06:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rZ2yk0Nv;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id 37so13923197pgm.11
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 09:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Fri9PqkqhwvvbowUeaeg84Qe5DMBL3espMfmU2oUWLg=;
        b=rZ2yk0NvbkhcqJmrq9GfjopWiOPRajOtySOI+NG5xIFacAGglUPRr+GDCpRtXUzz9f
         sIXZptA/ks08GFr8Yy1Ibju4QJZWa4aHg1XvilUEmMO82xeFM+zrPbBqboT1ACHgxSwt
         pmEcvGFWkBusC3w/XKlcTbLlrOW0TRcT9rhh/yVLirbdLT+OuEz+pRZrPQdtZriVN9M+
         eXERcWUlisCiu8lYmyxP4DoB1NzEpNYHQKPvooN7VIl3ZqHbQbgw7oywNfbeZGuciowX
         J8CvrXFKmXSjaFSRC0hGPVco8s2NFM6MeVvtWoUIPJ6NneU506jvnl8LRTQpDsJsYYXj
         NTSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Fri9PqkqhwvvbowUeaeg84Qe5DMBL3espMfmU2oUWLg=;
        b=LzFgHwSy6Kq4MZ2m/CXUci4iwwD+syjj+ErzO8wfHBCaMucfnPS5oXIJZ0hykvjY8Q
         GCZS2kUFcTjQh6rI3UswtceJaxf7TDUFSQ72C6+MIcmC4ugTDfn4xDFHYxOvAJQuPAh/
         lQut6ea+FYmNMfODU339OusEypXZygnRcZEJNAAPtJxJ5BMGMOSXQ4lMegpxTAFpQB6j
         RBF7KaPT++Vf3nUe/KBbNGjv8UwECC/D8EVFa0ySZxhqnq3LXICQxPYYc1U1hjAc+Jgc
         ZZN4B1ax0QaeDVvzJUU4k8elALn4U7qYdRBHPtxrEJBrT8T2vNaQT8cqZGCj5dEU/jYr
         SC9w==
X-Gm-Message-State: ANhLgQ2bVkEvac8LtODPwbtOnsbkr0cv5RLCwfxsws+LDMAKoPQDMy0x
	kn5WRHuEorpStKl/AA0OGy8=
X-Received: by 2002:a62:14d6:: with SMTP id 205mr5105271pfu.155.1584547616416;
        Wed, 18 Mar 2020 09:06:56 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id l6sm6744762pff.173.2020.03.18.09.06.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 09:06:55 -0700 (PDT)
Date: Wed, 18 Mar 2020 21:36:50 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com,
	lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: iio: adc: ad7192:
 Reformat lines crossing 80 columns
Message-ID: <20200318160649.GA23154@deeUbuntu>
References: <cover.1584505215.git.mh12gx2825@gmail.com>
 <50419988d636c90511a07da256c91aa3b3e33bff.1584505215.git.mh12gx2825@gmail.com>
 <20200318093158.192a27ce@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200318093158.192a27ce@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 18, 2020 at 09:31:58AM +0100, Stefano Brivio wrote:
> On Wed, 18 Mar 2020 09:56:59 +0530
> Deepak R Varma <mh12gx2825@gmail.com> wrote:
> 
> > Macro arguments are computed at the time of macro invocation. This makes
> > the lines cross 80 column width. Add variables to perform the
> > calculations before hand and use these new variable in the macro calls
> > instead.
> > 
> > Also re-indent enum members to address checkpatch warning / check messages.
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > ---
> >  drivers/staging/iio/adc/ad7192.c | 15 ++++++++-------
> >  1 file changed, 8 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> > index bf3e2a9cc07f..0265f6607d75 100644
> > --- a/drivers/staging/iio/adc/ad7192.c
> > +++ b/drivers/staging/iio/adc/ad7192.c
> > @@ -156,8 +156,8 @@
> >   */
> >  
> >  enum {
> > -   AD7192_SYSCALIB_ZERO_SCALE,
> > -   AD7192_SYSCALIB_FULL_SCALE,
> > +	AD7192_SYSCALIB_ZERO_SCALE,
> > +	AD7192_SYSCALIB_FULL_SCALE,
> >  };
> >  
> >  struct ad7192_state {
> > @@ -477,17 +477,18 @@ static ssize_t ad7192_set(struct device *dev,
> >  }
> >  
> >  static void ad7192_get_available_filter_freq(struct ad7192_state *st,
> > -						    int *freq)
> > +					     int *freq)
> >  {
> >  	unsigned int fadc;
> > +	unsigned int sync3_filter, sync4_filter;
> >  
> >  	/* Formulas for filter at page 25 of the datasheet */
> > -	fadc = DIV_ROUND_CLOSEST(st->fclk,
> > -				 AD7192_SYNC4_FILTER * AD7192_MODE_RATE(st->mode));
> > +	sync4_filter = AD7192_SYNC4_FILTER * AD7192_MODE_RATE(st->mode);
> 
> Have you read page 25 of the datasheet? Why is this called
> sync4_filter, with a 'y'?
> 

Sorry, I am not sure what you are referring to. Can you please elaborate
or point me to where the data sheet is located?

Deepak.

> -- 
> Stefano
> 

