X-GM-THRID: 6664640601666879488
X-Received: by 2002:a62:9a12:: with SMTP id o18mr149137pfe.114.1551772279404;
        Mon, 04 Mar 2019 23:51:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:5751:: with SMTP id h17ls7277020pgm.4.gmail; Mon, 04 Mar
 2019 23:51:18 -0800 (PST)
X-Google-Smtp-Source: APXvYqzS6AIYRGfwSIi0SXUfT9uFr1m2/6tvIzjHOR/cG5oQ352UdMUUTAnjErzqd6+ouByR6Bki
X-Received: by 2002:a62:e08d:: with SMTP id d13mr154617pfm.23.1551772278691;
        Mon, 04 Mar 2019 23:51:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551772278; cv=none;
        d=google.com; s=arc-20160816;
        b=AREQ2lQVJP0qkJF3axLPmAvjPGBsodOxcRJxzzNv+vO0PHkyJ0k1mKeP167yKCntCz
         UQqoA5769CpmCLiBNwrlt3v7I6hqfFAPE5zowaXnHiVxSwoDvdxs64lZPFxMDSJFVUmV
         ikmyZ07Q5r2/wkrOdO2HdIEMhrnuqc+XT4zquxQTQes9z7vQmWppHeAl+WnBlA4Gzz6N
         o9NeM9Ux8V/ATs7jAWd3c3PfJALa/4nnkRKPqfEMU7Nv3wza0kGdPiaPsb3Wyu/1WkNO
         ZU/Ag5SuRipQ9mEG4xACmc0BuKkWZcf7wgaNY6ItY2oV4dsCl1eFNCh2i03sOWwbamVI
         8vWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=iEeevACWInr5xJw6+DtP0TVAO/z4+C6IVQK3DyJMbgY=;
        b=Q++qssu4v9RbLtM0ZTFKM5ilAvKRWIv8RD8L1OnSJjbTfbMfjow0k0Ki42ZgwPTO/U
         wGkWwWK4Va3/cMtylGdZQU8NgJfESYYYpksRo0p9Vv1UipdNh6TTD6T7ee0iKpbAtRcX
         enS8NqU6UmL6JUCQ7eZqBjXf2fvrTAL6GnrIiJh2ES+BLPNOalqu78wg34TqDu4QNjAu
         omsTTPbHDPWZVf9vXXcTv8k+mlqsi4KG8uKJB919bLHSqLPKjnQzn1BmGgnoW2/fQx+R
         fk1Yk7n99ocZa0HE0G1x+PmySbBm7+16PQo4x9/5Q6rMnRAmMb7v1vX9n/dLqf9m95rL
         T5rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=a9JQy8cJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o23si381616pll.0.2019.03.04.23.51.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 23:51:18 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=a9JQy8cJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E3EF42082C;
	Tue,  5 Mar 2019 07:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551772278;
	bh=ouMaqItiC0u0Jc6ylI+xa0b2mou3fCHEEZ4OcS709uU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a9JQy8cJwC+Uo1qgW+IuVOsj9AneWXCwuoPXdR84qUoVyl7GaYPaWPLyb2aZ0vkKY
	 lm9G7EbXqNtx8VcAT9+wbHAAUSni8AjjGoB1Eqhu758bPPPb/K9iWagoMYi/IyzcY8
	 hycCvx3bEjnd5I7Y5CO9iZo5Uu1vXWu3zgyafFZk=
Date: Tue, 5 Mar 2019 08:51:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: sm750fb: Avoid multiple assignments
Message-ID: <20190305075115.GC6956@kroah.com>
References: <20190304183110.3702-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190304183110.3702-1-nishka.dasgupta@yahoo.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 05, 2019 at 12:01:10AM +0530, Nishka Dasgupta wrote:
> Avoid multiple assignments in the same line. Issue found with
> Checkpatch.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index e9f10c2669ea..739841c3b5d6 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -782,7 +782,8 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
>  		0x800f0 + (int)crtc->channel * 0x140;
>  
>  	pr_info("crtc->cursor.mmio = %p\n", crtc->cursor.mmio);
> -	crtc->cursor.maxH = crtc->cursor.maxW = 64;
> +	crtc->cursor.maxW = 64;
> +	crtc->cursor.maxH = crtc->cursor.maxW;

The original code is fine here.  I would just ignore this checkpatch.pl
message for this line.

thanks,

greg k-h

