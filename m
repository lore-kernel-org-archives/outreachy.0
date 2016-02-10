X-GM-THRID: 6249304586736107520
X-Received: by 10.50.7.6 with SMTP id f6mr7328762iga.2.1455069020130;
        Tue, 09 Feb 2016 17:50:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.106 with SMTP id e97ls88176qgd.67.gmail; Tue, 09 Feb
 2016 17:50:19 -0800 (PST)
X-Received: by 10.129.4.201 with SMTP id 192mr34806754ywe.15.1455069019470;
        Tue, 09 Feb 2016 17:50:19 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 79si119596pft.0.2016.02.09.17.50.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 17:50:19 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 310B1D52;
	Wed, 10 Feb 2016 01:50:19 +0000 (UTC)
Date: Tue, 9 Feb 2016 17:50:18 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: nvec: Remove unneeded comment
Message-ID: <20160210015018.GA29132@kroah.com>
References: <20160209195251.GA6614@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160209195251.GA6614@janani-Inspiron-3521>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Feb 09, 2016 at 02:52:51PM -0500, Janani Ravichandran wrote:
> Remove this comment as it does not have a meaning here.
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/nvec/nvec.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
> index dba1766..82f7600 100644
> --- a/drivers/staging/nvec/nvec.c
> +++ b/drivers/staging/nvec/nvec.c
> @@ -14,8 +14,6 @@
>   *
>   */
>  
> -/* #define DEBUG */

It's used by developers to make it easier to debug code, which is why
you will find this quite common in kernel code.

But I agree, it's not needed, nice cleanup.

thanks,

greg k-h

