X-GM-THRID: 6670800416333103104
X-Received: by 2002:a24:4198:: with SMTP id b24mr251828itd.25.1553194866398;
        Thu, 21 Mar 2019 12:01:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:4c81:: with SMTP id q1ls2314799jad.0.gmail; Thu, 21 Mar
 2019 12:01:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxtmK89T1emu1Iox2w0XpXveKzSyfzGErmxxkzM+g/GDyBCP3MsD2yvJkWKRoL4XtfJmZxG
X-Received: by 2002:a02:8a44:: with SMTP id e4mr3906502jal.77.1553194865251;
        Thu, 21 Mar 2019 12:01:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553194865; cv=none;
        d=google.com; s=arc-20160816;
        b=OKAV+ui/jl0H3JyyqaNvqgSVDv1RKT3C0NDqmEDxxpEfqeuE2NAVLKVtz4Z0rnfXWR
         T1b+QhBk5ybpky2XlSNBp105uow9bvkNBlKtls+XbPFKC2dGhv+Pm6h7wN6p6GGlSikb
         +FOEYtutMtIOmlUqVD+yCQtcupZpPbKXKxo+gO7Dw6WBs3rFO4495/OAnMFMmOZPEVYT
         aA4EcHclynoOzTTU3gBILYTP9JeNYvVVqUwQossXUnTjUzK9EUfp7rrt5CksQb89C71a
         +sTgRYhpEu+lyHMQH1ASqkz/YuYUy93u2eKhwXvns3TicpLu9Ht2Mn8AHEgYgr0cw6aT
         hcgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=DDYblUhCQJxA91zC7UIveFG4jWiBExAB8tYd9lXjAo0=;
        b=icrZJsxJLy1mvS1RY/UyUZkpDX4FLWwHMJgLqQ4Q5ozJqgU0qY6I1f7iSpQlnFJrrC
         VaZWw6Y3v3E7onI1PmPONHovd7nhprTIlcoDjYozKyz8MGuH4WbgAF2BEsB75YM+Arar
         DfUz2c1y0X0cvTctXuE6CPPNhTSwM8vdo/1wpIHu04xiV70axLdISojwiJeePFUpqAJ8
         kEDtGolmGsorGT+xo9qoo52Ctf7FiV8hZZCuhuDgV+/gWPZtv/uW1tlK3HFSaNidVeBw
         VIcg+fcy01fNZ+LPeFElA0kplEXXgnxTFN0rYaHm5wBlp0qb6cWjHb9T0X8ZhsxrljZy
         ZcFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DQvLZWqP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g127si650972ita.3.2019.03.21.12.01.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:01:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DQvLZWqP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0285621873;
	Thu, 21 Mar 2019 19:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553194864;
	bh=p5THpMVyME0sLXdShnSOrNH/yT/n2ny7J/fX6GTtwtM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DQvLZWqPkRehHBfio8iVwR8J9aWhSrMX20qlvIMRU2PsWIwQUlAabWGufHIzQk87n
	 jU2cJ6yVw9uVq3RUF7zK5H64facxn+KzJyo0zczm2ZfNNGW6Nj8VK7vkoxUtyAsBSu
	 KYgSN06v6Vs6wykYnvXQIlD+zpL5rnwVT/AvRGTI=
Date: Thu, 21 Mar 2019 20:01:02 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core:
 rtw_wlan_util.c: Modify return type suggested by Coccinelle.
Message-ID: <20190321190102.GA30770@kroah.com>
References: <20190321111222.11964-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190321111222.11964-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 04:42:22PM +0530, Sanjana Sanikommu wrote:
> The last two lines in the function could
> be compressed into one. Avoid usage of local variable.
> Challenge suggested by Coccinelle using ret.cocci.
> The below is the script for ret.cocci:
> @@
> local idexpression res;
> expression e;
> @@
> 
> -res =
> +return
>      e;
> -return res;
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
> index 4480deef95a1..70776f8e19a6 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
> @@ -1182,10 +1182,8 @@ unsigned int update_MSC_rate(struct ieee80211_ht_cap *pHT_caps)
>  {
>  	unsigned int mask = 0;
>  
> -	mask = (pHT_caps->mcs.rx_mask[0] << 12) |
> +	return (pHT_caps->mcs.rx_mask[0] << 12) |
>  	       (pHT_caps->mcs.rx_mask[1] << 20);
> -
> -	return mask;
>  }

Did you build this patch?

Just looking at it I can see the compiler warning that it will emit...

Please always test-build your patches, otherwise it just makes people
grumpy :)

thanks,

greg k-h

