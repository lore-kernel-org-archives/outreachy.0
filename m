X-GM-THRID: 6666346191524986880
X-Received: by 2002:a5d:954c:: with SMTP id a12mr13878152ios.14.1552138876021;
        Sat, 09 Mar 2019 05:41:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8154:: with SMTP id f20ls4756421ioo.2.gmail; Sat, 09 Mar
 2019 05:41:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqzxqd7KybTS4MGHCkPBcEqJOEbX3Ryb0+WD7zK14ta+KOhnJNkflXB+cxfdzQ2hvNSsZQHL
X-Received: by 2002:a6b:fc05:: with SMTP id r5mr2651467ioh.6.1552138875076;
        Sat, 09 Mar 2019 05:41:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552138875; cv=none;
        d=google.com; s=arc-20160816;
        b=ZudqBHh57M7TksAEBKwK1bfzzudMoklqGWfColbkRmGlJf5ynCC6cfK/BW40aPRcdm
         Cqcb5RDbBHBDZ/TlWHJAVjVvVOe1ISpCv718tZmsQuJ6mP7GBBLgAsfPqbMV616kILh8
         5jhKw+dtRVT0e5MXGdxE/1cOwc8pKSRq1iH1AEi0pDe0baDF15/bLh5UDEUlB+1s3IZU
         3l3mEJkD1166uuo4v+4SFmlHJNaja23NHmDNEbfMDHDDFb0IbGODy/M4UzZIy+ECBJef
         V4Lz6/7Z9w8ivG3IIGXEtcz8wA7H5ts/CNNwVCl/klhsFs7vwy6xmSl6OdJh0QVnw2Uq
         9gQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vnDiNJXxam+1BEzoiH5qtq2rOMN4ITvKRHpY2baf7Dg=;
        b=iMNIjzQMRaikaiw6FgyDEVh7r5XqkGwieHhvrVALbcOSFWMRE/fDYU11Fc5S/CAt/m
         XIbe1GFsqOwnSuLe3QMyuDk11GcETWHVv9qQFYXzDpCqpaACfdhPwLcVBw0HXN2+5Kxt
         dr9e0WeumLrXsoagkZxudA7t9JSoW8I40p3V8hQlM11PvGTH4cGFOVCymc7TzFzR5n0t
         eUApd3IGiHC4O0gdCTUWDOpwaqOawI40zRss6nm1fKfgkUNSZCAV/fc5MV3YAOJif6Y+
         lv/fiRHICmftEefXepxDzVZjCCDJoE19IwFWp6jWA8hyO8OWrM5nXAf4qUtdPuQdJmtC
         T7Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=c3AV19j8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x22si689584ita.0.2019.03.09.05.41.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 05:41:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=c3AV19j8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 987A220836;
	Sat,  9 Mar 2019 13:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552138874;
	bh=CDdLiPH54RJU3iHqctHJN2jR8R5TrdJtf0U+ojoHH7s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c3AV19j8ksusi7dFHPc9xdruBym2t2FnoX4Q+SuhzP4CKDIf9Sk2lhZIoGgQ8lfCF
	 3Jt2X0CO2j7fMd7Uea5tn6JeGFx8NEPUTuj9gAlLtFJV7OH96JeD9DtNRDIBh48eYf
	 GAGsuPI+vlSqjXZwo+NG6wvU4DdjziNF93b3UAWo=
Date: Sat, 9 Mar 2019 14:41:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: adham.abozaeid@microchip.com, ajay.kathat@microchip.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/2] staging: wilc1000: remove unnecessary variable ret
Message-ID: <20190309134111.GC4144@kroah.com>
References: <20190309110743.41443-1-himadri18.07@gmail.com>
 <20190309110743.41443-2-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190309110743.41443-2-himadri18.07@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Mar 09, 2019 at 04:37:42PM +0530, Himadri Pandya wrote:
> Remove unnecessary local variable "ret" and its assignments from
> function wilc_set_tx_power. Suggested by Coccinelle.
> 
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index fa0e1bd9f836..4a5f83ae06d2 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -2119,7 +2119,6 @@ int wilc_setup_multicast_filter(struct wilc_vif *vif, u32 enabled, u32 count,
>  
>  int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power)
>  {
> -	int ret;
>  	struct wid wid;
>  
>  	wid.id = WID_TX_POWER;
> @@ -2127,10 +2126,9 @@ int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power)
>  	wid.val = &tx_power;
>  	wid.size = sizeof(char);
>  
> -	ret = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> +	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
>  				   wilc_get_vif_idx(vif));
>  
> -	return ret;
>  }
>  
>  int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
> -- 
> 2.17.1
>


Your two patches do the same thing, but your wording is just a _little_
different.  Why not make this just one patch that does that one thing,
for two different functions?

thanks,

greg k-h

