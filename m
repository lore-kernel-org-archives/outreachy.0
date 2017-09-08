X-GM-THRID: 6463333308428189696
X-Received: by 10.25.155.140 with SMTP id d134mr183696lfe.28.1504863951698;
        Fri, 08 Sep 2017 02:45:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.168.81 with SMTP id r78ls265328wme.27.gmail; Fri, 08 Sep
 2017 02:45:50 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBBkejNXYaZ9FwYZeNu4YfJbgCKyaiDunSKxFBTjJE73EqU5BsTNpSNOGbt91fRmGk8GP2j
X-Received: by 10.28.175.195 with SMTP id y186mr155874wme.0.1504863950600;
        Fri, 08 Sep 2017 02:45:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504863950; cv=none;
        d=google.com; s=arc-20160816;
        b=j1RTjT/daAUrDAIIkHj04JDLftd1bRiTYkDRCjsIlYnVpwOzc3ArYR+DdTtK+RKbS8
         JYh0ghBQBILzGNdaddZZi9TbxByzBXZDgJpVpFeLBDDsUWeV8Tp7gUEElYJhrDm4TwfL
         dgHbR5SgykZliHAy//3aDpEHiJbiAtl+6zmc47O0DjF43FqZEnOSz88ylY1BAfXcp3xr
         zMWY6nSOJ9jqTuNpphNyTNuS3qJ236OnsHuq1FE7L+e8QOh4nW2a+h7p22fopv+L14f0
         TGzxjJKxnPsOHViGuypBR6nBH++euzbWBR5LFMcjEA5JSYAqDyMaJepN2/3fylSnnxMD
         wwAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=i2p8PyjBNND5ibgrBBxFNE/wanhS60F5m6xGuLqk10I=;
        b=ADS97RcWvSMTEaizFE0Ruq/x+Hd3lXqhkBW1EGHUPyDY7KcZQMi47Qiyq3LjQWykGo
         T5IadQ/sr1kdXII/STTSKUHNbivhYGbIdxzEsATPSnxGKFDOpDXgvV3VNDStAVO4Gv8D
         OWNpkV0mnp0IhuMNuryfIaxIx4cVaSk3E0GxjWlnaPjokbZil1kJPjXt/fjmOstv0QDO
         /8vH8CsNjIchufL4C9u1JTHegKr1wlYDU4p4rx/EPu6GBuY7J9a15QI+p4eJw+h5T00n
         QVYBduOZQPdTsScpILwyRH7daaCGEHeRS36v/PK80EUvC2mhQPjlORIMJ0Em0Xb3Fdz8
         f4HQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 200si250537wmj.0.2017.09.08.02.45.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 02:45:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,360,1500933600"; 
   d="scan'208";a="236766478"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 11:45:49 +0200
Date: Fri, 8 Sep 2017 11:45:20 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: harsha <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] staging: pi433: Fixes minor typo
 errors
In-Reply-To: <1504863598-16301-1-git-send-email-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709081143430.3165@hadrien>
References: <1504863598-16301-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 8 Sep 2017, harsha wrote:

> From: Harsha Sharma <harshasharmaiitr@gmail.com>
>
> Fixes checkpatch warning -- "occured" and "succesfully" are misspelled
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
> Changes in v4:
>  -Correct the format of the subject.
>  -Signed-off properly.

It's not signed off properly.  Like Greg just said (maybe the mails
crossed), the sign off needs to be the same as the From line.  This
probably relates to your git configuration or your mailer.  Send the patch
to yourself before sending it out on the mailing list to be sure that
everything is ok.

julia

>  drivers/staging/pi433/pi433_if.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
> index 6b9b7df..6a10478 100644
> --- a/drivers/staging/pi433/pi433_if.c
> +++ b/drivers/staging/pi433/pi433_if.c
> @@ -473,7 +473,7 @@ struct pi433_instance {
>  	}
>
>
> -	/* rx done, wait was interrupted or error occured */
> +	/* rx done, wait was interrupted or error occurred */
>  abort:
>  	dev->interrupt_rx_allowed = true;
>  	SET_CHECKED(rf69_set_mode(dev->spi, standby));
> @@ -1033,7 +1033,7 @@ static int setup_GPIOs(struct pi433_device *device)
>  		if (retval)
>  			return retval;
>
> -		dev_dbg(&device->spi->dev, "%s succesfully configured", name);
> +		dev_dbg(&device->spi->dev, "%s successfully configured", name);
>  	}
>
>  	return 0;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504863598-16301-1-git-send-email-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

