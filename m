X-GM-THRID: 6670775927443554304
X-Received: by 2002:a1f:b483:: with SMTP id d125mr3264131vkf.51.1553195587982;
        Thu, 21 Mar 2019 12:13:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:9590:: with SMTP id x138ls1047762vkd.1.gmail; Thu, 21
 Mar 2019 12:13:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwIK5w7nHzZJcjOn6xWRS7hIx4zkGEpIi5/oFFOj3WfNR8h1cwQu1F2mV2AVcx1rGF6Bg2o
X-Received: by 2002:a1f:be81:: with SMTP id o123mr3369940vkf.83.1553195587312;
        Thu, 21 Mar 2019 12:13:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553195587; cv=none;
        d=google.com; s=arc-20160816;
        b=TaN/1hjOfIxKVEqUpNvYStEB8A/ZrXzcPYNkVsovU/zfpxadUOGEmb+PDF6wIhfVsF
         1hVjQudl45IjXdqM8w7wj0DfrobV+kgSznlFWZE2EXqQjRKyqMjxyP41dKZ1RQLuYa1b
         P/2lnqP4hjICVHaqTsmbomEIcP2ggg/ix0vZMvx5IuU6SCmuJvoSgSJ5qv487YSpAhCQ
         ZAHXX3K3f9JPaIK/MjhrACU4jejTOHRiBmkEhQibn8RtAqzJbQu7fGxKVflfQMJTyfI5
         dKxFxQF/IhpeCd8DySX9rN6+d4ZiURurcuaZ7yFMISm2J5z6wmWEZ0ptA4ehToRkdXDj
         GJKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OvRsS1WwqpJRJ2GZ5iGo8WPDDSOBctnUQtLN8RTzIZ4=;
        b=ZOlq3jkWLebVNywWPoEkFMDl5DeBIN3EuoAVK81ooW6JwqMWLy72ax9lg7JEUtt9LT
         tbb8RRHJGoqmLc8hSGZ3Zb9eH80wG6H8+rjJ/GThiOe7gxnE7MYIO12Dz+fxdAvOW2Hd
         0v1uuPF5K3RVOU4h7sjGlEnTkcsTP6WGEyURmd1zepqyA6ltc7GgqcUTKE+kp5hmtQtI
         cfDxVvJ4t3xWdQEAIWl3Jfc2Jv3Tz/ApGVbIbIcoYU3Lhi+wc3fJq/His0BdM9hjpWBE
         LR3p1dCB2zLJBeCZU+Wx1YsBOIQ8LPQGjjxWivFCiVkOhqlhh1V8tcU7pEw+PqsI9bNI
         UjJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tWPFV7sE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n137si84942vke.2.2019.03.21.12.13.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:13:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tWPFV7sE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 934CE20643;
	Thu, 21 Mar 2019 19:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553195586;
	bh=CsjH9Jes8d8gmiC5OqAviHTfn0MsejR1v4tuM/4Yy00=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tWPFV7sE5s6aMtR4a5TVIlSnjpJBc6TdUQW1fJuZaJRs2tEG9EveAJM1C0s5nF24A
	 N8kXQGpMELm7hEOgWS1cYXiKOiGcLRcLnIX1QxZtswfBd3Ga+J7Ao4S9tH8n0v2Q9x
	 1ZIr7tdv8OqQLBLZuCPQIoMFGD4HpwJanOpdE/MA=
Date: Thu, 21 Mar 2019 20:13:03 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Gao Xiang <gaoxiang25@huawei.com>,
	Chao Yu <yuchao0@huawei.com>
Subject: Re: [PATCH v2] Staging: erofs: Use !x in place of NULL comparision
Message-ID: <20190321191303.GA6252@kroah.com>
References: <20190321152007.5726-1-bhanusreemahesh@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190321152007.5726-1-bhanusreemahesh@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 08:50:07PM +0530, Bhanusree Pola wrote:
> Test for NULL as !x instead of NULL comparisions.
> Issue found using coccinelle
> Semantic patch used to solve the problem is as follows
> 
> // <smpl>
> @@
> expression x;
> statement S;
> @@
> 
> x = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
> usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));
> 
> -if(x==NULL)
> +if(!x)
> S
> 
> @@
> expression e;
> @@
> 
> -e == NULL
> +!e
> // </smpl>
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
> 
> v2:
>  -modified commit log.
>  -All NULL comparisions in erofs are modified.

This patch does not apply to my staging-testing branch.  Please rebase
it and resend, thanks.

greg k-h

