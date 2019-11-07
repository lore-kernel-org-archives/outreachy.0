X-GM-THRID: 6755994568036974592
X-Received: by 2002:a62:2b55:: with SMTP id r82mr4510916pfr.56.1573139146661;
        Thu, 07 Nov 2019 07:05:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ac93:: with SMTP id h19ls1498112plr.6.gmail; Thu, 07
 Nov 2019 07:05:45 -0800 (PST)
X-Google-Smtp-Source: APXvYqxBK4CCDITBonyGkSf4bXmkm/jozMTC0eohLMlrNHzI3ecB8KKy+hqgfYjHPQkZLyjafsNa
X-Received: by 2002:a17:902:36a:: with SMTP id 97mr4284194pld.83.1573139145406;
        Thu, 07 Nov 2019 07:05:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573139145; cv=none;
        d=google.com; s=arc-20160816;
        b=PuvPbiJn8T98bZciGmWJ72MMCgFwmv2uoXejtHn+hiLuS7ggxRRHbqTzr4R614ZFsU
         x9cOBCycAd4QEeRokFNI9AnDK0W0HROPWhxVbyN5Gws3I9zWerzlq+NRchxg7VZTINEc
         P2rFvsFiUDws05V4FQklq6j7yU+VgDKu7j7XS44GT3HsTJAoqGuFTee8EEiKRZ8ncNd1
         u6eV/vE4g/Uu0aJIxVa60615EQoHJuNpC5WajDOwyLS+pD/CMBYrjh3CRFWbvjKj+j0+
         nDLavH/TBnAQHfcWH4rvZVTsgXXxMwesbXHERlUU+IoCdYZGP4fn+nxxy+w2giFiXyNt
         cHvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Z2x8XcJFLLWXtXabQ0QBhMJZvhoCxxsMTNyIJt5n0sk=;
        b=bp+o2BXpQid8878soPiWumDzHQ7eWPcA1hE6GvZl4HFWu+DDjZXF3HxHQniHzTV2oq
         jkHhFWxA+MhvduEgMVcCBESqSq7p1J77h3JUdvX2Qb3V+D85LABNeDQXz1lE2Sn0SZtl
         dQvJLu0kAc5v5xeHcgFeSLbZr/DHocdiCAOTw8Ow9Aw2kjV2D+uB19nt0lHYLS7ysVbO
         gXgo5+irNl43Eg7zhOUVKRBlpdZ/5nicAR8+b0/mFQ3VG455MeyyzmqtyL7Lnvw2uWHU
         UkRAntoxf3HejY6is8WDbzzsdIZAOxkEoggqtCW93o/Mbnq0xZCEWI9yk9x0/tPDdewB
         yCoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="kUkzAVc/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f17si88079pgk.3.2019.11.07.07.05.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Nov 2019 07:05:45 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="kUkzAVc/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A368421882;
	Thu,  7 Nov 2019 15:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1573139145;
	bh=PJcKVLiEBk4IfQvG1Jcn1zCi/BiJUsx/Uz6cMYJImVY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kUkzAVc/KHB3qcWazVpOjR9sk9Tx4/qsP1lmL5fTvUw9l3z18AgqZWiEudsYi3bKR
	 oge7vmeiPmOzxPHa/jK/lB0kFToh15RsYQWwXwDHgtci8h733r7fetV20zU6pFF7/B
	 9vcAdoV4ae0ERIDQSbOVxcuC19mtfNqTlpIhH+CE=
Date: Thu, 7 Nov 2019 16:05:42 +0100
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Cc: Jules Irenge <jbi.octave@gmail.com>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 1/3] staging: wfx: replace uint32_t with u32
Message-ID: <20191107150542.GA154258@kroah.com>
References: <20191106010911.157294-1-jbi.octave@gmail.com>
 <12394833.1gViOatCiM@pc-42>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <12394833.1gViOatCiM@pc-42>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Wed, Nov 06, 2019 at 12:24:03PM +0000, Jerome Pouiller wrote:
> Hello Jules,
> 
> On Wednesday 6 November 2019 02:09:09 CET Jules Irenge wrote:
> > Replace kernel type uint32_t with u32.
> > As per recommendation of checkpatch tool.
> > 
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> >  drivers/staging/wfx/bh.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> > index 955ed3a1dd73..337af22b0150 100644
> > --- a/drivers/staging/wfx/bh.c
> > +++ b/drivers/staging/wfx/bh.c
> > @@ -239,7 +239,7 @@ static int bh_work_tx(struct wfx_dev *wdev, int max_msg)
> >   */
> >  static void ack_sdio_data(struct wfx_dev *wdev)
> >  {
> > -       uint32_t cfg_reg;
> > +       u32  cfg_reg;
> Why there are two spaces between u32 and cfg_reg?

Yes, that's not ok, I can't take this patch as-is for that reason alone.

> 
> > 
> >         config_reg_read(wdev, &cfg_reg);
> >         if (cfg_reg & 0xFF) {
> > --
> > 2.23.0
> 
> There are plenty of other occurrences of uintXX_t:
> 
>    $ git grep '\buint[0-9]*_t\b' drivers/staging/wfx | wc -l
>    628
> 
> Why do you solve this one particularly?
> 
> 
> In add, the driver use more often uintXX_t than uXX:
> 
>    $ git grep '\bu[0-9]\+\b' drivers/staging/wfx | wc -l  
>    171
> 
> In other parts of kernel, uintXX_t are not rare:
> 
>    $ git grep '\buint[0-9]*_t\b' | grep -v staging | wc -l 
>    94005
> 
> I have a slight preference for uintXX_t, because it is less specific to
> kernel (and because vim highlights uintXX_t but does not highlight uXX).

uintXX_t really doesn't make sense in the kernel, as the "namespace" is
wrong, but we tolerate it.  Ideally you will use the right types.

Also, use the vim-addon-linux-coding-style pluging, makes writing kernel
code using vim much easier.

thanks,

greg k-h

