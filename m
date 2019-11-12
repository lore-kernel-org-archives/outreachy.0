X-GM-THRID: 6758464167600979968
X-Received: by 2002:a81:36d5:: with SMTP id d204mr329261ywa.14.1573599857172;
        Tue, 12 Nov 2019 15:04:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:7845:: with SMTP id t66ls74903ywc.14.gmail; Tue, 12 Nov
 2019 15:04:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqwnPZigA5Hl2sgh/bEmTc4sesc8tbTrhW+8WoYocoilMiYJyWTLRXJiMzq+H/OhtwYd5yBE
X-Received: by 2002:a81:7915:: with SMTP id u21mr306853ywc.265.1573599855706;
        Tue, 12 Nov 2019 15:04:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573599855; cv=none;
        d=google.com; s=arc-20160816;
        b=rW/s0f8xbgOsQddfKoq/7Xd2biZBZzd9WVU0ujisjqotVqDwqyNMSC4YQ0wWf705IF
         t6VIm+zYYCwOmw9XK5ho5wR0byAzDJN9P1in2QPIyWV1ky9nxz2psII5AE4Px+oaLTBr
         XW+ISnIoTs7YjUy/PawToZ43TmJWMjlW+v38zrYA2azrKSziOVis29LZRhjsAVMo+a/m
         RMN51bMygJWyihyadCbjBpfj/p0htBveCrU2SwIqvQ0C7fNih9zaV4Cn8L4qUrOadcd0
         BK+NhXs9TeOj131vOQ5grFA5Se4lnaA7XuKh2T7ZyLUnAW+NFfPsCRLPxT/st3OS4C9H
         fyBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=6G6jnWUjpil0cbFDHaUp1yhwPsPWz2t9BaZDCFLF0DY=;
        b=dmfOhv9e9K9+IAbBTxzD3Zxn3p06zknRL91i2HMgA/wvsXvjysZf7snkC8PrarNwUc
         z2XCXzPpWOqGiWV4booCkzdQ06zUsDMivjotv+N6iTKbh6M1ODO9j0rN/lFPrtySOiiF
         xUutnO44JKZq4M3fNtZOglagnh9jFomGJbvTRtFk95cyvd4rwi/VLjUpGWDFJWjroLfJ
         2KJW65UUsTR78YNHf6cK/66390H5yajHFZ3VqS2UQXJ8g5elyZNpprygJsurTyF88J3l
         Weao3IHKVFQfRwztEix2uzidkEbOe9UezGhHUL+dZYNsWrZNnPlmQ3kVNP465YgG/6ds
         9vgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1ENLFoOP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u3si22642ywf.4.2019.11.12.15.04.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 15:04:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1ENLFoOP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [8.46.76.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A554020674;
	Tue, 12 Nov 2019 23:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1573599854;
	bh=ulumy6jaRowMqKe2WImM8RXemRc2G5E/BwfFfPJzRJc=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=1ENLFoOPOa8e2UQmpt3efX5qWWH1K0t/L0HcP74raKcGkMZwRXGpP/RHpLyrWB6ZO
	 ukAcn9s3VAGxcrBOqhauwwxVRzVxaUtZNEQKU+FgfSRz3c7sRUJBuWLpvKHrYf6gV2
	 ebppaR1vQTeQ00TgVfev5SwkQdPl4UDmmtMArnA4=
Date: Wed, 13 Nov 2019 00:04:05 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 5/9] staging: rtl8723bs: Add necessary braces
Message-ID: <20191112230405.GA1904763@kroah.com>
References: <cover.1573577309.git.jarias.linux@gmail.com>
 <9653d1c5ea7ebd7b4137edea4f5eef74ea65703b.1573577309.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9653d1c5ea7ebd7b4137edea4f5eef74ea65703b.1573577309.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Tue, Nov 12, 2019 at 11:54:32AM -0500, Javier F. Arias wrote:
> This patchset adds braces when they should be used on all arms of
> the statement.
> Issue found by Checkpatch.
> 
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_xmit.c | 31 +++++++++++++++--------
>  1 file changed, 20 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> index fdb585ff5925..42bd5d8362fa 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> @@ -370,8 +370,9 @@ static void update_attrib_vcs_info(struct adapter *padapter, struct xmit_frame *
>  	/* 		Other fragments are protected by previous fragment. */
>  	/* 		So we only need to check the length of first fragment. */
>  	if (pmlmeext->cur_wireless_mode < WIRELESS_11_24N  || padapter->registrypriv.wifi_spec) {
> -		if (sz > padapter->registrypriv.rts_thresh)
> +		if (sz > padapter->registrypriv.rts_thresh) {
>  			pattrib->vcs_mode = RTS_CTS;
> +		}
>  		else {

The } should be on the same line as the "else {"

thanks,

greg k-h

