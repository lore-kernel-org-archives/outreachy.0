X-GM-THRID: 6664742734726692864
X-Received: by 2002:a05:620a:1031:: with SMTP id a17mr9401433qkk.59.1552028853834;
        Thu, 07 Mar 2019 23:07:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:acb6:: with SMTP id m51ls299658qvc.1.gmail; Thu, 07 Mar
 2019 23:07:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqwespOhQrT7JuBJtV0R+aOpvhKGMe5hlXB70st9UqYxwPpKeTS/g24mQN5aK03C4ihTBiUK
X-Received: by 2002:a0c:b08f:: with SMTP id o15mr9953829qvc.36.1552028853230;
        Thu, 07 Mar 2019 23:07:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552028853; cv=none;
        d=google.com; s=arc-20160816;
        b=QEYqCxNQ679Ocxih9ltD459sZy9bcQEExFHYzlS5pl76nbW3MfrO7hqYp5j96MJ3Th
         6CI4sDrshhZLueckSKTOQFfWFqAVWNrobK89H01IXX1+tqdcujWh/4GWrx56PXpbhNVo
         lt9B7VIVPk5wXQTJ0j2NpbOr8PQ3n1YFjH5K3wAhHpTalvU0OUA2sE0DUpqHXpvzkx/Y
         2Nl/cnc6TlmZN16O3vtz/5Hij1aQwg0j+AZwxoctiOTlA1BZyoaMI/hsYGWQIW8vBD73
         OIItFyuhuhcFio/gJXS8iP34AG8vimgfU/F5pXLeF/YqszWZjggoYAbzij+ZLho2H+p0
         2gXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PY5g7ltOCt9yYHjFMl3TYDixV50JHi/qvBSAgFLCfPg=;
        b=obNleETqSF9am8quhXaA4dWKHZ7WcohSg69m1NFahEcEq0ys4koTszHIqd4UsDJkA8
         ZkdlFJVnz0/VskosLRt6gPjsXWtHCrj9mg9tm23YdRuC/FBmd24Ey1XS2KgN8theE5hp
         0Z85ixPkJmiqI8S+evEb+/GREOnnTfHsdo8G71Hh6AKbJitnrWB+k74Obas3ORGuPqO+
         1bJXG3ZqqMYb3X0oclf5gWeJBJHWpIyk7dvRHp+lLMb/uwuZyO7l9mnnyf+Zn8G7otbL
         jGxMrCL06n7B1GOHoWghN08excPrk4gjmtuX7bIRqgbEV62pPGMKSfrO+lWyyq5pvVOh
         7JkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s4cKvCmV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m1si458406qtc.2.2019.03.07.23.07.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 23:07:33 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s4cKvCmV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B289020811;
	Fri,  8 Mar 2019 07:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552028852;
	bh=8RPLWKMQ4Ekj6ZfBs881Sl3iS/6wqBfu7F5IxEt+VKU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s4cKvCmVxa4l5uEYDhlWf4SGfsuBVDjvkSXA9ZZXQOFnW6MmfpCP64z26kydjtORU
	 3tO/KDRL5m7jFKIV8MicgdN68EnJG1HWR0k7Ea/xQA5E7pppb3BdvmNhgYKy2tYLwE
	 iWIG4dWUScU1tzzMJf1HNuDu9Sox4HGb2w14JQWE=
Date: Fri, 8 Mar 2019 08:07:29 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Wentao Cai <etsai042@gmail.com>
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: r8712u: Replace '--help--' with 'help'
Message-ID: <20190308070729.GA20013@kroah.com>
References: <20190308020444.3291-1-etsai042@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190308020444.3291-1-etsai042@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Mar 07, 2019 at 06:04:44PM -0800, Wentao Cai wrote:
> Replace '--help--' in Kconfig and indent the subsequent text to silence checkpatch.pl
> warning:
> WARNING: prefer 'help' over '---help---' for new help texts
> 
> Signed-off-by: Wentao Cai <etsai042@gmail.com>
> ---
>  drivers/staging/rtl8712/Kconfig | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/Kconfig b/drivers/staging/rtl8712/Kconfig
> index f160eee52f09..622ad14f232c 100644
> --- a/drivers/staging/rtl8712/Kconfig
> +++ b/drivers/staging/rtl8712/Kconfig
> @@ -4,14 +4,14 @@ config R8712U
>  	select WIRELESS_EXT
>  	select WEXT_PRIV
>  	select FW_LOADER
> -	---help---
> -	This option adds the Realtek RTL8712 USB device such as the D-Link DWA-130.
> -	If built as a module, it will be called r8712u.
> +	help
> +	    This option adds the Realtek RTL8712 USB device such as the D-Link DWA-130.
> +	    If built as a module, it will be called r8712u.
>  
>  config R8712_TX_AGGR
>  	bool "Realtek RTL8712U Transmit Aggregation code"
>  	depends on R8712U && BROKEN
> -	---help---
> -	This option provides transmit aggregation for the Realtek RTL8712 USB device.
> +	help
> +	    This option provides transmit aggregation for the Realtek RTL8712 USB device.
>  
>  

This patch does not apply.  Please make sure to always work off of my
staging-testing branch of the staging.git repository.

thanks,

greg k-h

