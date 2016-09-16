X-GM-THRID: 6330141489404837888
X-Received: by 10.157.12.201 with SMTP id o9mr10813944otd.3.1474038955601;
        Fri, 16 Sep 2016 08:15:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.205 with SMTP id t13ls418765otd.20.gmail; Fri, 16 Sep
 2016 08:15:55 -0700 (PDT)
X-Received: by 10.157.22.183 with SMTP id c52mr226096ote.149.1474038955201;
        Fri, 16 Sep 2016 08:15:55 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id h124si4322777pfe.0.2016.09.16.08.15.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 08:15:55 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::241 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c00::241 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x241.google.com with SMTP id 21so2312095pfy.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 08:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OdXZPymD2ZiywSXOnAXgGMEZcf0LurlXL5wgCj1f18g=;
        b=1sNPicj67KwecvnwDmmTKjpQk5tFJIjGUyRuY6L2KrUScGSl2m9QAyynmeLupW4gZl
         6/PGrGRrmpipmHlID7VAxWejDpzBQK2MWKTFlgx4WEMSMnK7+gfCzqVW75CNzbv4YOVh
         nQl9Lk2i+/HJHgGUJDYQSO3ZSjxA1iEFlKPSKpdVFGtcOKxMwrHTPFZuIRZNy+t123gJ
         M7+Ap6Z/j+VIJJhlvDChbdVAWf+LdWB2XgC1HS7AHyR8nHhxQQU0pl3xd707s03HxajA
         WJJ//mm0rw95AE562/4ajdzVDKW8kBOseOVoIgiHLmuZtQmvNDButNJy/xpKcAwIOmHb
         0A3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OdXZPymD2ZiywSXOnAXgGMEZcf0LurlXL5wgCj1f18g=;
        b=W9q3n1jXEamM2Y5QEbTNcGSfc5eAUWh3cd6kuQcPJiCYXEBoW/9OfqBAakWSFTenz1
         u9Fd8XxC3JwDgfpK08kLZBzqcX+M+i4KEF5ZIvZUGesRbnF7BFZAw4YFCI7r/JJDD4OX
         yEahlrBH51WIsuHiw3eZJc0PIXzd0X/wVpFVGktZC6aTJdkUfyFqSf9LdVUAxrehuCkt
         X5F/DSKu4sCRbONKzsMIGZGRpwZDaepacNt4U4Dudn8H8RYnLg0hnX5AIcSOtssMil0l
         OKRPNIXUYkGxEwDRRKYl15MKmmuozVY+rk+84kayhF+dcxqvIrgltE5mfs8JXqxgJdUB
         5/MQ==
X-Gm-Message-State: AE9vXwPgyAuHR50L1AKCaCj2BPvEuXNQVep2pzhAOuN1ht4glvWr5xoZoxv9+3LDa3nnavD6
X-Received: by 10.98.220.93 with SMTP id t90mr23951588pfg.30.1474038954855;
        Fri, 16 Sep 2016 08:15:54 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2001:558:6045:106:7d84:83db:c3b2:274a])
        by smtp.gmail.com with ESMTPSA id ci9sm13016733pad.34.2016.09.16.08.15.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Sep 2016 08:15:54 -0700 (PDT)
Date: Fri, 16 Sep 2016 08:15:53 -0700
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] Staging: iio: adc: Add space around '-'
Message-ID: <20160916151553.GA13367@katie-Inspiron-5748>
References: <20160914110228.GA3269@sandhya>
 <f350e223-7d5a-493e-9f23-836a2af7f86d@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f350e223-7d5a-493e-9f23-836a2af7f86d@googlegroups.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Sep 16, 2016 at 08:08:51AM -0700, Katherine Dunne wrote:
> 
> 
> On Wednesday, September 14, 2016 at 4:01:57 AM UTC-7, Sandhya Bankar wrote:
> >
> > Add space around operator '-' . 
> > This patch is found by checkpatch.pl script . 
> > CHECK: spaces preferred around that '-' (ctx:VxV) . 

Hi Sandhya,

This is a false positive from checkpatch. To save you
some time here is the response from Jonathan:

"Just to explain a bit more.  Checkpatch is assuming that it is looking
at two parameters. It's not. That's a string being passed into the
macro.  It ultimately forms a file name in sysfs. 

p.s. We get patches for this from time to time ;(  Unfortunately
it's a somewhat obscure case for checkpatch."

Regards,
Katie

> > Signed-off-by: Sandhya Bankar <bankarsa...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/iio/adc/ad7192.c | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> >
> > diff --git a/drivers/staging/iio/adc/ad7192.c 
> > b/drivers/staging/iio/adc/ad7192.c 
> > index 1cf6b79..5688b29 100644 
> > --- a/drivers/staging/iio/adc/ad7192.c 
> > +++ b/drivers/staging/iio/adc/ad7192.c 
> > @@ -391,7 +391,7 @@ ad7192_show_scale_available(struct device *dev, 
> >  } 
> >   
> >  static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available, 
> > -                             in_voltage-voltage_scale_available, 
> > +                             in_voltage - voltage_scale_available, 
> >                               S_IRUGO, ad7192_show_scale_available, NULL, 
> > 0); 
> >   
> >  static IIO_DEVICE_ATTR(in_voltage_scale_available, S_IRUGO, 
> > -- 
> > 1.8.2.3 
> >
> >


