X-GM-THRID: 6955401561206947840
X-Received: by 2002:a1c:4482:: with SMTP id r124mr4129354wma.42.1620135764419;
        Tue, 04 May 2021 06:42:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f68b:: with SMTP id v11ls1387306wrp.2.gmail; Tue, 04 May
 2021 06:42:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxK2hMkaRoR452MJNaSM2uNuV9Y+4YIvz7CjZma3NqVL3vmoa7WhYYTatzDISAAIXnTGZNB
X-Received: by 2002:a5d:4532:: with SMTP id j18mr28045079wra.223.1620135762905;
        Tue, 04 May 2021 06:42:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620135762; cv=none;
        d=google.com; s=arc-20160816;
        b=Sg0p4rmqvA0/YjixPGOtja+Qrdc+nxVtN+bnq7aejX7aapORiFTMrV5gUdexD58inV
         JZNUYOTrxyrpfDRKeYrjjoHh+5YNHqhdOSYOWjx96YQi8e0nehg8/hhm6vvev9Ih0tcX
         jWTAtG/s2sTkGDnjM8Gog5tSODp1KRZtsO5Rd5UVklO/q7pKh61JsPrwx3Jpend1FX+i
         rexzPZRfIGKObVHDC5U8F3a+DBsWz02giVNEZ8sasLz4zrTZLIxYl5pMzWW6sZL705fd
         TAr6Mw+1FRaIAhMNwhY26T5AwhaRKaldYstz+Dl49+47HJMGDa9Gs4haf249kLVvvq0N
         H56Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/A7CKIJkD9/yQn75x3dVFpMhloUMd6NMum1pcYmMTeo=;
        b=X0bO2e9pocskFFV90cKrTZObfuryIKhYUhzrDYSsHXKTTehhI6zVhouxcX7C3GjeY3
         ReaO9Uh/f0/0wsbHc6EdF+sGJyrISIBIegIO6R/OijgXHpu9GozQDuKtb0z6zfDNmVKD
         TDELJxHVn7rLE7+VdXK47TQccCQtisiERpTWhJpRoE4PgRmhpCRvU5NMO/5bEKYDQJEI
         zR3t+a2e8L6aP4WyYXmjo8T9SIJ80gMSq8p9l7uyZYqwx6d0MnmNdkpCinibRSefLyPl
         4XZORj2w6iFl6dVQiWAnFQAkHuFhw302H2sgNKG0rQR+bGEK2nHv6IhYavMNTy2GsBWl
         A/lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=jvpKksiS;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id l5si128213wrs.0.2021.05.04.06.42.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 06:42:42 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=jvpKksiS;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=/A7CKIJkD9/yQn75x3dVFpMhloUMd6NMum1pcYmMTeo=; b=jvpKksiSRZ3SeFHAQJboopnq+B
	GNVKKVYHA+/40bO3bIePcpj/KfWaYqe0jurrKqmnvZqC7G0gvaoafckGZQ12H29Yk+2LJ0WI/t3k6
	6dbLoP2J4yVzOXInItFRlDUE0xlracOF0UQiPHEVIRO6eUS2zRUQpTHDH1NuZP5CBRxeGUnF0KdAl
	4xAeazZqmb4v/Xec1LOews7bHxyGotuQUgHlezxecR1U0A55zxlXw1hBxF18nSem9tPCgRYYwuo+s
	Vn2R2uhiO5e4GT+2MQ3uuUvmIAufnPIvBf6tg0WpOxPspmH+A7rcmT7JP1NJhaJgvbZtJhDufWRYX
	qkrcoqLg==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1ldvJY-00Gd4j-CY; Tue, 04 May 2021 13:42:22 +0000
Date: Tue, 4 May 2021 14:42:16 +0100
From: Matthew Wilcox <willy@infradead.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	sparmaintainer@unisys.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v7] staging: unisys: visorhba: Convert module from IDR to
 XArray
Message-ID: <20210504134216.GG1847222@casper.infradead.org>
References: <20210504133253.32269-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210504133253.32269-1-fmdefrancesco@gmail.com>

On Tue, May 04, 2021 at 03:32:53PM +0200, Fabio M. De Francesco wrote:
> Changes from v6; Added a call to xa_destroy() that I had forgotten.

What?  No!  Go back and re-read what I wrote about this previously.

> +static int setup_scsitaskmgmt_handles(struct xarray *xa, struct uiscmdrsp *cmdrsp,
>  				       wait_queue_head_t *event, int *result)
>  {
> -	/* specify the event that has to be triggered when this */
> -	/* cmd is complete */
> -	cmdrsp->scsitaskmgmt.notify_handle =
> -		simple_idr_get(idrtable, event, lock);
> -	cmdrsp->scsitaskmgmt.notifyresult_handle =
> -		simple_idr_get(idrtable, result, lock);
> +	int ret;
> +	u32 id;
> +
> +	/* specify the event that has to be triggered when this cmd is complete */
> +	ret = xa_alloc_irq(xa, &id, event, xa_limit_32b, GFP_KERNEL);
> +	if (ret) 
> +		return ret;
> +	else
> +		cmdrsp->scsitaskmgmt.notify_handle = id;

This 'else' is actively confusing.

> +	ret = xa_alloc_irq(xa, &id, result, xa_limit_32b, GFP_KERNEL);
> +	if (ret) {
> +		xa_erase_irq(xa, cmdrsp->scsitaskmgmt.notify_handle);
> +		return ret;
> +	} else
> +		cmdrsp->scsitaskmgmt.notifyresult_handle = id;

Ditto.


