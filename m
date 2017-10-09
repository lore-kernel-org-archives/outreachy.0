X-GM-THRID: 6473346132637384704
X-Received: by 10.28.7.75 with SMTP id 72mr1138766wmh.23.1507555731281;
        Mon, 09 Oct 2017 06:28:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.197.15 with SMTP id v15ls161432wmf.2.canary-gmail; Mon, 09
 Oct 2017 06:28:50 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCt4bAVt+ou2wO3VIg7+kCvxePgL76ZDquOlN/GBwfRhkYGonFFPIXdOV2DZwP5762+H7QQ
X-Received: by 10.28.145.11 with SMTP id t11mr1268542wmd.0.1507555730349;
        Mon, 09 Oct 2017 06:28:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507555730; cv=none;
        d=google.com; s=arc-20160816;
        b=k67uVCQVaUbVtYC051DLnvWDyNiXDsq9okASYVsj0u4S0RDt1Sq9LIWnjG08TJdwIC
         7091knEC6Fc5sl4xkoV51P9zul4u3PjmZvsKLDRZDnctxwzU2soE2ERcwu3gGcoRJHEa
         Lb0zJ3UZC/IYpm+/3O3oxCJIVBKYacBN6mxOwgC/Bdagt68z2bd02m+8xRjhPYGmyMdy
         qWRCR6dXw0ejptBKrkFOCI69MBzqFFmxpcV4CAvdrVxgjF+dbwhRHt/RRLLupAFqSs1u
         cZyx+tlnntQlgT0BZ0skQ11JgoR/MW0XhjZ7IIXxQzY2Q8vSxvaTICBrbmLinI8+ImAW
         FMCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=9kGmiMhs21aQDCLPmvg/F1saJnPEg6wtiBPrQaQWZTE=;
        b=ND66HdyRB00SYsAaMB9Kf3Vet1WoHuIxcMwIZsNsN70O0+dK34AmQ68/+dm9tFzFdZ
         sBYBnHJx1ALMJ1SHxQ3BteR0sKk0ftlzpDBo/xT+IC0gAAhZJpJEFH6atbrGoXXSyoCa
         34mewYDCy/bSz5Vchvr4OUtsbQ1aVi+2Cu7nfsTtEoAmgZb943DO05yVKoqAQAfklWsf
         z9fI32Q9yOBsUNokdhJ9KC/bn9Af9N/Sn4pswv8zmbAeED5OQWvLmx53S5OU8naUR7LL
         mPkwlTgqohvkHiWiWHIeHznHFni8CvLL/mYELyYXP5fH1NMyJy/w7d4hTxYTDrgIY/xc
         8N6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Return-Path: <pablo@gnumonks.org>
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org. [2001:780:45:1d:225:90ff:fe52:c662])
        by gmr-mx.google.com with ESMTPS id 196si999021wmk.4.2017.10.09.06.28.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 06:28:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) client-ip=2001:780:45:1d:225:90ff:fe52:c662;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Received: from 129.166.216.87.static.jazztel.es ([87.216.166.129] helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <pablo@gnumonks.org>)
	id 1e1Y6x-0007RD-IB; Mon, 09 Oct 2017 15:28:49 +0200
Date: Mon, 9 Oct 2017 15:28:46 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] nftables: make pointers in string arrays constant
Message-ID: <20171009132846.GA14213@salvia>
References: <20171006144754.17362-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171006144754.17362-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -2.9 (--)

On Fri, Oct 06, 2017 at 08:17:54PM +0530, Harsha Sharma wrote:
> Static const char * array should be static const char *
> const array as per linux-kernel coding style

Applied.

