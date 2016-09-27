X-GM-THRID: 6334961343676809216
X-Received: by 10.129.37.11 with SMTP id l11mr7558115ywl.165.1474996025901;
        Tue, 27 Sep 2016 10:07:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.41 with SMTP id u41ls6227963ioi.27.gmail; Tue, 27 Sep
 2016 10:07:03 -0700 (PDT)
X-Received: by 10.36.254.193 with SMTP id w184mr1264187ith.27.1474996023710;
        Tue, 27 Sep 2016 10:07:03 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id f12si766378pfk.0.2016.09.27.10.07.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 10:07:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id my20so942854pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 10:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=b8x/FB3EU2U7mjSLw9nUWlSXIS3JHtzOUYKjTl/cv+U=;
        b=rLDSBteleON8VhI6ox9d8JHQhcC54d9HNNftVUg2uxW6fifYXC2xZfIw1TBIpMbjEC
         tr2Ve6fU0nh1QAA/USwyeaIX7OrWDXdVBQ1OEEdfAVxnIC6Fkpg9fydC62HwwSLsY+qT
         wBU8Z/0XwH94fhha00Eluqepg++U8uqJJXeHY09Xs3TBdh5jObNva+Ot3uS7DwmG6cNZ
         clGUxJ5NN9gt6tChmFk7Imod9U6ux0ynzH6cWU5owvzD+HU04B5RNJdvhQMhGlPiwJn8
         pmU/OLK6E9aZYV/8sR/HBXO6Y+vdGdJvwwuhakT5oL5kP5bioTE1b2ads+E6l3TKEO07
         frPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=b8x/FB3EU2U7mjSLw9nUWlSXIS3JHtzOUYKjTl/cv+U=;
        b=myfuLvzWMwjYC0CPPni9/2BPK9Uff+1ZQIuPrsT46i4BunzYuJ0okCQ7V4UEX+A7RD
         RrjU/Z5rTj6VEaG58SOqw4lUK6Rned67o70K2Fzluz/qJ44cgXGbuxxN7c/wMvKk3BKC
         TL/uV5/Y0GnnGpcGjFOP/HN5wQR1kzM2tuAMPfWgfJ/RN3ulfJe9QF5j9rvDJh8BonyR
         BeEBLXsf0kQGhcW3igGmnTzUQhXtIzVKfRX2yFZ8mP1JJAjiYQ6dfiSKJs7aIXpc72Q7
         O8MCrCUENqTg0yEOcgPtBIW5+ozTDTsqv7yVfwf3zwuwbI9B1UWQ66JpI1NbsaJnvmzf
         9g/g==
X-Gm-Message-State: AE9vXwN7Jw/DHaX8EoM6CDWB7wTPMo09+ji8KVGbRiM+yAELfayBkKV0NkX45EUY7G0CxA==
X-Received: by 10.66.149.166 with SMTP id ub6mr49619175pab.137.1474996023547;
        Tue, 27 Sep 2016 10:07:03 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id wa9sm6264076pac.35.2016.09.27.10.07.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Sep 2016 10:07:03 -0700 (PDT)
Date: Tue, 27 Sep 2016 10:07:02 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Anchal Jain <anchalj109@gmail.com>
Cc: gregkh@linuxfoundation.org, Michael.Hennerich@analog.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: cdc: add comment to
 mutex
Message-ID: <20160927170701.GA18239@d830.WORKGROUP>
References: <20160927104504.GA13155@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160927104504.GA13155@life-desktop>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Sep 27, 2016 at 04:15:12PM +0530, Anchal Jain wrote:
> Fix the checkpatch.pl issues:
> CHECK: struct mutes definition without comment
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>

Ahah ;) I've been wondering when someone would get around
to these.  There are a lot of these CHECK's in IIO.

Following on Julia & Greg's comments, you do need to 
explore what the lock is for and give a succinct comment.

Unfortunately, when you: git grep "struct mutex", even in 
upstream iio, you won't find too many examples...but you'll
find a few.  Usually, simply say /* protect <something> */

Fortunately, in this case, there is a comment for it, just
in the wrong place - scroll up. That makes your task easier,
although I still would suggest condensing it to a short phrase that
fit adjacent to the definition.

alisons

> ---
>  drivers/staging/iio/cdc/ad7150.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
> index f6b9a10..88c6ebe 100644
> --- a/drivers/staging/iio/cdc/ad7150.c
> +++ b/drivers/staging/iio/cdc/ad7150.c
> @@ -78,7 +78,7 @@ struct ad7150_chip_info {
>  	u8 mag_timeout[2][2];
>  	int old_state;
>  	char *conversion_mode;
> -	struct mutex state_lock;
> +	struct mutex state_lock; /*generic mutex for cdc and drivers*/
>  };
>  
>  /*
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160927104504.GA13155%40life-desktop.
> For more options, visit https://groups.google.com/d/optout.

