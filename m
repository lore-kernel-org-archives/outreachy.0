X-GM-THRID: 6664414939270086656
X-Received: by 2002:a25:34d0:: with SMTP id b199mr3249963yba.48.1551863950240;
        Wed, 06 Mar 2019 01:19:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:41d4:: with SMTP id o203ls367129yba.0.gmail; Wed, 06 Mar
 2019 01:19:09 -0800 (PST)
X-Google-Smtp-Source: APXvYqzFpTEkA6vY3Pe5kwLqJzmGthuawSMNyx1+xI6ECVrpt/hZcSmtjPNEZUJKMf8QLgGffvNA
X-Received: by 2002:a5b:d46:: with SMTP id f6mr3405263ybr.0.1551863949458;
        Wed, 06 Mar 2019 01:19:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551863949; cv=none;
        d=google.com; s=arc-20160816;
        b=tvdBRNGSff8og5gksnfp74abkB2hZy1GdguZ9t5GTbqemkJ2tADy9MH8R0khYh8O+7
         yr74mnXvS+AuvEwWA4qCucJJ6/g6hv1W10c64bg0otnxWF1z/jPPHgnS/YLDXOS+c9uK
         Joy6Jz8nUno0nZSGdVbh0KpKps9F+nV5Ck+v1c0um98PIKLkzBHomFKtL5CTBzmpK9IZ
         4TGuy7LUUo/f1qohHjprurdTSooCWJr/SudnkBuqAZyrn6lO+yduLvfK2ScNjG+ouXjS
         1EbTI018fQnoxUnDZcH2k2iCBPDSr7tFIMEFnorY2UIYiTLIBxbycIfzAbr4pHhFjb0K
         89ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fFOAu9uyp03gNgTfuOo0Yq3esift2+JeOZlZYMMpLZA=;
        b=NUY5ibAYa2vI4xi8tYAdRyjRtt4wwe0rYHvRVajyVQXf+Aaa0gnVdWcDp7GGhd1CJn
         oDI1hTtXEmaSC7+B/EQG9msLzzFutpkJB9sWnk5Xt4iZUbqD/DjwNnyJHomTlpujs2rq
         PEjZZvs0Jxp2IfBsNTyFmnge2EOD4SGhHRJDVyrBdYbFDczNwpFa0IG9vZtkxDeyr+Xc
         jXrmLiYkBrw5d1RYxNdSwCOzGqx/PfR5/BHtuEVpjCCHfpf2NQYB6v7T7M4gS4CKo6wM
         rOWR2PKR1WM2jl9ZPFiF5XZkHUdxKYQdH3OzvsaonkvrXtHIkwY86bZRdQIuaQMTBIKr
         P+hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=D5aAsKhA;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r128si43514ywd.0.2019.03.06.01.19.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:19:09 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=D5aAsKhA;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C8D682064A;
	Wed,  6 Mar 2019 09:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551863948;
	bh=1Bae2glgVH/m/rChxmXT3C5wOIlBWhkHLcBdPkYrL2Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D5aAsKhA40Thc8WvQIxogpQeqYPCkyiwVqlu7dFGSPPwhyA6iNSdwdTa6nTrHjbkM
	 0hBxosSAcqkb0i1gBORRw1m6Y3rwt8q5zhENf3VQsb2bvvTIhLPPju1JCvi6j5i/SN
	 4leMgUbFmBFk31GO/yEzwjHMW61uh8cfOKGV/6b4=
Date: Wed, 6 Mar 2019 10:19:05 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v3 1/1] staging: fbtft: line over 80 characters.
Message-ID: <20190306091905.GA28702@kroah.com>
References: <20190305123511.GA14328@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190305123511.GA14328@bhagyashri-Lenovo-G570>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 05, 2019 at 06:05:11PM +0530, Bhagyashri Dighole wrote:
> Fix coding style issues, which solves checkpatch.pl warning:
> "WARNING: line over 80 characters"
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
> Changes in v3:
>   - Make the code in original form.
>   - Use tab to line up the code.
> 
> Changes in v2:
>   - Improve code order.
>   - Make the code more readable.

This patch does not apply to my tree :(

Please rebase it against my staging-testing branch and resend.

thanks,

greg k-h

