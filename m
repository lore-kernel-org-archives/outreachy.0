X-GM-THRID: 6950274232690409472
X-Received: by 2002:adf:9d48:: with SMTP id o8mr31813250wre.183.1618237353315;
        Mon, 12 Apr 2021 07:22:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:3544:: with SMTP id i4ls8084101wmq.2.canary-gmail;
 Mon, 12 Apr 2021 07:22:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzfAOf03Mj0JwXGGCeLnkooX4efZg+vvqNI6fzfp4lMW26NWhUi3u0kS1uq0mhJDOOSjTJF
X-Received: by 2002:a1c:f701:: with SMTP id v1mr27034522wmh.69.1618237351955;
        Mon, 12 Apr 2021 07:22:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618237351; cv=none;
        d=google.com; s=arc-20160816;
        b=riBiz8Yr05OpJ+8Z5S2CQqvzICGru7KcCCB91WpjKqTRKBRH942ViqPhv38C6IgxRn
         u/oYGeCaTOZ+ALCbo4UmRr4crrkbCbfjTSd7P5XvwfOBl7TU+1nfcqXMVxF51f0cWKaM
         5dqMvJswEWN5aSzbmurCML6qSK754N7VxgrLqrG93N7LjkuA6f8MnuSAZUSzDluIWxvY
         WCh1PAq+HKA2lEz+rKPXHt6qRLbfu3Rt13KAilJwrJV2useXtJ2NJhdP3RSrJqtQdc4d
         qClCEsUIJqBAVyttCSc6pnZKQiw+ZqxSGBzTaIWdGg9IqOjcQ10swJfjg31CIwVgXD62
         rynQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=w0U1xV/cg69zWo3yTJkxbqx/0/RtmRyRm+Ao5QR+xT4=;
        b=s/UIbkqLxilC/H+VFzRy0MYv5cVDT5LtkkYyHlawljgQIwiftwAptjPdiF87Uoy2qk
         CJ62oUo2BVVE51Bs5EvOQYBiHXzE9jNRHFkMqsf0mHzNtChTfmY/V01/2fLTA3M4ubQ7
         CpmdgIgqIpY3B1YT0fYWAhK9XG4H0vH1logZdRPv6KKDtHbJAiV5J/RcnLD1T7FB1n06
         yKfuXXKxHfkPJksAnp7pNjSm9h+Uskb44A/YPNisoceDCwfVYW0m+f8BOus+qS9eHvRZ
         a7FsL/zow6Xx8R8szUAcMVQS39wSgMGtuISah5rchtDErjCF/RjPMRWPJoCOFjRY8wZA
         CiYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=lHiXspLI;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id p65si7881wmp.0.2021.04.12.07.22.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 07:22:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=lHiXspLI;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=w0U1xV/cg69zWo3yTJkxbqx/0/RtmRyRm+Ao5QR+xT4=; b=lHiXspLIT5lh6yOcnX0EmpTJJ4
	2Mn0tSvcEMXvTDEIS0tIq6HDXSq5QlydXKh+Jw7HcWj4I5Cygf/gX6UySVk8wQJD/ZMabsY44Zap2
	hxWUThZJ+/LKt3JmS1Auis7CtAXXazAkHJGXqVBR1yOFz9itRDbHGyF9MAY4xz/rhDSgvng/fiSgy
	hRM2FCiB9gzFbBtCf5/FWX8lc5LI7FgZvjRmnEMhbrI683ONoO0GewcXlYYwnQwzF6SNW459T1vOH
	OXmo9HotIZk0/u4XD24Nt0XwtdieMhdYo3RiWsdwwBncAXqIVAfIKJ5p3c2hVc9P4giUqYC5T89uE
	fmwLk+qw==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lVxS2-004Ru2-85; Mon, 12 Apr 2021 14:22:10 +0000
Date: Mon, 12 Apr 2021 15:22:06 +0100
From: Matthew Wilcox <willy@infradead.org>
To: PEGGY TAWAH <tawahpeggy98@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: greybus: Remove a space
 because line is too long
Message-ID: <20210412142206.GL2531743@casper.infradead.org>
References: <20210412141329.GA31738@peggy-Lenovo-V130-15IKB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210412141329.GA31738@peggy-Lenovo-V130-15IKB>

On Mon, Apr 12, 2021 at 10:13:34AM -0400, PEGGY TAWAH wrote:
> checkpatch complained of line 182 too long in greybus driver,so i removed some spaces. CHECK: line length of 101 exceeds 100 colums

... next, we're going to have people complaining that the argument
doesn't line up with the opening '('.

The underlying problem is that the indentation is too deep.  Something
should probably be factored out into its own function, allowing the
indentation to start again at a single tab.

I'd suggest this probably looks like:

	if (gpiod_get_value(arche_pdata->wake_detect)) {
		if (!arche_platform_wake_boot_init(arche_pdata)) {
			spin_unlock_irqrestore(&arche_pdata->wake_lock, flags);
			return IRQ_WAKE_THREAD;
		}
	}

... and let you write arche_platform_wake_boot_init().

> Signed-off-by:  PEGGY TAWAH <tawahpeggy98@gmail.com>
> 
> ---
>  drivers/staging/greybus/arche-platform.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> index e374dfc0c92f..1bfec5fae849 100644
> --- a/drivers/staging/greybus/arche-platform.c
> +++ b/drivers/staging/greybus/arche-platform.c
> @@ -179,7 +179,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
>                                 if (arche_pdata->wake_detect_state !=
>                                                 WD_STATE_COLDBOOT_START) {
>                                         arche_platform_set_wake_detect_state(arche_pdata,
> -                                                                            WD_STATE_COLDBOOT_TRIG);
> +                                                                 WD_STATE_COLDBOOT_TRIG);
>                                         spin_unlock_irqrestore(&arche_pdata->wake_lock,
>                                                                flags);
>                                         return IRQ_WAKE_THREAD;
> --
> 2.17.1
> 
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210412141329.GA31738%40peggy-Lenovo-V130-15IKB.

