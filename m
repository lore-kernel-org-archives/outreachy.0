X-GM-THRID: 6810513252473110528
X-Received: by 2002:a63:5744:: with SMTP id h4mr17913076pgm.235.1585720614231;
        Tue, 31 Mar 2020 22:56:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9688:: with SMTP id n8ls15981350plp.3.gmail; Tue, 31
 Mar 2020 22:56:52 -0700 (PDT)
X-Google-Smtp-Source: APiQypKwWBSG8LQ1Vi+RmZ8h6TGQO+72FGYxZKtVWRqevqR6d9HwYttUT3uQmV49PulXR3b3fjwA
X-Received: by 2002:a17:90a:c001:: with SMTP id p1mr2955433pjt.86.1585720612834;
        Tue, 31 Mar 2020 22:56:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585720612; cv=none;
        d=google.com; s=arc-20160816;
        b=Btj2K+uK5Iq8mIgCa2Tkg4h4dDsnbR+Sb+im6OZtm5fcKqQmabjtwETToFDqtOpsBg
         rTlV9tzBvJFJnWYC94CPpof5nVkFTAcEYg2ypAyZvIT7ZU+46UE0ETDGtEzRT7dw5Aps
         YrYOJsxN9dOBEJ2iQLrsC1k9xpWooIX2p+F1LtxjDut47Ecbmy0LbkNReYzTlow9bdJo
         6Idx3FeET9vUSB+66h/F1RLdzRYgcWkyNPnRTtW+eOFo8ILYtVOm8xNVgh4ArQNIySqi
         fMHfrOH5m4+hpZSinyinxIGDbE4E4rnGSABdr8SzqoZkjWF0qAAhxAOKElJkAmi172Jl
         2bCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YOXX5lJaflHNnkQlB5ONpk9E5fdssUt8YSmYftm9x/k=;
        b=aqClMWnuf9cZCv3WdbzAljETL5mirmWpCzAZ3SOKOUajIeMK25wCEbd1j5rridgidJ
         NBqFTVToolU0HopfTGwNMC4NA4/0ZiyBErOyiVcucm6jJSm9W+37wM9KDMJpKYVgNVqR
         //Is2tD7+AaLNG61abwKtaIg8cbUSv80VsGZuIZ5koKuO0Qz1R8WLLonPzxVCY1hGfXN
         rM6/nVJ+EL0EWnq4TqbHIKoAvxNf4SaeZUHYjm35fmTKvyu+J0XkW7s/4XYPtmFqG+Ya
         KZBO/IrFpEILb23R87qE5Upf6cyfR/bF/CgmGWibfEVNn0/hoAU3L3KDMmdvcxf+yhFB
         o+/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ezCtSz3U;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u14si437120pjn.2.2020.03.31.22.56.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 22:56:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ezCtSz3U;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0CEB72074D;
	Wed,  1 Apr 2020 05:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585720612;
	bh=dArZQ73M3GxhpOHWJqxIzzu5zovFp4L2O50LM0kHesw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ezCtSz3U8aAvabR2JTuo5gB373hZbZkNceamqMGWBpcxHYWk3SqfYQi7etwdOClD+
	 PHQnWZcU+XTlKpXz9cPuTYQqtjLtA4XyONXf8F3f4oEU26cmifQ1v7OJ9g47fH/8Yq
	 qrK9/nXGCYEwo+XbcgG8J4WwoRq7GgTKoYMFj70A=
Date: Wed, 1 Apr 2020 07:56:50 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, rspringer@google.com,
	toddpoynor@google.com, benchan@chromium.org
Subject: Re: [PATCH] staging: gasket: using octal permissions instead of
 symbolic permissions
Message-ID: <20200401055650.GA1903894@kroah.com>
References: <20200331230940.GA12376@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200331230940.GA12376@siyah2>

On Wed, Apr 01, 2020 at 02:09:40AM +0300, Gokce Kuler wrote:
> Since octal permissions is preffered to symbolic permissions,
> octal permissions is used.Problem found checkpatch.pl.
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/gasket/gasket_sysfs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
> index 1d0eed6..28dc422 100644
> --- a/drivers/staging/gasket/gasket_sysfs.h
> +++ b/drivers/staging/gasket/gasket_sysfs.h
> @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
>  
>  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
>  	{                                                                      \
> -		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> +		.attr = __ATTR(_name, 0444, _show_function, NULL),          \

Why not use __ATTR_RO() instead?

thanks,

greg k-h

