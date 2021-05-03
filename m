X-GM-THRID: 6955401561206947840
X-Received: by 2002:adf:ebcc:: with SMTP id v12mr27004305wrn.389.1620066426544;
        Mon, 03 May 2021 11:27:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fb47:: with SMTP id c7ls2232993wrs.0.gmail; Mon, 03 May
 2021 11:27:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx9nXjFg8flwuYzxivz/QWJPTyI/vXYvNOkuaDaNS0t0UaAEIiYZf8neGJANDsTeX5/YFoP
X-Received: by 2002:a5d:4e06:: with SMTP id p6mr14682715wrt.378.1620066425241;
        Mon, 03 May 2021 11:27:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620066425; cv=none;
        d=google.com; s=arc-20160816;
        b=icQ4jnh/ohJPhxNRef5Dp2A8+eBG15Q8mqIyQhfxhHODenXortLfdQ06QPXldqrA9I
         I01LcDitR917Z+lr5ptShrjA6urZ5CoeTkzrOcQzG1OUCtHEQkTVSVBMD1/wJAQIAcxk
         sqaMIAi9AWychZJFtaf7jNvF2qDMpnp2RAbKXNj0HCP/80UI18sztKGLs6mhEsduiSni
         13M9fpbUvchQiE9rnMNEgnCLJ0u8iMQQHUoRrdYxwMKdXjefjzvvZZ6M+4KI+2iIRyib
         IMn0AqqkvSPJEn8STxbVkZTkzBZk5MRt/EgHD2T+MxU8y5NOcDmFqlScnE1k9eiwDzu0
         T2Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=glt/cPP/fwoiLZAKN8q4fKpIiWmgqcVElTx4ldgtY9I=;
        b=w6An+ioY0J2N3URCEkNLfo4HjYqde6zU+pR4TZ37TUNmGDS41nAMh33En29lw1vVj0
         qSsV+fwfNeaIq29c36o7xMxDfSEKQU0jyw4Nzox29DTXXGnPTPnoTPxoVY68GWgxZrxS
         2FxsNvmqiJ0s+T9Ifw6yA7peCKE4VhZviEwWGM+ryRF0U9YluLQgb20LiOaVHFv8s3mw
         MSOqnzV99Jp0su3XDoJF+dWHrZ7RfBNOpC33/Q+Bu1hZx+RT2ENJWHpcY2ZSRV2AQlkz
         YvnYPxB2+I7ryb5pbrrrBxTodQeHpLGDwrU3wyAXlv0ggBytawOdJuXzyFnPzA4yutkC
         n5qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=nSnAGfJw;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id c9si25342wml.2.2021.05.03.11.27.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 May 2021 11:27:05 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=nSnAGfJw;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=glt/cPP/fwoiLZAKN8q4fKpIiWmgqcVElTx4ldgtY9I=; b=nSnAGfJwVU17YjZ0fYYRQa/Gwa
	hiK5SHRQoaI0ffOzHpYS4poQMqa+fx9Gr6LCXrAIAfA8ue08iHfpBdI+bXN5R89EdGaoEbw/GIekP
	f1JM0tpQloj3aMnJcQ+f+Bx0GNjHuCAt3WUU7NPuPzJl6lm3PiZzj9FkYH2xvFP6lE+82CvmOiqhu
	QDsZdkNXtKwlAuvFjVfAmFE72ID85MYAkvsHnq80jYWPwbgnuF2IjCYZbEKRORoLaF+UqSHyE+q4w
	OS536RsOWxnO212Aj3zkAZ1w+0kPwATKuTD/yX3p7HKtDrnNwACkGIO0QR+cBQS3uFUO17aAvro3L
	BtczUkTg==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lddH3-00FTZ2-Au; Mon, 03 May 2021 18:26:40 +0000
Date: Mon, 3 May 2021 19:26:29 +0100
From: Matthew Wilcox <willy@infradead.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Outreachy kernel] [PATCH v5] staging: unisys: visorhba: Convert
 module from IDR to XArray
Message-ID: <20210503182629.GE1847222@casper.infradead.org>
References: <20210427150719.30841-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210427150719.30841-1-fmdefrancesco@gmail.com>

