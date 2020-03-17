X-GM-THRID: 6802694026822680576
X-Received: by 2002:a17:902:7487:: with SMTP id h7mr3837603pll.298.1584445714055;
        Tue, 17 Mar 2020 04:48:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:834a:: with SMTP id h71ls10809373pge.4.gmail; Tue, 17
 Mar 2020 04:48:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuU5HIlt6roEe/cKibKF8MBfiiuZUuV6+0nvmcHLBvPuBXm/nTcvpOIAx4jpaT3zBdXVWYR
X-Received: by 2002:a62:3603:: with SMTP id d3mr4880273pfa.37.1584445712455;
        Tue, 17 Mar 2020 04:48:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584445712; cv=none;
        d=google.com; s=arc-20160816;
        b=Iio1DCTUJW5zboXkQ7BK8CkfBUdyFmZyinbCKmkAONCNGrkViwlzCrpDw5HiEgXab8
         xPtGPXSWUuQ3v4oft+CXik3ab+C5gJ0RB5mhcq/12M/UVOhkTpFAhnVIq5NOSj/kvqg5
         C2rU/xj66JUubncF9HlrwYVVZ5eNSRcgotvLO8oLiK8TTX82QrOb0xujKndg9sf1sovK
         ZbkuiOlLuqTIx58qMhm+0N4UAMKk90yuP97XuFfAdEyoOJDh5tdJhUyPnoJZmbt5zWp0
         wFjx+wq/BYCEylDHHzhhuDHW+pHf66IhjqO5Bc5NHszOIJDEG/WzjphVmvqW9OKU0RVw
         FH/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZnWbuv9EZ0zkAVTilGLQnQL8dn6S82d/RDNIAFp8qkE=;
        b=FzVIWBJgyCO97LbyNaggUVS0d5bhNvXfa6eAhP6kfSBJXiecxx71HBzC1sgFAyM+pP
         6OoUi9LmYIrvinLBTvxfYs6LzyN6UiXJomZdDl/dAmcIgBMdNtJWKt3jFaBuAlByCCqS
         982AqOgiBmyNN4iT08VhOLd4OImS2BLZACY7j0/kNAb/YAuyXY26nEHxcLe7cr/cxncP
         IO5ELdB/vPH8ro2cUBn6VF/RaF92FpCxVGL3Q+idPyCbgiMM5LsDhZXuQG8juWSin0w8
         A14H83GYIwso3/o8y9DnMuehp704MToYfGFWLPbucfmDX5zKCiV5mWXw8fvxs5A4T7F2
         psVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vQGenp0u;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s20si225806plq.5.2020.03.17.04.48.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 04:48:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vQGenp0u;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BD8C3206EC;
	Tue, 17 Mar 2020 11:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584445712;
	bh=oIXX2OuQIS9PNXStyEv9PyzFRxrl4cnQOz6XeTH236s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vQGenp0uhdO+QWDFqBIpxv8lF0Pi/u7n06iFoh+3qga8CkrzRcgD0NqmLfh7nTwkT
	 ywB6VsizEKmyv+BRQMdzzVhYy8celKZdsR8SXEC0XBki3cBxU9pOMJ9SEeJRl2jvLp
	 CQQjVNiwFs/o+Hb4lo+K6nWAf7ejly6QvO5j0tAg=
Date: Tue, 17 Mar 2020 12:48:29 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v5] staging: rtl8192u: r8192U_wx: use netdev_warn()
 instead of printk()
Message-ID: <20200317114829.GA1235746@kroah.com>
References: <20200313090544.6334-1-lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200313090544.6334-1-lu@pplo.net>

On Fri, Mar 13, 2020 at 10:05:44AM +0100, Lourdes Pedrajas wrote:
> printk() is deprecated, use netdev_warn() instead, which is a message printing
> function specific for network devices.
> Issue found by checkpatch.
> 
> Suggested-by: Julia Lawall <julia.lawall@inria.fr>
> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
> Changes since v4:
> - Log message correction.
> 

You sent out 2 "v5" patches that were different :(

Please fix up and send out v6 properly.

thanks,

greg k-h

