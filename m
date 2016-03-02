X-GM-THRID: 6256392971161174016
X-Received: by 10.66.63.68 with SMTP id e4mr21996396pas.40.1456944487173;
        Wed, 02 Mar 2016 10:48:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.100.214 with SMTP id s80ls4508853qge.94.gmail; Wed, 02 Mar
 2016 10:48:06 -0800 (PST)
X-Received: by 10.13.223.140 with SMTP id i134mr21697662ywe.11.1456944486670;
        Wed, 02 Mar 2016 10:48:06 -0800 (PST)
Return-Path: <bounce-md_30481620.56d73566.v1-82fe7b9f2bcf4ec0abcd2da14739f511@mandrillapp.com>
Received: from mail177-1.suw61.mandrillapp.com (mail177-1.suw61.mandrillapp.com. [198.2.177.1])
        by gmr-mx.google.com with ESMTPS id w126si2129071ywe.6.2016.03.02.10.48.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 10:48:06 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56d73566.v1-82fe7b9f2bcf4ec0abcd2da14739f511@mandrillapp.com designates 198.2.177.1 as permitted sender) client-ip=198.2.177.1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56d73566.v1-82fe7b9f2bcf4ec0abcd2da14739f511@mandrillapp.com designates 198.2.177.1 as permitted sender) smtp.mailfrom=bounce-md_30481620.56d73566.v1-82fe7b9f2bcf4ec0abcd2da14739f511@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=+KeytGw4HKpeCbnhrNCNVwYC0B0=;
 b=giffxM2KjYhOW/xkO0do7swPnlxcmXXyDPuexzohBZxLjxPWtwJ+XMhEVDWyTHm4j/pBxReJ8LBv
   sCoz9GCM/pnHgQO1WnlFLQ2L9B2eAYxXG2WUbVVC5BL0wU2VVGeQrdlOltg9ZnZKODsiRpF5qy12
   f+n4bXzlZoUrWO9D/jo=
Received: from pmta06.mandrill.prod.suw01.rsglab.com (127.0.0.1) by mail177-1.suw61.mandrillapp.com id hqsqmc22rtk5 for <outreachy-kernel@googlegroups.com>; Wed, 2 Mar 2016 18:48:06 +0000 (envelope-from <bounce-md_30481620.56d73566.v1-82fe7b9f2bcf4ec0abcd2da14739f511@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456944486; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=bkPQa/tULx4bp+j6oErGkSYMIU0g0TjHskahHhaTCW0=; 
 b=mrrcklKU8UOFcbZSxxptMRPZGtSMVm1Rn+MRbfXjNoXDmU/Ijl08KQE4rG/dNWWQzoya44
 4KK/9kUEC/F4r8c7YUrdCQcsV77DF7o5dbmT3H7EsGUYy140o7CubVdQRvZlHO1zevujEvgU
 wl9dd67NirBiuAX/hLXzy8o6vvHF4=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: lnet: Remove int typecast of offsetof().
Return-Path: <bounce-md_30481620.56d73566.v1-82fe7b9f2bcf4ec0abcd2da14739f511@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id 82fe7b9f2bcf4ec0abcd2da14739f511; Wed, 02 Mar 2016 18:48:06 +0000
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160302033711.GB20937@kroah.com>
References: <20160228092006.GA3627@sandhya>
In-Reply-To: <20160228092006.GA3627@sandhya>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.82fe7b9f2bcf4ec0abcd2da14739f511
X-Mandrill-User: md_30481620
Date: Wed, 02 Mar 2016 18:48:06 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Sun, Feb 28, 2016 at 02:50:07PM +0530, Sandhya Bankar wrote:
> Remove int typecast of offsetof(). 
> As per below coccinelle rule:
> 
> @@
> type T;
> expression E;
> @@
> 
> - (int)(offsetof(T,E))
> + offsetof(T,E) 
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/lustre/lnet/lnet/api-ni.c | 54 +++++++++++++++----------------
>  1 file changed, 27 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/lnet/api-ni.c b/drivers/staging/lustre/lnet/lnet/api-ni.c
> index 3ecc96a..c3fe782 100644
> --- a/drivers/staging/lustre/lnet/lnet/api-ni.c
> +++ b/drivers/staging/lustre/lnet/lnet/api-ni.c
> @@ -197,75 +197,75 @@ static void lnet_assert_wire_constants(void)
>  	CLASSERT((int)sizeof(lnet_handle_wire_t) == 16);
>  	CLASSERT((int)offsetof(lnet_handle_wire_t, wh_interface_cookie) == 0);
>  	CLASSERT((int)sizeof(((lnet_handle_wire_t *)0)->wh_interface_cookie) == 8);
> -	CLASSERT((int)offsetof(lnet_handle_wire_t, wh_object_cookie) == 8);
> +	CLASSERT(offsetof(lnet_handle_wire_t, wh_object_cookie) == 8);
>  	CLASSERT((int)sizeof(((lnet_handle_wire_t *)0)->wh_object_cookie) == 8);

Why did you only change 1 of them here and not all instances?

thanks,

greg k-h

