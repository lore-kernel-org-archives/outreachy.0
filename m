X-GM-THRID: 6335430862293696512
X-Received: by 10.157.42.168 with SMTP id e37mr2708381otb.24.1475085308941;
        Wed, 28 Sep 2016 10:55:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.91.212 with SMTP id g203ls647375itb.13.gmail; Wed, 28 Sep
 2016 10:55:06 -0700 (PDT)
X-Received: by 10.36.17.133 with SMTP id 127mr2866455itf.34.1475085306904;
        Wed, 28 Sep 2016 10:55:06 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id f12si2392591pfk.0.2016.09.28.10.55.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 10:55:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id r9so1676071paz.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 10:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=I+h7BKdrGLe3t19zJbxAJ27S/qfSbBqk7SIHAF0EtC0=;
        b=zvIxmM/CJXSWi6xUvHEceLoec76xcYaTeMmuyG3PMY85H/KaenjcckPX5EvQuRKDfj
         PGX77aIkcb61kHP4HaNWlvd6EInZ5lWpRCcZxPp+sebcl8s7bxBEtGe729JAGKMCJLLo
         4YrTBwanuSd1a+IzCGufa8zgE3F3zUhkn3GsNOmobaoW85gnqJNGCCJMQ5y8uCsjeDiJ
         2Y95CHaxVdjUXFMZeNx1p4J0suKZrkd+dMqeIUZuYCvIKpDoA7cQyoI/nBsu2e1vgZUK
         jt73Hh54oVfKo8eH3EdZv3iMpLYsaB57pdTCFEsvmgoGvIfqPojA/B6FZb9VqnRBCSAJ
         yNZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=I+h7BKdrGLe3t19zJbxAJ27S/qfSbBqk7SIHAF0EtC0=;
        b=U51c4LeP7jeFXLIJEksLZkaIX/wj7aauM7UgjDtizktWwl8gPquLw6Qiedq5HGQY0f
         kUYueRrtb/h6HqKBqi2RUrM4iKEKJw02yp9BPuHnH/HH2dMCI/VYUk0oZS4xm/mHsUFY
         1kr+X+83mB3VHS6f6OATwLSES5gPWpdPC5K7ZXPdEla6qIlutE3udicawEOal2mYjUPe
         kIhP+u7KxnjCS3H3d29vnuyWey+8ltJBUs04IJ/5XXEwyGJ9AGL6J+wITRU8hYNAq+1v
         5jNcmfSnYf+XO6KW/OKjYjWXjZyh0ebk6AV9vn3Gu++YcAhkJ6aoRvXU/Uwa6+s32liV
         +6gQ==
X-Gm-Message-State: AE9vXwNEf6vhJ8oHWoktgzMuQHIuWUaW7Niz66mwf9uVgQEAt65reqMMUex29kbXNBItwg==
X-Received: by 10.66.248.229 with SMTP id yp5mr59443098pac.31.1475085306526;
        Wed, 28 Sep 2016 10:55:06 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id n19sm14112287pfi.50.2016.09.28.10.55.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Sep 2016 10:55:06 -0700 (PDT)
Date: Wed, 28 Sep 2016 10:55:05 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Anchal Jain <anchalj109@gmail.com>
Cc: Michael.Hennerich@analog.com, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: gyro: add comment to
 mutex
Message-ID: <20160928175504.GA10225@d830.WORKGROUP>
References: <20160928170708.GA6196@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160928170708.GA6196@life-desktop>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 28, 2016 at 10:37:17PM +0530, Anchal Jain wrote:
> Fix the checkpatch.pl issues:
> CHECK: struct mutes definition without comment
                    ^^spelling
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>

Hi Anchal,  I'm going to be picky on these, because I sense you
are getting on a roll here and we should establish a pattern.

- see spelling above.
- include driver name in IIO commit paths.
  Caveat: if the subdir and driver names get so crazy long that you
  can't fit a good commit message, then leave off the subdir.
- tab out the comment instead of space.
- At first I thought tx and rx were kind of terse, but when I scroll
  up and see the comment above, it all makes sense. 
- I might have said 'protect transfer buffers'

Please update with the minor cleanups and resend to the wider
'CC list as suggested in your previous patch.  

alisons

> ---
>  drivers/staging/iio/gyro/adis16060_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
> index ab816a2..96230b6 100644
> --- a/drivers/staging/iio/gyro/adis16060_core.c
> +++ b/drivers/staging/iio/gyro/adis16060_core.c
> @@ -33,7 +33,7 @@
>  struct adis16060_state {
>  	struct spi_device		*us_w;
>  	struct spi_device		*us_r;
> -	struct mutex			buf_lock;
> +	struct mutex			buf_lock; /* protect tx and rx */
>  
>  	u8 buf[3] ____cacheline_aligned;
>  };
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160928170708.GA6196%40life-desktop.
> For more options, visit https://groups.google.com/d/optout.

