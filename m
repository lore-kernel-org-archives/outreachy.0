X-GM-THRID: 6805399652543758336
X-Received: by 2002:aca:5508:: with SMTP id j8mr4264308oib.71.1584553972637;
        Wed, 18 Mar 2020 10:52:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:2425:: with SMTP id k5ls7241480ots.2.gmail; Wed, 18
 Mar 2020 10:52:51 -0700 (PDT)
X-Received: by 2002:a9d:3a45:: with SMTP id j63mr2619406otc.71.1584553971194;
        Wed, 18 Mar 2020 10:52:51 -0700 (PDT)
Received: by 2002:aca:5657:0:0:0:0:0 with SMTP id k84msoib;
        Wed, 18 Mar 2020 09:22:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vusg1NuyJs6f1lDZaxPWb8AfgUE7R/oc3u5DaJRJRSX9aNX/+QjRAlF47U+hqAxHb8sbGEj
X-Received: by 2002:a17:902:b70a:: with SMTP id d10mr4394042pls.51.1584548566908;
        Wed, 18 Mar 2020 09:22:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584548566; cv=none;
        d=google.com; s=arc-20160816;
        b=rOPNUvGXvXg4QU0e5QU70Kx7UF0nY6FIhoQreK7TRd+2yj4z1tXbxLV6QAnCJssGSx
         GDvj4kOCUS+Qsh8/qGVMVBkhxh2oPKcE8L7SCWPsQqxFIJnqmGoxvcDjWp/qMQtjqXxu
         zywp0xgVaJ25hecBl1UUlLR1bd3ToJEM/2CONT4ExIiRseH9uZ+KqiA3bfrM1loYt+aI
         cNun+mFhnkh7HEbU2Z6fgF3vOObcwGoUCfIoAUYPvi16BG1KH6L6WMoXZWfZNjQgSZ6/
         Sw61P3AX80B7rHGL6lWKH1slNkmks+OnT9pEH1AXHTNH/55eGHH6OnC1Z+yOgX+FyI8q
         t0kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :subject:cc:to:from:date:message-id:dkim-signature;
        bh=s3CKavgybeEOpXAZe+xBIGcFk7Vj/l1+eTJ8QUFIoJs=;
        b=Kv4Tii3VlWvhlSgCsv7grbauqInuPt7Cq9cDkI1joFbZ180d/kdNuAnJN8dWqsAiq+
         ar8ipun5ljUdbWSVeaolC2qD3y6KxGfgmmi6jkszLlN/Vt6IWT7t7xBk/oilaeWztqLn
         pDvpNiELURfYgqBy1FVGo3t8q+jJJbAal41KpGYS4VMKQib6ujrBx7vb1r/LVIXlxx2l
         31cPddZ7XTyB0xT/geMEqjOJClEsy2SzBUTBO+cMRbzkL0esOLHsuACjf3dsT6PL82kk
         oxJQ4Dq0hNOOo2l8xa2/d1y5+kmu5qgbEQk9reWz+kNFbPu7QslmgssKOXc277lJTOVJ
         3wKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yxge4Ry5;
       spf=pass (google.com: domain of rohitsarkar5398@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=rohitsarkar5398@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <rohitsarkar5398@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id a141si308742pfd.5.2020.03.18.09.22.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 09:22:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of rohitsarkar5398@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yxge4Ry5;
       spf=pass (google.com: domain of rohitsarkar5398@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=rohitsarkar5398@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id v13so1561249pjb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 09:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=s3CKavgybeEOpXAZe+xBIGcFk7Vj/l1+eTJ8QUFIoJs=;
        b=Yxge4Ry5vFOHN/E6WRoS1R820nnS6WJDZq9mjgaZLOrnbqWkKFIp8dPZVt//BWqS0r
         5Z2azsstxdYpDTnytEEpvmzQwbz7QdePieWGNQkT90JaQaPGtLDDPityknQdXpD96o7Z
         CpcuyC4Zb6Q2eYS16bz/6gtvs+6klzKe45WaFNPYyYgAKHkO+dXdffvu3JpS2CFGdpDt
         KQjfXzHO8fya59guzla/8qjh2/XCGZBVI4u3F/c3pUL4aDzOQjQFhwVvmXBS8N2yOuM4
         B5OyT3KdQFQMiccd1fhZ9FYQ2IZETmWQ8E8uJyriGXAdQt9oLJgOYf05c/K7MwmzDi98
         WXqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=s3CKavgybeEOpXAZe+xBIGcFk7Vj/l1+eTJ8QUFIoJs=;
        b=hjUP+G+BfkPi9FstyAGRKGy8Tk58PIbsyPydnt6JAVFJVpKGHu7QPiEBrpH6VcT12e
         CZ9McBIduhC3TamSyeh2DYW+u3ZP+g8uFChbnw1JmE8Qcq9SoMAK+Lci0AdDc5Cfce6O
         X1u7sIceUTbpLHBkKfjfIapseOHHLRYWYn0NHimQBarrxB/j+XPoxPYxUhB8ZaiA9bV+
         IoQKDPVH4JZjSAeJxrYX0JcYvukQAkFyMSlLBaLJ/5hZBIjAim1wiBbJ75GS+cltOGjw
         /o2S4AlKqQRmNIZWeWASPfPBnyRslIBWSpNCg1jli1g053ilTvDFSlFeouwQ+Fn4QBxN
         6iQA==
X-Gm-Message-State: ANhLgQ3AGw1IPP7NEgtFyQU45IlBdFXhJwnNKvBizz9GkXjzhRU8BXTA
	j94kKnAskZYSVGeLH1CuMlc=
X-Received: by 2002:a17:902:788b:: with SMTP id q11mr3719212pll.20.1584548566539;
        Wed, 18 Mar 2020 09:22:46 -0700 (PDT)
Return-Path: <rohitsarkar5398@gmail.com>
Received: from SARKAR ([43.224.157.42])
        by smtp.gmail.com with ESMTPSA id a19sm7223462pfk.110.2020.03.18.09.22.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 09:22:45 -0700 (PDT)
Message-ID: <5e724ad5.1c69fb81.7d54e.9f63@mx.google.com>
X-Google-Original-Message-ID: <20200318162241.GB10427@rohitsarkar5398@gmail.com>
Date: Wed, 18 Mar 2020 21:52:41 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: DEEPAK VARMA <mh12gx2825@gmail.com>
Cc: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: iio: adc: ad7192:
 Reformat lines crossing 80 columns
References: <cover.1584505215.git.mh12gx2825@gmail.com>
 <50419988d636c90511a07da256c91aa3b3e33bff.1584505215.git.mh12gx2825@gmail.com>
 <20200318093158.192a27ce@elisabeth>
 <20200318160649.GA23154@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200318160649.GA23154@deeUbuntu>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 18, 2020 at 09:36:50PM +0530, DEEPAK VARMA wrote:
> On Wed, Mar 18, 2020 at 09:31:58AM +0100, Stefano Brivio wrote:
> > On Wed, 18 Mar 2020 09:56:59 +0530
> > Deepak R Varma <mh12gx2825@gmail.com> wrote:
> > 
> > > Macro arguments are computed at the time of macro invocation. This makes
> > > the lines cross 80 column width. Add variables to perform the
> > > calculations before hand and use these new variable in the macro calls
> > > instead.
> > > 
> > > Also re-indent enum members to address checkpatch warning / check messages.
> > > 
> > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > ---
> > >  drivers/staging/iio/adc/ad7192.c | 15 ++++++++-------
> > >  1 file changed, 8 insertions(+), 7 deletions(-)
> > > 
> > > diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> > > index bf3e2a9cc07f..0265f6607d75 100644
> > > --- a/drivers/staging/iio/adc/ad7192.c
> > > +++ b/drivers/staging/iio/adc/ad7192.c
> > > @@ -156,8 +156,8 @@
> > >   */
> > >  
> > >  enum {
> > > -   AD7192_SYSCALIB_ZERO_SCALE,
> > > -   AD7192_SYSCALIB_FULL_SCALE,
> > > +	AD7192_SYSCALIB_ZERO_SCALE,
> > > +	AD7192_SYSCALIB_FULL_SCALE,
> > >  };
> > >  
> > >  struct ad7192_state {
> > > @@ -477,17 +477,18 @@ static ssize_t ad7192_set(struct device *dev,
> > >  }
> > >  
> > >  static void ad7192_get_available_filter_freq(struct ad7192_state *st,
> > > -						    int *freq)
> > > +					     int *freq)
> > >  {
> > >  	unsigned int fadc;
> > > +	unsigned int sync3_filter, sync4_filter;
> > >  
> > >  	/* Formulas for filter at page 25 of the datasheet */
> > > -	fadc = DIV_ROUND_CLOSEST(st->fclk,
> > > -				 AD7192_SYNC4_FILTER * AD7192_MODE_RATE(st->mode));
> > > +	sync4_filter = AD7192_SYNC4_FILTER * AD7192_MODE_RATE(st->mode);
> > 
> > Have you read page 25 of the datasheet? Why is this called
> > sync4_filter, with a 'y'?
> > 
> 
> Sorry, I am not sure what you are referring to. Can you please elaborate
> or point me to where the data sheet is located?
> 
> Deepak.

Hey Deepak,
You can find the datasheet for ad7192 here https://pdf1.alldatasheet.com/datasheet-pdf/view/988287/AD/AD7192.html

Thanks,
Rohit

