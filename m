X-GM-THRID: 6256338264344494080
X-Received: by 10.140.228.7 with SMTP id y7mr8940942qhb.27.1457734394623;
        Fri, 11 Mar 2016 14:13:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.203 with SMTP id b69ls3071023qge.5.gmail; Fri, 11 Mar
 2016 14:13:13 -0800 (PST)
X-Received: by 10.140.140.19 with SMTP id 19mr8896995qhm.29.1457734393891;
        Fri, 11 Mar 2016 14:13:13 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 12si1610720pfb.1.2016.03.11.14.13.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 14:13:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 63ED4C2B;
	Fri, 11 Mar 2016 22:13:13 +0000 (UTC)
Date: Fri, 11 Mar 2016 14:13:13 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723au: core: rtw_xmit.c:
 Replace container_of
Message-ID: <20160311221313.GA30414@kroah.com>
References: <20160228184655.GA4960@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160228184655.GA4960@janani-Inspiron-3521>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 28, 2016 at 01:46:55PM -0500, Janani Ravichandran wrote:
> Use list_entry() rather than container_of() for linked list nodes.
> Semantic patch used:
> 
> @a exists@
> identifier var;
> struct list_head *ptr;
> @@
> 
>   var =
> - container_of
> + list_entry
>   (ptr, ...);
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_xmit.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Your patches for this driver break the build :(

Please retest all of them, and resend all of them in a patch series, so
I know what order to apply them in.

thanks,

greg k-h

