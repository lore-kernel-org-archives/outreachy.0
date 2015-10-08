X-GM-THRID: 6202887067130658816
X-Received: by 10.13.220.4 with SMTP id f4mr4865403ywe.22.1444294320332;
        Thu, 08 Oct 2015 01:52:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.38 with SMTP id b6ls362787obe.77.gmail; Thu, 08 Oct
 2015 01:51:59 -0700 (PDT)
X-Received: by 10.182.106.228 with SMTP id gx4mr4963642obb.34.1444294319944;
        Thu, 08 Oct 2015 01:51:59 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id j22si3456226ywg.2.2015.10.08.01.51.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 01:51:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [64.88.227.134])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 616852071;
	Thu,  8 Oct 2015 08:51:57 +0000 (UTC)
Date: Thu, 8 Oct 2015 09:49:46 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: sm750fb: Use ARRAY_SIZE
 macro
Message-ID: <20151008084946.GA4642@kroah.com>
References: <1444222177-11153-1-git-send-email-shraddha.6596@gmail.com>
 <1444222177-11153-2-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1444222177-11153-2-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 07, 2015 at 06:19:36PM +0530, Shraddha Barke wrote:
> ARRAY_SIZE is more concise to use when the size of an array is divided
> by the size of its type or the size of its first element.
> 
> Change made using Coccinelle-
> 
> @@
> type T;
> T[] E;
> @@
> 
> - (sizeof(E)/sizeof(T))
> + ARRAY_SIZE(E)
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Doesn't apply to my tree :(

