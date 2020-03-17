X-GM-THRID: 6804291594898898944
X-Received: by 2002:a9d:6443:: with SMTP id m3mr3183735otl.20.1584444501780;
        Tue, 17 Mar 2020 04:28:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:cd45:: with SMTP id d66ls6602479oig.7.gmail; Tue, 17 Mar
 2020 04:28:20 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuh3/EtNyQ02Dlw2nMfyN4fG+vHyp9+b5YGGLUh/MCGTmowh83il0ovXvaEi7KzE4W4irKo
X-Received: by 2002:aca:b1d4:: with SMTP id a203mr3149408oif.91.1584444500182;
        Tue, 17 Mar 2020 04:28:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584444500; cv=none;
        d=google.com; s=arc-20160816;
        b=cBAt5FiYAEbnKEhQFOyr2kljzq4BSwhUHOJvANx+iYqcUULL+Fev6Lc0krJzoHVgJu
         Xz0Z/62V1yg6vQ8el5iWqS2htWPw4kOdwxs6xtQHiaXp9XgY7jT44yG8bahEnDwpYnet
         lEH6FcywNVyuu/jugmozIgK1S4QsV2nKonQ/rfRKe5ZgZD7LdvGLc+IYlt/YmH+AIjYp
         tVNON5QxbvwMwlRrgFmbsAR8Y+Kj+KHwOLoMkCV+BNXc1TSrM03n4OVpsFjVgIGfYLSs
         jAgDftqcE0PjpZ8YR/2K3T1z7HAguqC0Fy+MBj0ipLIg21Y8Jy/VwLu/6T5gJD7kJC1A
         zMEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ob/p6LAh5rlGYs4Y1q+/253wMb/zn468qlEV6fnY/QE=;
        b=R4RTi+SmBYn5A7FhgDFdq02AnLiHGssiMJUkMMGdZ8PrTxubTv/lHvkRI9ARWdsOxR
         04c6uwmUOGmlsk7gYu9RQJ0eNwMRlpfFoIITGpJvTb3EF0hroQxWakk2bUykyGRGc+gd
         x4jYdKzu1oue9tACk2ARiVp7vH+03oTP+nkvmm2vnYui8++xp+k6NlBasOJVgw32WsZB
         R7m/rvHwDLoMHMnyhanraH/jyYuHMzhNAwG319ZFxkrKuoXnHNsoBQ9LmVFMqKkR+IPB
         HI4K2hYGT/x1EmSt269n6DHtxJtfjiul41CNwU2fTOhctb8LU765zK+sam6u16ExZUAr
         jHrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=V18H+g5k;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d11si264902otk.5.2020.03.17.04.28.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 04:28:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=V18H+g5k;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D2CBE20658;
	Tue, 17 Mar 2020 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584444497;
	bh=ZDBp7lyQoD0CVE/tixDZ66fqNfXN7kYyRXEH2/kkl8s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V18H+g5kkuIyFqA42RuCxqx3Nvt0MLex7d1gyAZrIjwKVAzoa5z1pGHmmXIDY90P3
	 qnZOte5sfh67IFdFVr/bx5+OJKgjDuKxfJDxktQ2vI5OuDbq1BwQhHxbvKPqGI7gir
	 hlKz6neyxBt0y3mywDHpX2D3Cm93ZsGVGIhZ2EjM=
Date: Tue, 17 Mar 2020 12:09:38 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: [PATCH] staging: vt6655: device_main: switch multiple assignment
 for one assignment per line
Message-ID: <20200317110938.GA1207386@kroah.com>
References: <20200315044620.14104-1-lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200315044620.14104-1-lu@pplo.net>

On Sun, Mar 15, 2020 at 05:46:20AM +0100, Lourdes Pedrajas wrote:
> One assignment per line is preferred, instead of multiple assignments.
> To prevent possible undefined behavior.
> Issue found with checkpath.
> 
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
>  drivers/staging/vt6655/device_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> index 0442f71494b2..c271e3937125 100644
> --- a/drivers/staging/vt6655/device_main.c
> +++ b/drivers/staging/vt6655/device_main.c
> @@ -708,7 +708,8 @@ static int device_init_td1_ring(struct vnt_private *priv)
>  
>  	if (i > 0)
>  		priv->apTD1Rings[i - 1].next_desc = cpu_to_le32(priv->td1_pool_dma);
> -	priv->apTailTD[1] = priv->apCurrTD[1] = &priv->apTD1Rings[0];
> +	priv->apCurrTD[1] = &priv->apTD1Rings[0];
> +	priv->apTailTD[1] = &priv->apTD1Rings[0];

As others said here, there is no undefined behavior, the original code
is just fine.

thanks,

greg k-h

