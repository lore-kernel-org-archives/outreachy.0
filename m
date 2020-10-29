X-GM-THRID: 6888933426501517312
X-Received: by 2002:a05:6830:1e4e:: with SMTP id e14mr2136065otj.253.1603955196052;
        Thu, 29 Oct 2020 00:06:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:1a04:: with SMTP id a4ls435510oia.6.gmail; Thu, 29 Oct
 2020 00:06:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzMUeDZ1+4tv4iw4Cyf5K9latXeAYVt7BcknQKRkGEz9dC+WOWsbjAwBTJ8g2L6d13UwBku
X-Received: by 2002:aca:d541:: with SMTP id m62mr2005679oig.103.1603955194860;
        Thu, 29 Oct 2020 00:06:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603955194; cv=none;
        d=google.com; s=arc-20160816;
        b=d5n3d461vb0bSpYi6WBxUTg1mv3/VsgVFMgEO6tt+Kifc+xRIsfvM+tkljSlMEdwR3
         3YAXQ/+YvqCq1TRotEwQbHzhOec2kU47bq6iSmLGvKBbUxoUfVWqyLbtD3+7kADzjgyd
         QcLJyINaMqP/2wGVYXJyVXx+CXzQ3q11HMWP1OBCpFKaFQzhTOOJG0UcQS5F2+zReNc1
         qDSkHuHzAvyTqmBByWBIaOZEy9AEyVvtbGVDvEYyP7KMtPOFMqCRlHzu8dgKBGA4DVtU
         P6oFXivtYDfpDR0BoXd1PRsbWa70pt3IuEBEZurdKqEtYXXSmDE2+eUA906I+k6leUoD
         uEvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pJaASPFQmkV9VwyZkKxaXpu4mtyEk4aVwuS4s9p93yI=;
        b=lLruBFKKxnQD3WBuSeyMhIobOuNmb4bQY7xRnoLsUZJjRBksxUVdQKMb021eniEcAi
         O5iaF+52Syt1s19edkNpp7GhZcPJoZsePqyZN4+XibyTbo2kv8vY/EymGO/7fNALk8U0
         PycipA0KIb5hzT1eXiWNaLRmo0KFmWZT3OMvVCiEWEehwj/lHa9i3jB6RufPt8M443CE
         1uqLetufhTA+C6dzBStG2WnvSMImlvSnXsYgJxxwLy9r2efKb+Lc7+Lpk8KJkaN/e80i
         PT+THG2eBG2Ir1swrv1tag1FKd8pu71gojQJG5qTGD760ZdhDIsCyWD762qu252X9d4e
         j/ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DgTWcQtP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p17si170386oot.0.2020.10.29.00.06.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2020 00:06:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DgTWcQtP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 31CC4218AC;
	Thu, 29 Oct 2020 07:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1603955193;
	bh=O9aAlTH16X2beFYQUDWJY62EEMwxM9VLz/GLWg7fYww=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DgTWcQtPEqam//vbq/78a/8kEdZuYlo+QnZGsANsMN04i2OPKKddipi1xnwGY3aM2
	 wtAJcv+ty0GkOlsL1vN3NP8acBPQ2kuC1A31DARlJNiQsZq/4ORAHvGQBcQ82A1Chv
	 pN6uwB/VeCThvxdrnzXDsf/nLF8qd2KxORuXfOPM=
Date: Thu, 29 Oct 2020 08:07:23 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
Cc: Forest Bond <forest@alittletooquiet.net>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: vt6655: Remove useless else
Message-ID: <20201029070723.GA3063205@kroah.com>
References: <20201029065958.GA5259@Zangetsu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201029065958.GA5259@Zangetsu>

On Wed, Oct 28, 2020 at 11:59:58PM -0700, Marcos Antonio de Jesus Filho wrote:
> The else statement is not useful due to the presence of a return
> statement on the if block. Remove the else statement and adjust the
> indentation of the code. Reported by checkpatch.
> 
> Signed-off-by: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
> ---
>  drivers/staging/vt6655/rxtx.c | 36 +++++++++++++++++------------------
>  1 file changed, 18 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 477d19314634..978efe81077a 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -519,28 +519,28 @@ s_uFillDataHead(
>  										wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
>  			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
>  			return buf->duration;
> -		} else {
> -			struct vnt_tx_datahead_ab *buf = pTxDataHead;
> -			/* Get SignalField, ServiceField & Length */
> -			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> -					  byPktType, &buf->ab);
> +		}
>  
> -			if (is_pspoll) {
> -				__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
> +		struct vnt_tx_datahead_ab *buf = pTxDataHead;
> +		/* Get SignalField, ServiceField & Length */
> +		vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> +				  byPktType, &buf->ab);
>  
> -				buf->duration = dur;
> -			} else {
> -				/* Get Duration and TimeStampOff */
> -				buf->duration =
> -					cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
> -									    wCurrentRate, bNeedAck, uFragIdx,
> -									    cbLastFragmentSize, uMACfragNum,
> -									    byFBOption));
> -			}
> +		if (is_pspoll) {
> +			__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
>  
> -			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> -			return buf->duration;
> +			buf->duration = dur;
> +		} else {
> +			/* Get Duration and TimeStampOff */
> +			buf->duration =
> +				cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
> +								    wCurrentRate, bNeedAck, uFragIdx,
> +								    cbLastFragmentSize, uMACfragNum,
> +								    byFBOption));
>  		}
> +
> +		buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> +		return buf->duration;
>  	} else {

You do the same thing here, right?  Shouldn't this else be dropped?

thanks,

greg k-h

