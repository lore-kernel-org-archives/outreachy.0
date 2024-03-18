Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A65522F1C
	for <outreachy@lists.linux.dev>; Mon, 18 Mar 2024 07:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710748273; cv=none; b=MR1KdWT9O+XuoeBR4KOaUavCa83TmBzZJpty/DlTlqSY2P9cFbGmTtUjYHVjQ1HT2U2aA/shaTXLjuuait3FrqT552ncriN4Fwe7GpDh6G4EFbYw6405FJzHNB0KFg4nPlAK1H1VnE3A8ICmBgh04WWZ2BNPY1y1iwBFcZmDK8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710748273; c=relaxed/simple;
	bh=1hjlx7mByRkB+RyNSp9fPJzaTV+aHeoo2cmJHjptDeU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MYryDFZO6RrhQvV56UhOOryaAHDrY8sZXQvhASUgh7EYWwU+BnTO2jGw6KpvpVtC1Hlt+LDlZehjFxZs2KWuEhaOVT0tkR6atzNu59Vj7KM8sFYJ9IWRWSpvCQ/No+vo8B3HGyrElE3u2uB8HGsRQjkztqxNdW3gobzcKTndG0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VNwQZZOv; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VNwQZZOv"
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-568d323e7fbso1022081a12.3
        for <outreachy@lists.linux.dev>; Mon, 18 Mar 2024 00:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710748269; x=1711353069; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zcvM2U1RtWo67CL6QsElDR20ViRM+DDPM1wjn1TEfQQ=;
        b=VNwQZZOvvTGGL9KBu/4DCx743I4UFckNDa8QNZbviK1GBQo6oaNH3b+Or628UYz4Zc
         SY3uLwZYQRHLvt3webjVuVFhtKsv9jpXvBuM0ERcRl8fvoESwZBBIsYkG4fDkQDgAdjR
         OW72zegJibk+jNfRuqVhulciaieSfsWUvmwYwB+C37BVCf04h4YXFUXOqovp4OYMKfLj
         sj0G2Py3OObq5jlfUx9j7iIDsuvOH2t1cF7IDf0JVTbp1bwePOlDfqw0yGFtap8jpq6q
         I7pSeNuDaXHDQ97huCaBpJTeTpoQeV5mjv077U9ZTs8Z3/hFvjiUoNMksOnCvSccn56C
         /k3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710748269; x=1711353069;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zcvM2U1RtWo67CL6QsElDR20ViRM+DDPM1wjn1TEfQQ=;
        b=upc7XvFevqs2VqL28NsJjP32N5hAl8eVAT3NlzVmDE7HZNQDu+S8xtcTc87WJqAutH
         bQYWGdqb6lKOzU5R9zmK3dbg26Ohrjf/plemGWK+z5m8pcQXZ8IJQYyGM2eEy51otVDM
         0eluPIGj4g54SIcfJ04QoaHX4pttAusM9EUupBPEplFwldGzonVprIz4nnv3VPoGLrJf
         CYAGXT9QwdMZWBTghxZKsyiIt1JvdxLwl07hH8SRRU+FRdHk++2Q2qqydEwwAACdsZMk
         dJx1HKNwSLZhPdXJZ9SpbbdlyzdS2QXkIgpH/EcZexOt2eDZnutekJIuWSpCZq5Pq0tY
         u0ag==
X-Forwarded-Encrypted: i=1; AJvYcCVdwY3hpS5RV6PU4JaVwREBS1C5z4cDNZeuC2Q11BKA2fbzImcxFlH8GMHMjTHsS4tq/wxzgXEaEmYWMvAsbvstsz3QfQNCzDSV
X-Gm-Message-State: AOJu0Yy7hL9zvEcBOGjDWWlFLyFOCyPxW23rkGq7MZlavYUR9M422q49
	HmwDhwY1dGuyhT5rxc9+Iw/OJCV/QGNSS/iM45K0AP1ApmoLXF5O5f+fy/3N5oA=
X-Google-Smtp-Source: AGHT+IEvB22Xpy2Nc5E3LJxhstpPLCNC/esbvBM8MshhZNyxJrIkm791fYra/ATnXNOue/LBc3o8iA==
X-Received: by 2002:a05:6402:458a:b0:568:b851:f718 with SMTP id ig10-20020a056402458a00b00568b851f718mr4637155edb.40.1710748269582;
        Mon, 18 Mar 2024 00:51:09 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id cf13-20020a0564020b8d00b00569731a1eb2sm932904edb.46.2024.03.18.00.51.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Mar 2024 00:51:09 -0700 (PDT)
Date: Mon, 18 Mar 2024 10:51:05 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Ayush Tiwari <ayushtiw0110@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: rtl8712: Fix line length exceeding 100 columns
Message-ID: <f004287a-d248-476c-9a3d-d24eab6a891f@moroto.mountain>
References: <ZfdIpVyUTIEGTp7j@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZfdIpVyUTIEGTp7j@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>

On Mon, Mar 18, 2024 at 01:16:45AM +0530, Ayush Tiwari wrote:
> Split the argument list of the kthread_run function call across two
> lines to address the checkpatch warning "line length exceeds 100
> columns".
> 
> Signed-off-by: Ayush Tiwari <ayushtiw0110@gmail.com>
> ---
>  drivers/staging/rtl8712/os_intfs.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
> index 7554613fe7e1..e77fcfc465ba 100644
> --- a/drivers/staging/rtl8712/os_intfs.c
> +++ b/drivers/staging/rtl8712/os_intfs.c
> @@ -221,7 +221,8 @@ struct net_device *r8712_init_netdev(void)
>  
>  static u32 start_drv_threads(struct _adapter *padapter)
>  {
> -	padapter->cmd_thread = kthread_run(r8712_cmd_thread, padapter, "%s", padapter->pnetdev->name);
> +	padapter->cmd_thread = kthread_run(r8712_cmd_thread, padapter, "%s",
> +			padapter->pnetdev->name);

Please run checkpatch.pl on your patches.

regards,
dan carpenter

