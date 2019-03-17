X-GM-THRID: 6668560476445605888
X-Received: by 2002:a37:9b4c:: with SMTP id d73mr6522480qke.26.1552819407524;
        Sun, 17 Mar 2019 03:43:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:c89c:: with SMTP id t28ls819543qkl.4.gmail; Sun, 17 Mar
 2019 03:43:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxCSbyJZH8DANm7Q8xd1i5hDfgDJ3grDu5L00IDqbopdEPffm2LqpQsOUyD5hiOlwLaTC/0
X-Received: by 2002:a37:c206:: with SMTP id i6mr6731982qkm.40.1552819406931;
        Sun, 17 Mar 2019 03:43:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552819406; cv=none;
        d=google.com; s=arc-20160816;
        b=k048seH1hX208NmTvQCGdB3fLtYz3l09/9Bp2M79fQochxNho1vzhR1NC5srBYWs87
         8GSJYwMLgjLDCVw2oBfKzC7+0deAu86ZexwLw9yFOF13ciSZvz0CGH4jZqT2Gyxd2Z5g
         CeotAbieY6Xl6npkH6XrE1UnGz5/zKbSg2P2SHznb1OLRBHvy4fmx+MuaFwnjCPr4I6R
         tT/MwbKWD0U/xaDYF76KOoIILOHmDpSbmaNDoM3l4m99OZFxgPbHIyTzYeGCHCzLf8dV
         PuUrvyXCfQOImRSlk5v4bIVS9zXKwnEuob1BCnl2B9P6kANJ+kV+gdx4FIi16q10oPym
         6Nrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6m27YOOLDherngg3sIvMAA4XPmB00o6O4rdYemncvmY=;
        b=xNOgKPPzNTdQNku7VjDRoCGhCPaHxi+DswOlGxlI88FcH0k9UyeJINKbydqTuGtnTO
         Ad7d/0pEYWA6J8sX6HH/ZXqzKKZ8bLsyP5iGVsz6dJSETDvR+SamH0GQbiNES9TiG/r0
         ZN6syrpntxTT/KIgwwohU3wOGhhozJ5PmpCfnpdniUk8l0ecjsf6OxbD0+lkhAtYNHiJ
         XoOmLSXX+w8CTwH+tDBKXQLxEzq1tFQzs1++Tq8eMFttJEHv8XzidMsY1K8eYQfc6Wxv
         vLJfX7Ewr0pLdfYmxDa0aPMqJKlx+Dc+o2chwonr8zto8vhl4m1OfmJTaqAKBDSbp+G4
         5SUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=baUaUE3L;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g20si437548qto.0.2019.03.17.03.43.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:43:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=baUaUE3L;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 62CEB21873;
	Sun, 17 Mar 2019 10:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552819405;
	bh=1WNQXPwbhtWEcUEdgEJ6EfkToC1aXbFM3u/T0B3QV5k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=baUaUE3LDgCoRfh+ClomgaPbGWtqiBn2v5DQaxW4ujCU7hSC0+Y6w5tNAqGWu4tmC
	 IVASchhOKc8RO/mEPq23iBi3PrK+FkqySRye9S8tYZn1bMo/k9TzgVGF3xj64SkwoV
	 EAXKjGgj6XxrHuQdDButpIzrhl4BciVUJ3t6aC8Q=
Date: Sun, 17 Mar 2019 11:43:23 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: sm750fb: Remove unnecessary function
Message-ID: <20190317104323.GA16257@kroah.com>
References: <20190315102007.26612-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190315102007.26612-1-nishka.dasgupta@yahoo.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 15, 2019 at 03:50:07PM +0530, Nishka Dasgupta wrote:
> Remove function sii164ResetChip() as comment above it said "below
> function is not necessary".
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/sm750fb/ddk750_sii164.c | 13 -------------
>  drivers/staging/sm750fb/ddk750_sii164.h |  1 -
>  2 files changed, 14 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
> index c8e856c13912..8884ef927893 100644
> --- a/drivers/staging/sm750fb/ddk750_sii164.c
> +++ b/drivers/staging/sm750fb/ddk750_sii164.c
> @@ -237,21 +237,8 @@ long sii164InitChip(unsigned char edge_select,
>  	return -1;
>  }
>  
> -/* below sii164 function is not necessary */
> -
>  #ifdef SII164_FULL_FUNCTIONS
>  
> -/*
> - *  sii164ResetChip
> - *      This function resets the DVI Controller Chip.
> - */
> -void sii164ResetChip(void)
> -{
> -	/* Power down */
> -	sii164SetPower(0);
> -	sii164SetPower(1);
> -}
> -
>  /*
>   * sii164GetChipString
>   *      This function returns a char string name of the current DVI Controller chip.
> diff --git a/drivers/staging/sm750fb/ddk750_sii164.h b/drivers/staging/sm750fb/ddk750_sii164.h
> index 862e7bf27353..1f7b5f9c1885 100644
> --- a/drivers/staging/sm750fb/ddk750_sii164.h
> +++ b/drivers/staging/sm750fb/ddk750_sii164.h
> @@ -28,7 +28,6 @@ unsigned short sii164GetVendorID(void);
>  unsigned short sii164GetDeviceID(void);
>  
>  #ifdef SII164_FULL_FUNCTIONS
> -void sii164ResetChip(void);
>  char *sii164GetChipString(void);
>  void sii164SetPower(unsigned char powerUp);
>  void sii164EnableHotPlugDetection(unsigned char enableHotPlug);

Did you test build this?  This function is still used if
SII164_FULL_FUNCTIONS is defined.

thanks,

greg k-h

