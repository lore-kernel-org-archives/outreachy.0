X-GM-THRID: 6802694026822680576
X-Received: by 2002:aca:4d47:: with SMTP id a68mr2739776oib.56.1584526483999;
        Wed, 18 Mar 2020 03:14:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:fd02:: with SMTP id b2ls5498844oii.2.gmail; Wed, 18 Mar
 2020 03:14:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsTpzHdb/0PLLYv4DibR2jgfTSymJdt8kXievSekXjHLAAYVr/4mpopn0p/XRJkpyBjcHJH
X-Received: by 2002:aca:abcd:: with SMTP id u196mr2577316oie.86.1584526482877;
        Wed, 18 Mar 2020 03:14:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584526482; cv=none;
        d=google.com; s=arc-20160816;
        b=qhxA/emor8igBlg2D+HJ6R2YcXfNNRiYw7+FXuLlA1MkZVPz2mdn3sPu+JOSnO+k5f
         eIqTCwfD5qF6IqFpM8zWI8yoncHa+Re+KZNUYBPYpn8f/SBnC8QpgJpwazT2wt3ljCDB
         qrDbGB5KHiN/fKP/+Wo1rT166bBx6YNExjgdCIZzveX17tZlNRCT6ylzTsCerNLXLnRz
         jcd1MeDj1/foI524fR+hz5nqewCwUPXk+2itH0YJ9o+IawT3X453elBV3z/F8WhFv3WQ
         hND6RYjV2dO4MC4bTH9UTXc9rwIqCTckHltQeQCvF1zhNgdG+YUE7g8opdb0a8jaHoOS
         +93w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8MfmVJLkO9Comv8H8Dk2ztTVTgOkJHymZoJ38RQplHc=;
        b=HzMqQUR7Nmr7rsXFYVFvVneBYWZWnjApkDri0z2xeFg1xIbrun/4Yymh1nM6Ngb1qN
         NaWVERjGF02K5VYP/IpxNHkSD1vk/8wnofUVCmzupwQt10Tlkak7wF32GpPj2MYOVeYy
         UjZZZmArVnlpscpJbi8SfrwGaFy0fEu8fedRh2LU7XmpZo5j+lEZJ8YHEe3/JDLKyfPH
         dzXWJNIe7Wzy4+at/4G8WhmymlZku545s8repdVtjvcwTFMe/cs/moyZCbtri+gHp4/x
         mDeVEyOlcaciD5b2DBsOo7BnLIgm3JB5aKN6z1Xmd+7Vfar3DCGoxLaNPiSmZcZCyKGX
         Yltw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fqJx9nvL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d188si438625oig.0.2020.03.18.03.14.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 03:14:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fqJx9nvL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 82EB12076D;
	Wed, 18 Mar 2020 10:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584526482;
	bh=OzYDaAZQBlD9TU7TO4+OsxMUfJbfaXZuMRB+FIoGSiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fqJx9nvLirBdH0WwlVwYyMJ5BM111CVioIbSleKA1nI2x3pbTLANF+4nNLfzd126Y
	 CZJ2DLnm+TrxnFwWpfrjW6/aIMfhrg4wh4/Tp3iKfM1dImf4r3ZZ3Dk/Lc2nPM/6XT
	 7qH0TVin4i2IiQDafxtL/4EGRUZyZM/IQIrMaVJo=
Date: Wed, 18 Mar 2020 11:14:39 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v6] staging: rtl8192u: r8192U_wx: use netdev_warn()
 instead of printk()
Message-ID: <20200318101439.GA2082120@kroah.com>
References: <20200317165917.6260-1-lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200317165917.6260-1-lu@pplo.net>

On Tue, Mar 17, 2020 at 05:59:17PM +0100, Lourdes Pedrajas wrote:
> printk() is deprecated, use netdev_warn() instead, which is a message printing
> function specific for network devices.
> Issue found by checkpatch.
> 
> Suggested-by: Julia Lawall <julia.lawall@inria.fr>
> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
> Changes since v5:
> - Subject correction.

Thanks for sticking with this.

One further note, you should list _all_ the changes that have happened
over the series, v1-v6, in this list.  That makes it more obvious what
has happened over time.

I've queued this patch up now, no need to do it this time.

thanks,

greg k-h

