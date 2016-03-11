X-GM-THRID: 6255246916309745664
X-Received: by 10.66.236.199 with SMTP id uw7mr8158345pac.47.1457721065977;
        Fri, 11 Mar 2016 10:31:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.199 with SMTP id n7ls212837igv.11.canary; Fri, 11 Mar
 2016 10:31:05 -0800 (PST)
X-Received: by 10.107.41.79 with SMTP id p76mr8345396iop.21.1457721065641;
        Fri, 11 Mar 2016 10:31:05 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si1564678pac.1.2016.03.11.10.31.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 10:31:05 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 5D40AD36;
	Fri, 11 Mar 2016 18:31:05 +0000 (UTC)
Date: Fri, 11 Mar 2016 10:31:05 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Drop void pointer
 cast
Message-ID: <20160311183105.GA21819@kroah.com>
References: <20160225201156.GA8224@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160225201156.GA8224@janani-Inspiron-3521>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 25, 2016 at 03:11:56PM -0500, Janani Ravichandran wrote:
> Void pointers need not be cast to other pointer types.
> Semantis patch:
> 
> @r@
> expression x;
> void *e;
> type T;
> identifier f;
> @@
> 
> (
>   *((T *)e)
> | 
>   ((T *)x) [...]
> |   
>   ((T *)x)->f
> | 
> - (T *) 
>   e
> )
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/rtl8712/usb_ops_linux.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Someone else sent this patch before you did, sorry :(

