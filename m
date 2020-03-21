X-GM-THRID: 6806450213185650688
X-Received: by 2002:aed:38ea:: with SMTP id k97mr12253415qte.327.1584783154890;
        Sat, 21 Mar 2020 02:32:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6542:: with SMTP id z63ls4913583qkb.3.gmail; Sat, 21 Mar
 2020 02:32:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsp6lf5xqEXZB+1a4Ib5z86SN/8aEsRNV4wYwg+HQLd6S1UqNQ5IdA+kLLPYZEnicA2c4I9
X-Received: by 2002:a37:715:: with SMTP id 21mr12504612qkh.435.1584783153564;
        Sat, 21 Mar 2020 02:32:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584783153; cv=none;
        d=google.com; s=arc-20160816;
        b=i7M7ca0XgaVANUg2oL1P7Z26mLgxyH08mcLQ+s4JbWtQ7z5VP1p6X2I5sye5rxaNwX
         IQu11FtfW0maGwxJf6esu4Uv7HsNkjlaZLsBIyGPtaoIS7m7KsyGZa4KQtwf0n8Qz5l0
         b5bHjvSd0ECjmE46No7uPZIB2cQb+6z/1Y+UetX5+IEBOsjXncGQxf2399uyG7EWbWDh
         9fqXml1JPUSDQKRbjvngl6Qu6/jpCI6sZ3VH8CiQEAtIL1TH7xNZh6FwvZHfBwdKyCV2
         hJgW6YGvgmRJt9MA/tcy0CE2zdf6dDG4YJEIPTW8PUPkTBSM4FfSFL2TRjhGU9dKOGOD
         C7cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KcQp4FgBJAI0cuXZbltuKoF58XOdnfailE4oSNXsVVo=;
        b=FIMDfPpm8QgIXrKYCqbuY8LfF2N26s/gMTOUr3WcBJcZTK9rbxZjl9nqgEchYGa2cf
         wie/I2wTFA8YTElUs+t/MmcjY8W0t1K3gKOozSk1L1zqewIzpVYbHOwJTd3u4i9BbTvQ
         Lf0jZmOrkAeLdTjO3JsNBcsMW87Ai80fR49hkHmbDjVIR+/FKHm6VDnssVootLpW5OM9
         oVfZg4NkknYrwh7disNaQW2q+VJJHpPkqYq2oPB9421IjaDDRn7M/X/9pYkfWAIowlma
         2NztDkR12li9AeLNYQ7s67YY6n6PCbOyo/S1K3hQf/2Ci8/4IUxacIiRTWwKtXuWt0Tf
         7glw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="suC/mAif";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d34si563018qte.4.2020.03.21.02.32.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 02:32:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="suC/mAif";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 08E5820739;
	Sat, 21 Mar 2020 09:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584783152;
	bh=KMBqVekAE6kjVEP4HreE+aIGCnWyS5Wm/e3UEWK/2Dg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=suC/mAifi6UgERUVukMNMrpAzGfv+mLukc+Rw2WdyVTBHZPUjA1rjDh0YEpsrZ8Yc
	 fWsxUeXV5Gh0dS7NSIalO4xqomPo8vZEufQqr7LB4MXnXq9C3+Pdq4oWRTtkEBFcCW
	 GR48C6VAGj1WtOhtEqSIeeqPCbtqlMaoZtatomBA=
Date: Sat, 21 Mar 2020 10:32:30 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: ks7010: rearrange line exceeding 80 characters
Message-ID: <20200321093230.GA917692@kroah.com>
References: <20200321002259.GA12633@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200321002259.GA12633@siyah2>

On Sat, Mar 21, 2020 at 03:22:59AM +0300, Gokce Kuler wrote:
> Moved to the bottom line after == operator for it exceeds 80 character
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/ks7010/ks_hostif.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index 2666f9e..7ed8300 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -1953,8 +1953,10 @@ static void hostif_sme_power_mgmt_set(struct ks_wlan_private *priv)
>  		mode = (priv->reg.operation_mode == MODE_INFRASTRUCTURE) ?
>  			POWER_SAVE : POWER_ACTIVE;
>  		wake_up = 0;
> -		receive_dtims = (priv->reg.operation_mode == MODE_INFRASTRUCTURE &&
> -				 priv->reg.power_mgmt == POWER_MGMT_SAVE2);
> +		receive_dtims = (priv->reg.operation_mode ==
> +			       	 MODE_INFRASTRUCTURE &&
> +				 priv->reg.power_mgmt ==
> +				 POWER_MGMT_SAVE2);

This is now much harder to read and understand, so I woudl just leave
the original as-is.

thanks,

greg k-h

