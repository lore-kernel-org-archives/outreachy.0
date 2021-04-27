X-GM-THRID: 6955401561206947840
X-Received: by 2002:a05:6512:3f93:: with SMTP id x19mr16742974lfa.182.1619531818675;
        Tue, 27 Apr 2021 06:56:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:507:: with SMTP id o7ls6488523ljp.6.gmail; Tue, 27
 Apr 2021 06:56:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxDs4xjv29xf7zMDGTWQoIP/y5L9FeeAuXNLRgpRUJZZwN5IeVLG3FiXxWmgkDqSG5AFdhA
X-Received: by 2002:a2e:bc25:: with SMTP id b37mr16910352ljf.342.1619531816904;
        Tue, 27 Apr 2021 06:56:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619531816; cv=none;
        d=google.com; s=arc-20160816;
        b=F+AasEcMuF62nwiucTBQ9qbK9DRJScDSPY5+jl0jY1GM45rcm1jspYOg8b8nGFWWC4
         2F8xkvdmmr/SxhcMMUajJO+ABZUXoAdaQfirgp9O/DpM80P6X0FlnrwpCV1/w0pWLOGH
         DjtoXXapRDQ7Zbr7fm/uJZr+Ub1BL7clacosNA6bEKRIezpImujVyKmj1//BdGismzUf
         MGTaP5vf7U6T9yOexUdvwE1ypUn5hDWVWOiwfyJyeCUjzngdPOAdWcr+5amNi3k0WYCe
         hHzNbH5WmyWYWT/VMTS8HTnthSCfK9BG7rWbaeqsjUfKeIjJdaN2lNgV9puY+rAMv5SN
         MZsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2EZ9wMn5IsrCWzyEdIPf+KOdPnl6OIWHe1m9e0dWRa8=;
        b=YQjl0BmrUoSIx08Yn/XAa/4kh/PcHF9as3zUz7EnuVbAex5BMr2cUeFhMvz+00/yUp
         juQgWWam4ljgAT+cj5tAu2nXhHnBHk5QCXZIuL9r4pXyELiyPpK+2TvcrW1rTes44Ev2
         xzdRSMiyus2iJejLKWmYHhkbIZ5Zzb18AGGqU5/ReFRQ2eiebiTI2ph/qwwjcd1ZA/Qx
         I4rBBPIWPaX3jtb3/4i32blqrBX+v175Wpikk9i1UH4KPMmYvIs6dZ3UJ3R6y+JbwAvR
         WkCRFHb6hYIIeRJdG+DaR3OR18WoXF7L/L9M4aF6l404Ng+Fp92jTPMKA2KkwyREmAcd
         S9uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=kBL8O9EW;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id 5si491302lfm.7.2021.04.27.06.56.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 06:56:56 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=kBL8O9EW;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=2EZ9wMn5IsrCWzyEdIPf+KOdPnl6OIWHe1m9e0dWRa8=; b=kBL8O9EWg/3wmo7Rz/ngkPBWvv
	/lDdibrv2XDWvOvRxeCuN6GBui4ZCegmuOEt0hj4oRbjRSHiTPOYscLy22+WWBpi1LG0CIpEEPe/7
	PE/hqkFuZJMa5lxF32I8uQp7pKtZP1a0AEIHL2W5P3KUOVoozDSosJw+GVBzTpzEn6JcTEEe0suNG
	WnbpyRZEhUIpLmlyraJE3EoJ/VQIt2/S/9h/6uxmSQ52AvaIzhBVgkQPwgHaB+ARVtkYARELujmYf
	BbW9WvwIPcb5CTXNnHIIljHUtpXGDHSXlmh/kXYAdlQfueNAJ+Xf/oUBv5I+WzIPJmfHIzVcIJRkZ
	zZe9U5nA==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lbOC6-006zBS-0S; Tue, 27 Apr 2021 13:56:33 +0000
Date: Tue, 27 Apr 2021 14:56:05 +0100
From: Matthew Wilcox <willy@infradead.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: unisys: visorhba: Convert
 module from IDR to XArray
Message-ID: <20210427135605.GZ235567@casper.infradead.org>
References: <20210427132522.14547-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210427132522.14547-1-fmdefrancesco@gmail.com>

On Tue, Apr 27, 2021 at 03:25:22PM +0200, Fabio M. De Francesco wrote:
> +++ b/drivers/staging/unisys/include/iochannel.h
> @@ -474,8 +474,8 @@ struct uiscmdrsp_scsitaskmgmt {
>  	enum task_mgmt_types tasktype;
>  	struct uisscsi_dest vdest;
>  	u64 handle;
> -	u64 notify_handle;
> -	u64 notifyresult_handle;
> +	u32 notify_handle;
> +	u32 notifyresult_handle;
>  	char result;
>  
>  #define TASK_MGMT_FAILED 0

I'm scared of this change.  Read the top of the file:

 * Everything needed for IOPart-GuestPart communication is define in
 * this file. Note: Everything is OS-independent because this file is
 * used by Windows, Linux and possible EFI drivers.

I don't know that you can make any changes to this file.

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
> +	u32 *id;
> +
> +	/* specify the event that has to be triggered when this cmd is complete */
> +	id = &cmdrsp->scsitaskmgmt.notify_handle;
> +	ret = xa_alloc_irq(xa, id, event, XA_LIMIT(1, INT_MAX), GFP_KERNEL);

You're still not handling the error here.


