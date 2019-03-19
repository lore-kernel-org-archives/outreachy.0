X-GM-THRID: 6669776681791651840
X-Received: by 2002:a24:6947:: with SMTP id e68mr1968706itc.6.1552990486888;
        Tue, 19 Mar 2019 03:14:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls7606434ioc.3.gmail; Tue, 19 Mar
 2019 03:14:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxFKz+pUBDyH2BYqjZd4hoU6XRgFryJABr5FWVfKluuAXt2EGInsMGP0ijh2ECWRoNObxjX
X-Received: by 2002:a5d:954c:: with SMTP id a12mr9909089ios.31.1552990486013;
        Tue, 19 Mar 2019 03:14:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552990486; cv=none;
        d=google.com; s=arc-20160816;
        b=vzxRabjLD+4bnmdtK3o26RfX/2yj7FD0zWcb2r8rSKt6PWUuCDALqptSB/iXXOnVJk
         QJK4lnQMTOjuCJi1242/HGYRt1Lp9L5DOFEwpcn4eM8pRGHTTGfu+St43tJZpTCYuGrt
         R+uWtgRwkZywmqtTbPYY3hLcCtJO4sBBF89GTFsMaviVfJI9ZHYCRMVQbDcSZLnxYpbd
         WywwJSRq+pK7kHaVzwaKndj3gnhzke3e6Sr/S7fCLIn7cAwj0gz79U4pDYVzGBQnCtX+
         INJfheBPONk3wAHhhIOqRkss4aFzt2xAxglEUm5lsQSa+k+WdbWByLYSM5KLH8axawUq
         RmDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mjpEvXMzK3DTMRvEBGcgRticmdJkPRUigVhegYaOrIk=;
        b=xwaTOfwqep7ovVZzRBppSJYoJ3U6O1fZHQ29/f8sJ6sOAuJh0VSJsluKrSu0ZNlIxC
         16/Eq/xpMoXfdw1tEahutm2MZ1OV0gNwzRJSPnzEfF9m5giOvUgvZvwMMNZ0+AXkikKo
         hxVNpI8L2ElfBhFGNdM1I0KICQJl7YtzkokR2D6Mv8vzTSfcKPOQKa/1p8iM9VToADum
         7KjMa1v5w3GJUOXBLRLHDxqff2EuYIs15/Vv+F4PpGYvclDOBRiFkzXY1v2CXTxTNCMw
         1W1bjaLbRnqSZ5ocEUr/EKUSiK3eDpS7TJp38ITF5i6llldZAw0+86Lfo81HLRW6lytl
         JQ4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kUfI2UYT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e74si56967ite.1.2019.03.19.03.14.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 03:14:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kUfI2UYT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C2EBA20828;
	Tue, 19 Mar 2019 10:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552990485;
	bh=nlnXHbtYe7OPpRHDFNcVMUTuxSE+uMouFphfDk+6gy4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kUfI2UYTAc6lnSHKpkFkszgWi6P8dtUg/HkdsVx6GzjuJaOymKD3B45IV3WGaS7z0
	 gMF0/uGvBI0xVmLtVGFjQz2yj9mOwPO2xrrKdTlUQn6DkTGWOID/zGyiF44qGYDPFO
	 xyn/iYt5dIoLTkGAt7DzXkpCUVh+bKlUULCF1tko=
Date: Tue, 19 Mar 2019 11:14:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: vatsalanarang <vatsalanarang@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Eliminate camel case
Message-ID: <20190319101442.GA27062@kroah.com>
References: <20190319094449.11640-1-vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190319094449.11640-1-vatsalanarang@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Mar 19, 2019 at 03:14:49PM +0530, vatsalanarang wrote:
> From: Vatsala Narang <vatsalanarang@gmail.com>
> 
> Issue reported by checkpatch.pl tool

What "issue"?

Be specific please.

Also, you need the kernel subsystem (staging), and driver name (sm750fb)
in the subject line for this to work properly.  Look at all of the other
patches on this list, or just look at the commits that have already been
accepted for this driver with a simple:
	git log drivers/staging/sm750fb/
to get an idea of how to format everything.

thanks,

greg k-h

