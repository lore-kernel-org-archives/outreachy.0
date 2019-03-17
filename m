X-GM-THRID: 6669371163637972992
X-Received: by 2002:a37:d959:: with SMTP id u86mr7505902qki.30.1552836735762;
        Sun, 17 Mar 2019 08:32:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:7344:: with SMTP id o65ls6250808qkc.8.gmail; Sun, 17 Mar
 2019 08:32:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx1R3V6dUUxYhW+tTYPskp4eumB5gEU5HOxDEe/cIsJ5cSjIQe8e5X7lM4mhbXclonyCdD4
X-Received: by 2002:a37:7604:: with SMTP id r4mr7027260qkc.27.1552836735095;
        Sun, 17 Mar 2019 08:32:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552836735; cv=none;
        d=google.com; s=arc-20160816;
        b=rZvksN/weQ+VYyur1qcdoBLuzxQ0TW8b+OTYvKuHRZDS03puEAF6ayQuNq/XIhVJ39
         Z878Fy0gDmbe1lSDY3yP25UIJOHFLWlG77VIUxle8/iidyM7mFYcWQbYubl0DQ+35by9
         KWs/LRhcynEEh37xtQIRz8f/i5hP0QS0sGFsXTBXq2mqettdKhfo3eIGFpPZBw+ZHTMX
         oYO5SE+VNAiGTa6J0Zx0Xl9/3XfqgEDCsp/clokwJ9gLvMEDpHIwR3vEeffClOcsCxWW
         smEdFhguP/3WRLN0RrbodD7xl5aABLSI+v+9aZNn6xciJO0BjANGwC7NoMUxErFYdRb5
         VyPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=hFvOW/D2u2pY3SShf1IdqPJL6Z05SnT8slW1Mz5qojs=;
        b=xOQBDWxmfd3s5O4aWQboqgPTNe/+LxlDMaBA2Z3O67radsPwgskyhM95bB2k2qZmev
         P9wJ/dIt7YA2EbB+elfFgDhUc+TY080u4JvnV3ejaODrFeeshrXcSFGpYgBF0cDZPtvs
         4rwwjgd4l2vIwPcsedOOD1iDUzTEJKvrcd6Mhe8k8bvm9iRvYhr8zWgVB4brCU9wvTvf
         Vya7+xCuiSu4CWDPIfCpuZB4lxXFLSiDasxoHcejvIBK8AaNH+8VclLFlD/9X87GhnAK
         5pl44q/lyzudpuviKUlxy4Wx+uxFpbueSZTHeAQeWd9Ew2B3W3nZudpW0c7mid4hJbCN
         uFZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=npZ3JAXz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p1si339630qkg.3.2019.03.17.08.32.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 08:32:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=npZ3JAXz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 81B892087C;
	Sun, 17 Mar 2019 15:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552836734;
	bh=oZFdz1HJzBjut7K1ILWAy1YWout4VSnAKuSnF572+Y4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=npZ3JAXzg8DF84JiLehHmtsK5D/hv0wtuDGNyHUEfWMVkkA5fXAzpEoL9zg8cexjo
	 o3zuK2gcXuF0XIRVsKL8FhmH7lLUGMUuGZ4FhbomfnA1sM7anFQRVPEfjLZFw9LTmB
	 d21Z0nOQ+70CpC8DDbIM48yC192EWfIDTVQBhuyk=
Date: Sun, 17 Mar 2019 16:32:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel]staging: greybus: dt compatible string
 "google,arche-platform" documented
Message-ID: <20190317153210.GD25814@kroah.com>
References: <1552833963-14600-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1552833963-14600-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 08:16:03PM +0530, Payal Kshirsagar wrote:
> DT compatible string ‘{ .compatible = "google,arche-platform", }’
> appears in drivers/staging/greybus/arche-platform.c file at line no. 624
> and 630 documented in file named as
> ./Documentation/devicetree/bindings/vendor-prefixes.txt
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.txt b/Documentation/devicetree/bindings/vendor-prefixes.txt
> index 62f0b03..110028b 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.txt
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.txt
> @@ -157,6 +157,7 @@ globalscale	Globalscale Technologies, Inc.
>  globaltop	GlobalTop Technology, Inc.
>  gmt	Global Mixed-mode Technology, Inc.
>  goodix	Shenzhen Huiding Technology Co., Ltd.
> +google,arche-platform
>  google	Google, Inc.

No this is not correct at all.

Please read up on what device tree strings are and how they work if you
wish to fix up stuff like this.

Blindly trying to make checkpatch.pl not complain about things is not
good.

thanks,

greg k-h

