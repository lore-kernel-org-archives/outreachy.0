X-GM-THRID: 6673132168254849024
X-Received: by 2002:a67:1c82:: with SMTP id c124mr4255681vsc.13.1553875495880;
        Fri, 29 Mar 2019 09:04:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:254b:: with SMTP id l11ls455036uan.1.gmail; Fri, 29 Mar
 2019 09:04:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxlpSqp54CNEQFlLC4Vwt/eLrXFTwhGEDrtvmlzD8pU0sarFbjUg37uiHQme88Qy+Br4YVt
X-Received: by 2002:ab0:3141:: with SMTP id e1mr3440488uam.9.1553875495196;
        Fri, 29 Mar 2019 09:04:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553875495; cv=none;
        d=google.com; s=arc-20160816;
        b=XxIBXx1CAysjJcdSGE5lw/0sKATOX996eVDan6mBOvT+w/3hI19F+xK9jZOqW4b+Ia
         J2x6HCpT/WOwPGB5SSSAl4HwoAakxZJnIBRYzzbHCDiGTC7JwUh+G6TE6DZGQ6T7IqD1
         80CEsSaZo4Wr+qBgkPgB7WGz+S7yHPzFxjFSCYcGx1OIJv1iSVVSj8HdCmvB8jvblWyP
         es7k04dUWj0bGApJU9gkpMA7ik29HFblhFoZOzGEHQOWD5rI4U3wWXWPGXtfOxPeqHRp
         4IMQNqPAu7aQ3O0cIovB+R7Na3j7NnqB/bXKVh/Q7F2bURYbTI1LzCeJFqEt+/fhpjzT
         htTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=i7HIq7ntWROa7zH47yooATeyj/UKLAKaRsae7WfjjK4=;
        b=PuQnNTV0rbgUxP2ghL5+jmxl/dqov2+WuUp8EZYBPbXli6p6rLV7cghiQseO2mgAA6
         nCYB81G1R9s6z/pnG3C+APnOmApPZ4cHLPKYBmRHtlevcfhxI2c0QRdOqKERDDc2aMPJ
         v7KXZcKL2Q55SmT0PkSZWYSbqr2cC0pfLjaDO/jgnkaCe2Z7ucVMIdc2ym22STF2ixJY
         9ptZ78s75OvjU46OGFKx12kasrBdSrGDxLTWCDzaWO/CoKd9auj84GaQ/YA/XJLlGL0h
         nzuQtNeBJtUo2qc7WQjgGXf8ZaUqlAypJcE3gkIxXC5yGgOeHSo8ppNYdMG0x4Zw6LoU
         iSyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XF79V0Nb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n74si211618vke.2.2019.03.29.09.04.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 09:04:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XF79V0Nb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7A4F4218A2;
	Fri, 29 Mar 2019 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553875494;
	bh=whwj7XfeeV0Mqz7lAC8XSGXMkJIxy6WpZPK/yq1AtC8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XF79V0NbgYwFAnurTri58YfpU7j/TtTL/CB0lDcACNvgRevZ0HwkHPSz8kq3kjpr9
	 1MEGAOJmWGr+SLmpYRkaJK1jqUjXLIM2/SSXXpFTr1xmFcHuEs6mhbrKMQzoiVfoa3
	 4IaYlhKnKoCuFHe5J7NGp1ZHEgchPj2ZKwVaVeuI=
Date: Fri, 29 Mar 2019 17:04:51 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: mchehab@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: media: davinci_vpfe: Convert ceil macro into
 an inline function
Message-ID: <20190329160451.GA6197@kroah.com>
References: <20190327180052.30298-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190327180052.30298-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Wed, Mar 27, 2019 at 01:00:52PM -0500, Madhumitha Prabakaran wrote:
> Convert macro into an inline function in order to maintain Linux kernel
> coding style based on which the inline function is preferable over the
> macro.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> 
> ---
> Changes in v2 -
> 
> - Corrected commit log spelling
> - Made the subject line unique from previous commit
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.h   | 5 ++++-
>  drivers/staging/media/davinci_vpfe/dm365_resizer.c | 4 ++--
>  2 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> index 174334b53f96..32dce3c95304 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> @@ -27,7 +27,10 @@
>  #include "davinci_vpfe_user.h"
>  #include "vpfe_video.h"
>  
> -#define CEIL(a, b)	(((a) + (b-1)) / (b))
> +inline unsigned int ceil(unsigned int a, unsigned int b)
> +{
> +	return ((a + (b - 1)) / b);
> +}

Please just convert the caller to use the in-kernel function for this
instead of having a second one in just this driver.

thanks,

greg k-h

