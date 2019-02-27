X-GM-THRID: 6662713846690480128
X-Received: by 2002:a63:da44:: with SMTP id l4mr1385934pgj.86.1551284955850;
        Wed, 27 Feb 2019 08:29:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bd03:: with SMTP id p3ls996623pls.5.gmail; Wed, 27
 Feb 2019 08:29:15 -0800 (PST)
X-Google-Smtp-Source: AHgI3IY4WA6+CvDp3itb7ROGwShmxYnMnrlKrQipNTxLa+cC+qsow8H43DTGI1mYQkAvsNaSOBrp
X-Received: by 2002:a17:902:2bc9:: with SMTP id l67mr926699plb.129.1551284955127;
        Wed, 27 Feb 2019 08:29:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551284955; cv=none;
        d=google.com; s=arc-20160816;
        b=XBkObH0HtrDb/ZOPFHRJCapAS+Cb+6ubkScnO60Vw6ci4meXfgdHFsrBjyGvfhjYJH
         1YCtYKg2z+pZnWSM8aI5TYe9pCCj8DjfnR49MLBUl4QOZ2KON//TlVqGssp28k6w+mRH
         srt9FqMZc+skUE0XQ663zr7mDEy6CP1so9E2VGZPYNce++Ypgu8y4sJz2n18BNLeSkOS
         JiKsvfETLjbC2M0fWT6YcM304CVWujG7OvHBPZULJRNQjRSATPAkP/WyAVbeGqEk89I9
         87Wu9xUlkuBdWiJDd8vv/cpbbF27Usvw1h1oc8pIi4Yy8la3rVAGMuyDRjTu29BsOzNx
         ocbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=J3Ip1wZOW69cF3CBnA5DepxLwkml2X/i6cOxBEYA9j8=;
        b=TV34RI0UYJAlrVVYD0MK4ljL6KhHIvEIKwzivNrHUZnog1HEhQdPOccjD5qjACu952
         iChlrVNQs9XL2suXBZh39pb78ruPBtZr9hayM8EiaJOQOn7ZxyDTMPjO4U4GXEmqbFKn
         sFEGYf7Hf3CELI1o9/O9oJb2jVN8ajo9V4VrD7y4x9BhEHE3Qdo7doNFycWwiz5zROTs
         LJIq0VtY/MsgBK401Y582WztfduJPZtCEUwW9KVQwioa2APKnzmMfZnHhkBGK+T6xpbw
         x9jeNkigN13hPgn49KWNIKJ5P4gVuntEjzNVxVAgsjUCTtCZYn6rd1EIn4NYEuBz/ei0
         fcRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Irni9AHl;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e71si182949pfc.1.2019.02.27.08.29.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 08:29:15 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Irni9AHl;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5C3232184A;
	Wed, 27 Feb 2019 16:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551284954;
	bh=XW6WdKfowazq3MBMJJNQfnqbEh67B6L2nassURUT/vI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Irni9AHl1D9HvPVdBV6i/O+aqF36ydRaBrIg9guYcVGb4WKiGb1RDoE4rEuqAzGzg
	 hbgSJKDegt0UkDGcaBsYmYQc3m2rGNZT15n6AEBkEIv1TjfEIMa2p4gHJveM1ABuSw
	 GzZk/B8ApSGXnU0QfmSiKXIj+PHjili6LHlQ4n0c=
Date: Wed, 27 Feb 2019 17:29:12 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] Staging: vt6655: Alignment of function declaration
Message-ID: <20190227162912.GD23972@kroah.com>
References: <20190227161227.22128-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190227161227.22128-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Feb 27, 2019 at 10:12:27AM -0600, Madhumitha Prabakaran wrote:
> Align function arguments and function type to improve readability.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
> Changes in v3-
> -Included driver name in subject line
> 
> Changes in v2-
> - Modified subject line and commit log
> ---
>  drivers/staging/vt6655/card.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index 2996bf614caa..8d0182f5725c 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -499,7 +499,7 @@ bool CARDbRadioPowerOn(struct vnt_private *priv)
>  	return bResult;
>  }
>  
> -void CARDvSafeResetTx(truct vnt_private *priv)
> +void CARDvSafeResetTx(struct vnt_private *priv)

Are you sure about this patch???

