X-GM-THRID: 6464551056446586880
X-Received: by 10.28.153.6 with SMTP id b6mr944030wme.20.1505145893453;
        Mon, 11 Sep 2017 09:04:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.87 with SMTP id y23ls330938ljd.11.gmail; Mon, 11 Sep
 2017 09:04:52 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDJMkVoH/+nHBsvDjzTNrTKcYgE0kkLJCjbTr8TmJFAj8tia02LftFWn6fJTsEHcIgIoqkb
X-Received: by 10.46.21.77 with SMTP id 13mr929676ljv.25.1505145892267;
        Mon, 11 Sep 2017 09:04:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505145892; cv=none;
        d=google.com; s=arc-20160816;
        b=PEIBcejen6IGXcoXBDsHtHqdQpKVqZjKXXRla9VPcZodBVztdjZqL6tXTBglREk3je
         CcFQHWiFNzEXORZzPyKH5RWF8BxYXUNlCmWzRlAJl+91tkO7k4R9RtYzpzEEshlzA46O
         2jVO3B3ZO0Nu1jf0oinWap2E+FTWFwn5zHKf2qOagLJWC5pz9UZPfqVP4gjVuTuBU/F0
         jy4Ad12uGaTNAC4Djiz1Hf7uODPXNCcQNRkjdj16rdBCxL6yGFy6IvQB/0NeuAbs6rqY
         +wjuK3Nut07DhspL5vWh3AANkUiDkyzgfRf5pKyMC/N9ktKak6sXQwyi6bT/4cDHAdFX
         pemQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=Zjv71WnOZQvFZtWXhO4AgLMQRC9w3fHW4tzvAQ+5Hlk=;
        b=urFTyk8LqQOHx+1tWyvfr+8Fk3+Y/wViIZh/ngaBxRKVsooGazulkn3vL8/ViCr+1w
         e5LRokH9hooGUTeL1vL4IvQXA/Q1r3PyrC/9T03gMiolHJbCvtUA2C/zEAmNnbZFBOtj
         AcRi784jaq8zYolZHt5L008lE4W8Era52me1ZbTaDqYuFMt9yh9DAAnJkpEVFx20pU0+
         U9PDbI9F99zgpCFj34zhaQxG4haAm89WIiB7lC+2WCLtxu5garSeWz4Lbi6wfjZYokRz
         P79eXpMCS+HQ6Ob1KDiUEHEPONuO9/tb9DOZn8gCfMbNcbzDoeYf/QWte+JjHplVcSdQ
         0xsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id e135si527564wmg.6.2017.09.11.09.04.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:04:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.145.98.253])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AE5F8989;
	Mon, 11 Sep 2017 16:04:50 +0000 (UTC)
Date: Mon, 11 Sep 2017 09:04:49 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: gilad@benyossef.com, linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: ccree: Don't use volatile for monitor_lock
Message-ID: <20170911160449.GA11886@kroah.com>
References: <1505145571-11248-1-git-send-email-srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1505145571-11248-1-git-send-email-srishtishar@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Mon, Sep 11, 2017 at 09:29:31PM +0530, Srishti Sharma wrote:
> The use of volatile for the variable monitor_lock is unnecessary.
> 
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/ccree/ssi_request_mgr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/ccree/ssi_request_mgr.c b/drivers/staging/ccree/ssi_request_mgr.c
> index e5c2f92..7d77941 100644
> --- a/drivers/staging/ccree/ssi_request_mgr.c
> +++ b/drivers/staging/ccree/ssi_request_mgr.c
> @@ -49,7 +49,7 @@ struct ssi_request_mgr_handle {
>  	dma_addr_t dummy_comp_buff_dma;
>  	struct cc_hw_desc monitor_desc;
> 
> -	volatile unsigned long monitor_lock;
> +	unsigned long monitor_lock;

While volatile is not right, odds are, this is still totally wrong as
well.  How about using a "real" lock instead?

thanks,

greg k-h

