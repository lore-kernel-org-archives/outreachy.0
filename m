X-GM-THRID: 6805811773689561088
X-Received: by 2002:a62:778d:: with SMTP id s135mr2661307pfc.21.1584602826424;
        Thu, 19 Mar 2020 00:27:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8d97:: with SMTP id v23ls1076539plo.5.gmail; Thu, 19
 Mar 2020 00:27:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuhU5kirxGxQY953QSR+9quvjKhb5+wDglvl/E57tnIqz/yg6sqkmL1P0s2+0AKNRqAz83G
X-Received: by 2002:a17:90a:a511:: with SMTP id a17mr2411493pjq.178.1584602824565;
        Thu, 19 Mar 2020 00:27:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584602824; cv=none;
        d=google.com; s=arc-20160816;
        b=GUFyfHYXxdvhgx4T5pot+Qdnu862ehj5MjcSgllbYrA9+k+HRKU01cxOBQAQya6jgY
         0KmrGwimZE2ZzAPQhLgJdgK2cv4rkzlUBI/4bD04N8uX8v5M8mpvw56s2j4i+PsIx7MD
         eLd17yI2q8vTKxCdKeXZ2VVOVcdPZC2VCez7+19KAJ98KDYLdJ6h5WKxXPcufBdNhur9
         ES4WUBxV3g3ruBvJkgA0ZB1+mt1L2we+2KX0tLqQRN0tQdtsIf0a52lY+2X6vmNlx4Tf
         hgXG3GAxMBk8pf2uAeDeG/YpZeImpQUfslkMvf+Q6GOFhi1cU9wLuT0IxwN3AJDtcroa
         x4Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OyHnfHsKv2+RYvHQCgqJ76WEITBK6kYeQlEU3Bzfark=;
        b=cuhwmL1w5MStBIxjXuOKzKxVIPpXRf56uwZf4XWU/YVlX7j7sz4r2M3Clo6WQqSTXc
         yCBrSLiSd8Jfgu/QTTN39S5G9uklQIvc7d73BOQrC1FbXi5SDeXPEcCSr9u/S90zQYX6
         AOFJkmKJfh/QiLl5EM4Uo1QkipCEHDFooakYvXeef68xJaHcY/ESl+YZryVUVwO3qd0e
         YH6dFNSbYZQA7ZIaVK22a5ASrotWEEsUr8rLQAk1eiyxA/0oTTtaJ5hxvLj53k/6ZZnq
         zOFFNjdNgGZfsGTBlXAI8b7S4WQlPNs4V4qbUum09zRC+YkOYqr+1pqFLJ9jxSeQUtZF
         WbLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="fX/5gLWH";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u15si69794pjm.1.2020.03.19.00.27.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 00:27:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="fX/5gLWH";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C44FD20658;
	Thu, 19 Mar 2020 07:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584602824;
	bh=WvfQCoZEmGFX6okThzmpf7zEPhSVWBpXFoOsibu4nP4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fX/5gLWHqiCrP8HJ58kS399K5nEDy2Uoo7E1/SToV5hwqfg5gE4aKW7EEba+sYtIR
	 gW9AAmTqnP25O637Kij73OY75VqOMC4EQI2+6/kH/wN7LtFmAFVE8HbGp5TZfxZ2kU
	 dChWZXta4SdGVFQLZrfAhi2+kmq/l5+GuNdO3G2o=
Date: Thu, 19 Mar 2020 08:27:02 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] How to change long C comment lines for a
 single statement
Message-ID: <20200319072702.GB3365217@kroah.com>
References: <20200319070524.GA1686@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319070524.GA1686@tulip.local>

On Thu, Mar 19, 2020 at 12:35:26PM +0530, R Veera Kumar wrote:
> Hi,
> 
> How to change long C comment lines for a single statement or a C header
> define as per linux kernel coding style.
> 
> E.g.
> 
> 	abc (xyz(), "str"); /* This is example function call with a long line comment */
> 
> which is okay:
> 
> 	abc (xyz(), "str"); /* This is example function call with a
> 				long line comment */
> 
> 	abc (xyz(), "str"); /* This is example function call with a
> long line comment */
> 
> 	abc (xyz(), "str");
> 	/* This is example function call with a long line comment */
> 
> 	abc (xyz(), "str"); /*
> 			     * This is example function call with a
> 			     * long line comment
> 			     */
> 
> 	abc (xyz(), "str");
> 		/*
> 		 * This is example function call with a
> 		 * long line comment
> 		 */

None of those is the "best" way, that would be:
 	/* This is example function call with a long line comment */
 	abc (xyz(), "str");

There are hundreds of thousands of examples of this in the kernel source
tree to look at for inspiration :)

thanks,

greg k-h

