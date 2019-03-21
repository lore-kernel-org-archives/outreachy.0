X-GM-THRID: 6670905589378318336
X-Received: by 2002:a63:d042:: with SMTP id s2mr4567002pgi.331.1553192747513;
        Thu, 21 Mar 2019 11:25:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:63ca:: with SMTP id n10ls137845pgv.10.gmail; Thu, 21 Mar
 2019 11:25:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyTOQRn57V9/YbD6eJBlfd4fu87V/OfYP4t7ADMk6DOgZkpe8zEmwa/zu9OXn6v12G8DQKz
X-Received: by 2002:a63:1b07:: with SMTP id b7mr4807763pgb.250.1553192746689;
        Thu, 21 Mar 2019 11:25:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553192746; cv=none;
        d=google.com; s=arc-20160816;
        b=V/AxG6t3qEwnTLGZv6zUKuextsnsLuHfViYZLTT+oPSjdSnUZFgpzZkpd+vrci0ixf
         AsSprxrCUca1TGRmuRjUn23pOElO3kWEkrlJZnigwLtgTWOGAMbTrbIobD4RBbw1ndTj
         A6rnpNmR/jJAmFzQPLSjpbgGe7QefAygQgRNJD20ajXxDtcmMHLWYm0i/iMa1i/VPGcu
         +U3N1g2crbVZdtEM7Vw3czB8tU0R7ybqtNvGevorERCZV0R5H41TB4zmFukUG428F1gS
         ajUiROP5reo76YMGTawYZMCqzXFKApDh9xqRIYbBH/cjFT1lVBfn2gSHwY7OqqMe8IVz
         EL8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3R+dKzkS1FDou7X28RA/gtSUe7aPRaEba/vGMlxR0x0=;
        b=cUZOee3/VtWByIdJBYNCAGoI95SyemVjyRVIQ0Eh2mhRCwEBO22VT1qFpEACGU7aAj
         9D2nS9aNi9lit5ilEy3a7DsgmCZQqmLVFJCxF0DlxaAS4YvvOeos6V/hNHM+oXT0cwYa
         K9uBHPSaVWKualAV3xdhi+YeUzUeiZXi2QUWUaD4FOSvm1kJXSysrp6KicE3GzTJ1GL2
         9tXcewktCqOAzVFgs3qyzOs8OtPY/MUIOPgGnmvWlE5zWq5rouFaEBgKv5pJI8i5LR5M
         Etvy9zDCRIQzqY95olIH5gOcPL/trsOR+XS40FRGThaOz/iDuJLxnlf4NuxHVWqzdeW0
         N6gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=T8drbA04;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e71si339656pfc.1.2019.03.21.11.25.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:25:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=T8drbA04;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E576E218FD;
	Thu, 21 Mar 2019 18:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553192746;
	bh=aw+t0hg4R81o6hRQ+Sl6PuT9N7xz8aJOYrQOKTd1Fp8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T8drbA04SJGf4Cu/y03R0XYmUFoN/r7eZfX/9tiIsyDv2RwZJ3YHzoJ+VFgcQXmaY
	 1JiZASktxmI0burOgXmrOX33Y8Ox6WAEzXJYa98sX7SddVlPuKiqw7DXst0mCVYDZr
	 zl0tLSptjPS4X7IjO+7xXha0ULKjnYcXymldiL98=
Date: Thu, 21 Mar 2019 19:25:43 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: anushkacharu9@gmail.com
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtl8192e: fix line over 80 caharacters
Message-ID: <20190321182543.GA10586@kroah.com>
References: <anushkacharu9@gmail.com>
 <20190321175955.4921-1-anushkacharu9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190321175955.4921-1-anushkacharu9@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 11:29:55PM +0530, anushkacharu9@gmail.com wrote:
> From: Anushka Shukla <anushkacharu9@gmail.com>
> 
>  -Fix line over 80 character issue in dot11d.c file 
>  -Define a new variable tri_first_channel of u8  data type. 
>  -Assign triple->first_channel as tri_first_channel
> 
> Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
> ---
>  drivers/staging/rtl8192e/dot11d.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
> index 68f53013cb95..62f34b38be21 100644
> --- a/drivers/staging/rtl8192e/dot11d.c
> +++ b/drivers/staging/rtl8192e/dot11d.c
> @@ -140,12 +140,13 @@ void dot11d_update_country(struct rtllib_device *dev, u8 *address,
>  				    __func__);
>  			return;
>  		}
> +		u8 tri_first_channel = triple->first_channel;

How about just "first_channel"?

Makes more sense, "tri_" isn't that descriptive here.

But, you need to actually build this code and notice how you have a
build warning, that's not ok :(

thanks,

greg k-h

