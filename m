X-GM-THRID: 6330241382632914944
X-Received: by 10.66.75.36 with SMTP id z4mr3018369pav.39.1473877344197;
        Wed, 14 Sep 2016 11:22:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.71 with SMTP id d65ls1704635otb.16.gmail; Wed, 14 Sep
 2016 11:22:23 -0700 (PDT)
X-Received: by 10.129.165.14 with SMTP id c14mr3086316ywh.48.1473877343730;
        Wed, 14 Sep 2016 11:22:23 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id h124si1464828pfe.0.2016.09.14.11.22.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 11:22:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id pp5so1056983pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 11:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=sA+nsJwU3tadBn8795T6Oxx4YWPBx3DnKIrcjIDx/Sc=;
        b=rHeLvzhVtMx+HMAThQKXUhMql0oJ7lwvqgBzNa5Hm0hgaj0aVHG94B3Lfv9UmBHY1v
         z1awEG+RayRGTDqm1wZdIBzvQc0xBvjYoqnlAuVuIT+4KLzMuZpTahaVCN4UsKPVZ5lk
         eZc9KxueciYQF0rfoa9HmeWR7BupBRVXC/gpG7+1FVNo7izyGkAXCxxpIIj/nG4fQxD3
         l8N53CGl3ISfDHvtdgUIOcnJe1ytGPJlJsnu/71yQUXJUlaY6+gPAORUMgfgZWHd37Ns
         z39g8o1RT1iN+KYxho/XZj2helHWYpBalzlB917n/J97iJJ0xVagNeBuiI1vdH31Kx7l
         Xfzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=sA+nsJwU3tadBn8795T6Oxx4YWPBx3DnKIrcjIDx/Sc=;
        b=FvkQboFj0IxhVi4rtTT5QywfmZY2BEGVzjkbQObvGxW5VHcJpDeSpyYbeVk/wMpUA2
         9FMojn6rmbc0nOm/aTBTY2RfZpYVZ+2sOTekTsgEcuGdTLpzEqElCKM1Ihc59a8193Bl
         lqQsCgzZHRhvkEBYJOmQoxoqNvNwWAnzfkmjPiRMva2Ll8WGEL/b9W9yvs/hj2qzu2Se
         BadpmEVqx91Q+fJK9FeuizzANTxvaMnhRHFM0bDAXlE8pmI52PvDQgDjd4cueXTUuF5t
         IF4B/qfvcoH6fP2vcXUYr5TyAmd9vWPM8RZ9XBk6kDtejFruN1F7T4u0V4dTHHz96e/n
         SK5A==
X-Gm-Message-State: AE9vXwMf6iHmF7+TLGi98AN6qlI9fqHt4rrjVn9pMdvc6iWQJ8NbQtg9+f4XNjxn5Krdfw==
X-Received: by 10.66.83.138 with SMTP id q10mr7036732pay.54.1473877343517;
        Wed, 14 Sep 2016 11:22:23 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h74sm14031132pfa.91.2016.09.14.11.22.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 11:22:23 -0700 (PDT)
Date: Wed, 14 Sep 2016 23:52:15 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: iio: accel: Fix indentation
Message-ID: <20160914182214.GA30982@toblerone>
References: <20160914172924.GA27415@toblerone>
 <4bcaddb5-33eb-3e8a-9273-92f41ee6f4dd@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4bcaddb5-33eb-3e8a-9273-92f41ee6f4dd@metafoo.de>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Sep 14, 2016 at 07:33:23PM +0200, Lars-Peter Clausen wrote:
> Hi,
> 
> Thanks for the patch. Somebody else already send a patch for this a few
> weeks ago and the issue is no longer present in the IIO development tree.
>

Hi,

Thanks for letting me know. I'll take care next time.

> One comment on the subject line, it should include the driver name, e.g.
> like "staging: iio: sca3000: ...". Otherwise looks good.
>

Noted. Thank you.

Rehas

> - Lars
> 
> On 09/14/2016 07:29 PM, Rehas Sachdeva wrote:
> > This patch fixes the checkpatch.pl warning:
> > WARNING: Statements should start on a tabstop
> > 
> > Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> > ---
> >  drivers/staging/iio/accel/sca3000_core.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
> > index b5625f5..61f3241 100644
> > --- a/drivers/staging/iio/accel/sca3000_core.c
> > +++ b/drivers/staging/iio/accel/sca3000_core.c
> > @@ -412,7 +412,7 @@ static const struct iio_event_spec sca3000_event = {
> >  		},						\
> >  		.event_spec = &sca3000_event,			\
> >  		.num_event_specs = 1,				\
> > -	 }
> > +	}
> >  
> >  static const struct iio_chan_spec sca3000_channels[] = {
> >  	SCA3000_CHAN(0, IIO_MOD_X),
> > 
> 

