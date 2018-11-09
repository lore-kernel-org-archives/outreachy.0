X-GM-THRID: 6621495393645494272
X-Received: by 2002:aca:5d8b:: with SMTP id r133-v6mr7020995oib.35.1541785667851;
        Fri, 09 Nov 2018 09:47:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3d88:: with SMTP id k130-v6ls819001oia.2.gmail; Fri, 09
 Nov 2018 09:47:47 -0800 (PST)
X-Google-Smtp-Source: AJdET5dxwLY2fBj8yiJE/0BN44vK3NqeiTL1gCkA14+jxu1K3fkRZ6UTx2MV5NHk6OEco0iXYzRs
X-Received: by 2002:aca:3845:: with SMTP id f66-v6mr7046952oia.9.1541785667016;
        Fri, 09 Nov 2018 09:47:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541785666; cv=none;
        d=google.com; s=arc-20160816;
        b=d3jG3nIq6heJ03vk9vGV7FDv4Gj4wDJDxNe+b2dyi37+mQZr9rRSTy3qIPLS6SZFi/
         OFsRDgFqOaW4Hws4awLZMYiY2Cn3lIty2INhb5XzxeInEwOqHuqrp/gt+riwLoz6NV33
         FcRqklqtW7XKrRns4mhT68kwv/tkUF3IUaoG1lAhKlbs1TwKZ8Q2pKpVzLcFlATEEJif
         qDbYzX/CrN6UdIcjD+vSv83TewyklbnzFICIOCus0YshClzcHgJnaM7+hgebh+VdELt7
         dwY4ZmwWrR0SWgqYOrmOw/dqwS9QOV7eogrZYMm4L2zhoLsC7Df+kDOQaAFzeyewnDRh
         NXMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=agoMXYPjdeUSJYi3YletAcNTd5NagazHmUu0ny1+JcY=;
        b=Db7BKxJ9gTZKbxfaE7y1NhrCoAiEv7PLwEtPryyzgvMp8sD9HAH9NGsPk932LqkYmP
         +TiJpvFvocSZyeAc3b33XBNqZGlBvf6gQzr1C2ob2PPIotj4JxyeF+z19oRpaObsQkuG
         ePnewZGBP8p2RoXFCSpo5LYrkLYUbsFh5YtcD8Arh7neP6+eJ7f5s4mnJ15wwoccnZLk
         Hka4GiW9TGH1otE94SkKEyoSCtvdFD64uflIgdiKweXcQxGgc2iyomv5oKSLVhJtFAaA
         zVCWuBBDt58m999qIdSqjxdAMdhWsE+JoBKi8zLJlBTVdV0u5HXvsq7WW2Fa2f/xew79
         0wHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RcHJYhcP;
       spf=pass (google.com: domain of srs0=8jp/=nu=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=8JP/=NU=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=8JP/=NU=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e143-v6si352960oig.3.2018.11.09.09.47.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 09:47:46 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=8jp/=nu=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RcHJYhcP;
       spf=pass (google.com: domain of srs0=8jp/=nu=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=8JP/=NU=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (71-6-98-120.static-ip.telepacific.net [71.6.98.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0C9C520827;
	Fri,  9 Nov 2018 17:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541785666;
	bh=ZOcEf7/3CCLoOKA9a0hR8xZLOWZSJTY/AeRocYUfYmo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RcHJYhcPRmXKPLa2mCMTm//VdzsQM2y/IUWdFD98BhKpSO5Z4FT0J6t/uMVCf3D3B
	 8huA3hyP0fSCcGBYEa5ZYLQ9fkMinj9t4A2NxzqsZcoBHrhIy2x2otsuOwevUsgqj/
	 NxR7qByBEe48GIJ05TNC4G/9w7D7kHwaU39ieoZw=
Date: Fri, 9 Nov 2018 09:47:45 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 08/15] staging: greybus: insert empty line after struct
Message-ID: <20181109174745.GB5821@kroah.com>
References: <cover.1541771591.git.code@wizofe.uk>
 <d69eb9b74f95d985be6e017b85eb7cac8958606c.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d69eb9b74f95d985be6e017b85eb7cac8958606c.1541771591.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Fri, Nov 09, 2018 at 01:54:17PM +0000, Ioannis Valasakis wrote:
> Insert empty line after struct definition.
> Reported by checkpatch.
> 
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/bundle.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/greybus/bundle.h b/drivers/staging/greybus/bundle.h
> index 8734d2055657..4aaf7a0880fd 100644
> --- a/drivers/staging/greybus/bundle.h
> +++ b/drivers/staging/greybus/bundle.h
> @@ -31,6 +31,7 @@ struct gb_bundle {
>  
>  	struct list_head	links;	/* interface->bundles */
>  };
> +
>  #define to_gb_bundle(d) container_of(d, struct gb_bundle, dev)

Same thing here, it's ok as-is.

greg k-h

