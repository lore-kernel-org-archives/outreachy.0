X-GM-THRID: 6809948615797112832
X-Received: by 2002:a17:902:fe8d:: with SMTP id x13mr1366830plm.85.1585565209057;
        Mon, 30 Mar 2020 03:46:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:5c88:: with SMTP id a8ls8686505pgt.8.gmail; Mon, 30 Mar
 2020 03:46:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsQ3zgRwARVvm9dLM1zo5NPndsmiZb191S+DPGrVjwrHKaH1RtHdLe1f44026vGE1wQbomV
X-Received: by 2002:a62:1513:: with SMTP id 19mr12210020pfv.85.1585565207694;
        Mon, 30 Mar 2020 03:46:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585565207; cv=none;
        d=google.com; s=arc-20160816;
        b=mUp1IDErp5D+7E1GLxf1SPwB5EIGCqer4l7ccA+NpnU0vvEimxwrGOs3k0susiqTkf
         8Zy0bmUXoMBoGcYwuwZWd1IttfsoD4WAQXqJMT7+z9IP1YwvAEk0GUysHZ2xf+wyfMJM
         S+mZwuoyWLIN7t7owsWtz9kwtqQGUMIADTHHthX7ZF5Oypt7bAs4QPa5u2pWWc2xPOj3
         p2AC/EgZPjXv68kGnmPJlmU4Ekl0Z0H4mmkyrJhzZz2hBwKTWZgQrP2dn8RP+KZ6ftP3
         A45hvjHtK8jxY4wsefzzWKEEKz1OqyJ2dJzEKk3P3MWFbwNHVIWNCE/GBTfyOncx8j5W
         7pqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DsXCH+KluG/mpusMCquyu1XaDJdH0dHHPd9SPo6HGNk=;
        b=NAh6WwPwYWsnd/KrnlbwyBRG+fBW1YG6i/8tOi95pg3y5DhWOXBzKyCiXjACo41OO9
         utkkCwGgFXuQIIoccwRxdl4luP1Lb/MIkKDLEG87nLzuCv5Ox9LrxnwDeD0q2GJBuYc4
         oWvVriIOhlbtNPmlfkQLxCi2a3MSzwqftYMnS+31WvdaKq+C+lsStln0cAzN1pIHQu0R
         jmn33LUgPGCNqFBwO4mRVhWDdxtU7ZJBVkGDX2SViBjAzwjmIZ2ofIiwvXpu//kQxYML
         HVRym/9McRlSwb3zuSwcYrzThNV3zwLVKNMNoWk3yDFg5VA2pSzUzbH4kFOkO88wt5XU
         zQgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EySwtxaH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a141si859962pfd.5.2020.03.30.03.46.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 03:46:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EySwtxaH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F0CFB205ED;
	Mon, 30 Mar 2020 10:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585565207;
	bh=hOAh2tFSSErO/EeUBVipX4uy4+g3G7RwJI25iUpOFEM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EySwtxaHh28Y725V5BdjzisZtuEEjSaqP6YfW1H/ku4GrDRucRUk69azDS9YN1VB2
	 /nKtkytYjlk+N9v5c87rB7dzsItY4LAyXhc4pbny8RjTrXxvF4Vs2CK258MAONAasE
	 dI8SyamiKnTo4utYvuN0YKgC9G5d/x8ywXUK8gdw=
Date: Mon, 30 Mar 2020 12:46:43 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: akpm@linux-foundation.org, dave@stgolabs.net, viro@zeniv.linux.org.uk,
	elfring@users.sourceforge.net, manfred@colorfullife.com,
	keescook@chromium.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] ipc: mqueue.c: avoid NULL comparison
Message-ID: <20200330104643.GA739661@kroah.com>
References: <20200330103826.6531-1-payalskshirsagar1234@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200330103826.6531-1-payalskshirsagar1234@gmail.com>

On Mon, Mar 30, 2020 at 04:08:26PM +0530, Payal Kshirsagar wrote:
> Change suggested by coccinelle.
> Avoid NULL comparison, compare using boolean negation.
> 
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  ipc/mqueue.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

I can not take any outreachy patches made outside of drivers/staging,
sorry.

So consider this, and your other patch, dropped, sorry.

greg k-h

