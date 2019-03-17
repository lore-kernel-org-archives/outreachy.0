X-GM-THRID: 6668974051336126464
X-Received: by 2002:a24:78c:: with SMTP id f134mr7089006itf.30.1552820160729;
        Sun, 17 Mar 2019 03:56:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:194d:: with SMTP id b74ls2652885itb.3.canary-gmail; Sun,
 17 Mar 2019 03:56:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxD0o5U472LBSdFml0dL3S6J8fqKMrmX0C/QZpSes3ebbgWzULA08sqyVE59TBM0Wj6x8Bd
X-Received: by 2002:a24:5a87:: with SMTP id v129mr7293615ita.10.1552820159984;
        Sun, 17 Mar 2019 03:55:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552820159; cv=none;
        d=google.com; s=arc-20160816;
        b=q5CU2qd2HA1adjLn5n2nG0puVolvMAdv/Ga7eOo12iAuxaHZiFdiGa/4WCiD0U40fq
         Z3Q5T3Rb6Ju5A3CSgnkbnpbar4IoLra05yWCMqXzYTFAZeR22sWwDWWQ/e8rUJYH5CUO
         xgnj8qx+0S5rJxaIGKzPdQmFTfxIscDtcLwz4qmSq6HfKd/aoQh5RxcBVMVXlwgQrabc
         zWrH/7941LKhNVt42X+W1mqTmJbqXQ74taubqEu1KWLjw6vZg+XDzhF/FMPo+1MWaAES
         2j7uD0eM/YNutYP6ePnOTmsMCHF198OHysuBscIC4dYfLOKkNYdffLZ2ZNagwk+NTJ90
         GKFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=l7P8dgZiKGnLSy7AbrBr2uXILG4MKjLrLdpBCH13os8=;
        b=xV54kOmZqDyf+Xe3QpeNWUd7NwOPmn+UR91QMhczQiDTFJ1tLL3wKsZNw3ZigX0i2V
         6M92dlv4gdJrW7fkAA0Fj8lD7yvvT3fnRyC1IUgy6CTY9xGfHccZeyty+m/9kWzST4gI
         lMWJT0n8Cc59xxri6dR5vrN+4aJbbJ2+O08XH205mcG12bIVoN/i9UWiXBxZMyzcHXQB
         704EFDtLzdy8+eI5x5D6QQJYPpNYIHeCLoFYTFe+3sszKSVTV232M9+lPF0Ok+DeTHkw
         I7HWh9PbpdTlbrR2nkAlt3dBc3S/af+cXbUTIwrXmvk8RpB21MCHQWpm4BzWOlaDCOVw
         /l3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hjm4tZh5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f19si347595iol.4.2019.03.17.03.55.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:55:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hjm4tZh5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A97122085A;
	Sun, 17 Mar 2019 10:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552820159;
	bh=LdYd8h70yS1Fa0wo0biudZN1gT05qatgu3i+APTQhMg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hjm4tZh5KgZtZUJjoBd7KHb8R/O0GWcB4xdLedZ/6tIsr9QR8T9WZUMNcaBLn/T4M
	 3yJfOUEN398sKMiw4yLLGNPViY/AR4Ssd326NTFv7fI8qjskS5ZTYy7D8p+McjlAOD
	 O7lsyDEhOg+C/+0Uv1rJFxmEtJtFV/PLnp+9Mw7E=
Date: Sun, 17 Mar 2019 11:55:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 7/7] Staging: rtl8723bs: Add missing NULL check for
 kmalloc
Message-ID: <20190317105556.GG16257@kroah.com>
References: <cover.1552782299.git.madhumithabiw@gmail.com>
 <9e935823819d846fd331aa188f69ce295deb4ca2.1552782299.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9e935823819d846fd331aa188f69ce295deb4ca2.1552782299.git.madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Mar 16, 2019 at 07:32:24PM -0500, Madhumitha Prabakaran wrote:
> Include missing NULL check for kmalloc in function rtw_init_evt_priv.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 2890e12f6fb1..4ea6483f4634 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -213,6 +213,8 @@ int rtw_init_evt_priv(struct evt_priv *pevtpriv)
>  	pevtpriv->c2h_wk_alive = false;
>  	pevtpriv->c2h_queue = rtw_cbuf_alloc(C2H_QUEUE_MAX_LEN+1);
>  
> +	if (!pevtpriv->c2h_queue)
> +		return -ENOMEM;
>  	return res;

This is good, but if you notice, there is no need for 'res' in this
function at all, you can just return 0 for it, right?

So in the earlier patches in this series, you could just drop the local
variable completly, making this a bit simpler to do.

thanks,

greg k-h

