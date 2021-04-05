X-GM-THRID: 6947467648210829312
X-Received: by 2002:a17:902:dac4:b029:e6:b39f:7ee2 with SMTP id q4-20020a170902dac4b02900e6b39f7ee2mr22930224plx.85.1617603693110;
        Sun, 04 Apr 2021 23:21:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1d50:: with SMTP id d77ls6038092pfd.4.gmail; Sun, 04 Apr
 2021 23:21:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwwhLNRFKgrWossJBSzW7xFqaJMSxRohoYcGJt+3JG23Fbe2RV2dMVfApSztBU70vx3HDK8
X-Received: by 2002:a05:6a00:1741:b029:222:b711:30a0 with SMTP id j1-20020a056a001741b0290222b71130a0mr21640802pfc.27.1617603692055;
        Sun, 04 Apr 2021 23:21:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617603692; cv=none;
        d=google.com; s=arc-20160816;
        b=YD3yJUvY+HSW4VhQJx3+BpBU6zbXSn/qgJM1lCW/l/NoDZj3lKZ5NFU5+10cEnWX/X
         eWAETCmF9E7/KNX2laRSVHSMD2rgcaeceyaCc9b5O6k3beXRjMplgVh3CjuAO88pf1qU
         pYr775zfJW/C8yoKyUS667BbH0zNDcRsV0rzXQiPLU4DAbWIPHFh/vY0hrt8n/niGyhW
         ZHrkjLUOtuLdBetstq29scSv94AGUYR0dLtwj2jar+v14EIfxFwftae6B3n+Les5QV+2
         EalIT/UkP9kYy/+Jmh7y7ajWT3jFTl3tn5x8jlRnxTGQSKyhbiR7RAvfzW/LHSV9FQMs
         fi6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bf16soJ+eMkfRUqI23J2imbMf9TWABVwSpR8MKU7vC0=;
        b=FxaS39DdPro/0+HzOzjptOhzZwyKGt4TiY2+U/zxwPkArWaifEoaSFEHto6aAh3p9U
         iioV5XnBy1ASouyPTfD/+pHyDjE8fb2rCAUlQVVNoJz2oCIAbc3AgKaB4Z5dp47P3aiQ
         qEcOfzSiQWTcFZqFGwa9orh74k74S+us7kenfLWzKIz8CmIV55UTXxJlYdj8gRXnfZM1
         O8i7rjhTP9VT1pIInl0Qwwept6UWl1/KNabmv2BIDAhUlSoBlB6yxqyRbfrywNN93GQQ
         j3oG+lY/qptNmNAb8T2LwV+rG0J9WfkEiT4dA37FBvA3PVYCrKKJi8f4iITWu9F2HevX
         /Q5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ma0jUVRB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a8si830292plp.2.2021.04.04.23.21.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Apr 2021 23:21:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ma0jUVRB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 259D961399;
	Mon,  5 Apr 2021 06:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617603691;
	bh=xKdGZ44ZwQ3VybqwUhF7c0iuUupdhhUePbVF00lo1Hc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ma0jUVRBxeTvA5MX/MKMkCXamBJofQ9SmH38mKpEloZsRapwwGGEh64zmQUbU6R4B
	 fjCJ4UCRnJo9NY+4kvgpsozrM+4NCX9vgFGuqpOJ02MLap8g7ze+c57EwxmoulzJ+1
	 l0iBGaQzjeaUgimkJtbxkw1sZQTo5zluoRkBBH0A=
Date: Mon, 5 Apr 2021 08:21:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: manish@marvell.com, GR-Linux-NIC-Dev@marvell.com,
	outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: qlge: remove else after break
Message-ID: <YGqsaKVJM8pn1BYU@kroah.com>
References: <YGpcx9MZuZJFy0Z/@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YGpcx9MZuZJFy0Z/@kali>

On Mon, Apr 05, 2021 at 06:11:43AM +0530, Mitali Borkar wrote:
> linux-staging@lists,linux-kernel@vger.kernel.org
> Bcc: 
> Subject: [PATCH] staging: qlge:remove else after break
> Reply-To: 

Very odd, why is this in the body of the email?



> 
> Fixed Warning:- else is not needed after break
> break terminates the loop if encountered. else is unnecessary and
> increases indenatation
> 
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>  drivers/staging/qlge/qlge_mpi.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
> index 2630ebf50341..3a49f187203b 100644
> --- a/drivers/staging/qlge/qlge_mpi.c
> +++ b/drivers/staging/qlge/qlge_mpi.c
> @@ -935,13 +935,11 @@ static int qlge_idc_wait(struct qlge_adapter *qdev)
>  			netif_err(qdev, drv, qdev->ndev, "IDC Success.\n");
>  			status = 0;
>  			break;
> -		} else {
> -			netif_err(qdev, drv, qdev->ndev,
> +		}	netif_err(qdev, drv, qdev->ndev,
>  				  "IDC: Invalid State 0x%.04x.\n",
>  				  mbcp->mbox_out[0]);
>  			status = -EIO;
>  			break;
> -		}

Indentation is now no longer correct :(

thanks,

greg k-h

