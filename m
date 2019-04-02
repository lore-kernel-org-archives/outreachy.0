X-GM-THRID: 6675054082549350400
X-Received: by 2002:a24:2fd0:: with SMTP id j199mr4904715itj.2.1554184260829;
        Mon, 01 Apr 2019 22:51:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:cd39:: with SMTP id h25ls4214312jaq.1.gmail; Mon, 01 Apr
 2019 22:50:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzLg8THPzeT5y55o/9h8PlVrIuzKhpyhclIyhBTJx2FfCR2OeNzYT7H2irfVqGHmlQk4FR4
X-Received: by 2002:a02:bb04:: with SMTP id y4mr11070591jan.20.1554184259912;
        Mon, 01 Apr 2019 22:50:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554184259; cv=none;
        d=google.com; s=arc-20160816;
        b=wohLa4bK8IRjkZqp0+83/OyBJO62ujRl4DJzC4HoSRs95IYiGX7y/Y/k0dah2C1Uv8
         R2+JfydR1WdvaYmcYt4q42+q3GsK2CY6VYV59o8NS3Z643mpA3LTiQ4RBftU3CCg/+XX
         ybUpmeUwpRtJZX1Vto8gUQ0kh7gNQSMxDnhMNUoGyIbicRKZUPv1W3JKVsABh5KAHe7/
         4RQcnZFf06Ne+ThuS5DU/HVipCSx7JDHJaj0+/AymeOIIj2ZJmKFdcf3kydey0Wajtdd
         MJF6EFE3yQVnpGvQ9KEeXVxRcca9f73Z6ID0zaRXuIcVJrVvrvIRgmPuMhdsAU847wAz
         yZdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ToLqm+gA6mDcp4GvFAdBZZj1KZWt7sowzVzz44/Bqzg=;
        b=rgM7Z67TIksq5pFQsg+pytGoycdZlKVMnQCJaHXcFfThTNZzCzfTHPhPMyPVsT1Ugu
         pAX45p7EGbjbswm02bxFh/PXT5/naWlVyXTXUAsO2rrABmpWCTEYxGh9HstdlpYHMkXH
         mibFRhRNkD+2p4iPeyf85411vU21kn6c2Mwumz0RdX6McDIF6/P1Z34cKmHa7ZCSaHQN
         vNdJdT8tF6JHIMjvKRNTSIgHkVn0HkGqidLyB+f7SqhBlvXirHOzKcZze3LeMbVBopQb
         W2X4clI8v/z6zK2LagNQsCSoz63wgMqHPn9oiCLMyaki53DYxGv+ALH28ug5FfYtfvWG
         uTaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aOeOOGTp;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 17si310648itx.0.2019.04.01.22.50.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 22:50:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aOeOOGTp;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A1AB22084C;
	Tue,  2 Apr 2019 05:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554184259;
	bh=3/ym5cGLOWrR+r96i1UTCuVALPrwzWdUd2bJHj45abI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aOeOOGTpsNk6XBe2Gd+VBhBHIK2sK7my43OaJiu/dwlPFRutA0YieI9a7aolcm/o1
	 wMCM/CjkzoGBtEAf2GKXOHwjImcZoKobBN4gOhYtGXkH6v+QJtb2NqnV7uCUAF5wxX
	 8iHlrX9gCOFYHvBCihcHOpSVjabOfpvrGn6nsOn8=
Date: Tue, 2 Apr 2019 07:50:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: rtl8723bs: Remove typedef in struct
 _Dynamic_Primary_CCA
Message-ID: <20190402055053.GC14075@kroah.com>
References: <20190401221854.29465-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190401221854.29465-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Apr 01, 2019 at 05:18:54PM -0500, Madhumitha Prabakaran wrote:
> Remove typedef in struct _Dynamic_Primary_CCA, as a struct that has
> elements that can reasonably be directly accessed should never be a
> typedef.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/odm.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
> index 23ab160ac2c8..af68658233e3 100644
> --- a/drivers/staging/rtl8723bs/hal/odm.h
> +++ b/drivers/staging/rtl8723bs/hal/odm.h
> @@ -82,7 +82,7 @@
>  
>  /* Remove DIG by yuchen */
>  
> -typedef struct _Dynamic_Primary_CCA {
> +struct _Dynamic_Primary_CCA {

While this is a good thing, can you also name this to be a sane name at
the same time?  No need to have to write two patches for this.

thanks,

greg k-h