On Tue, Apr 27, 2021 at 05:07:19PM +0200, Fabio M. De Francesco wrote:
> Converted visorhba from IDR to XArray. The abstract data type XArray is
> more memory-efficient, parallelisable and cache friendly. It takes
> advantage of RCU to perform lookups without locking.

I think the commit message could use a little more work.  The advantage
of the XArray over the IDR is that it has a better API (and the IDR
interface is deprecated).

> -static void setup_scsitaskmgmt_handles(struct idr *idrtable, spinlock_t *lock,
> -				       struct uiscmdrsp *cmdrsp,
> +static void setup_scsitaskmgmt_handles(struct xarray *xa, struct uiscmdrsp *cmdrsp,
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
> +	ret = xa_alloc_irq(xa, &id, event, XA_LIMIT(1, INT_MAX), GFP_KERNEL);
> +	if (ret == 0)
> +		cmdrsp->scsitaskmgmt.notify_handle = id;
> +	ret = xa_alloc_irq(xa, &id, result, XA_LIMIT(1, INT_MAX), GFP_KERNEL);
> +	if (ret == 0)
> +		cmdrsp->scsitaskmgmt.notifyresult_handle = id;
>  }

I think there's a preexisting bug here that you haven't fixed ;-)

Think through the failure case -- if we fail to allocate an ID, then we
can't send the command, because it won't be able to notify on completion.
So I'd start out by making this function return an int (0 on success,
errno on failure).  Then if the first one succeeds and the second fails,
free the first one before returning an error.

>  /*
>   * cleanup_scsitaskmgmt_handles - Forget handles created by
>   *				  setup_scsitaskmgmt_handles()
> - * @idrtable: The data object maintaining the pointer<-->int mappings
> + * @xa: The data object maintaining the pointer<-->int mappings
>   * @cmdrsp:   Response from the IOVM
>   */
> -static void cleanup_scsitaskmgmt_handles(struct idr *idrtable,
> +static void cleanup_scsitaskmgmt_handles(struct xarray *xa,
>  					 struct uiscmdrsp *cmdrsp)
>  {
>  	if (cmdrsp->scsitaskmgmt.notify_handle)
> -		idr_remove(idrtable, cmdrsp->scsitaskmgmt.notify_handle);
> +		xa_erase(xa, cmdrsp->scsitaskmgmt.notify_handle);
>  	if (cmdrsp->scsitaskmgmt.notifyresult_handle)
> -		idr_remove(idrtable, cmdrsp->scsitaskmgmt.notifyresult_handle);
> +		xa_erase(xa, cmdrsp->scsitaskmgmt.notifyresult_handle);
>  }

These can then be unconditional, because cleanup_scsitaskmgmt_handles()
won't get called unless we sent the command.

>  /*
> @@ -284,8 +257,7 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
>  
>  	/* issue TASK_MGMT_ABORT_TASK */
>  	cmdrsp->cmdtype = CMD_SCSITASKMGMT_TYPE;
> -	setup_scsitaskmgmt_handles(&devdata->idr, &devdata->privlock, cmdrsp,
> -				   &notifyevent, &notifyresult);
> +	setup_scsitaskmgmt_handles(&devdata->xa, cmdrsp, &notifyevent, &notifyresult);

This needs to check the result from setup() and decline to send the
command if it fails.

>  	/* save destination */
>  	cmdrsp->scsitaskmgmt.tasktype = tasktype;
> @@ -311,14 +283,14 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
>  	dev_dbg(&scsidev->sdev_gendev,
>  		"visorhba: taskmgmt type=%d success; result=0x%x\n",
>  		 tasktype, notifyresult);
> -	cleanup_scsitaskmgmt_handles(&devdata->idr, cmdrsp);
> +	cleanup_scsitaskmgmt_handles(&devdata->xa, cmdrsp);
>  	return SUCCESS;
>  
>  err_del_scsipending_ent:
>  	dev_dbg(&scsidev->sdev_gendev,
>  		"visorhba: taskmgmt type=%d not executed\n", tasktype);
>  	del_scsipending_ent(devdata, scsicmd_id);
> -	cleanup_scsitaskmgmt_handles(&devdata->idr, cmdrsp);
> +	cleanup_scsitaskmgmt_handles(&devdata->xa, cmdrsp);

... be sure not to call cleanup() on that path, though.

>  	return FAILED;
>  }
>  

