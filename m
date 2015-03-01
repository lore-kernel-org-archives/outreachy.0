X-GM-THRID: 3543146692608
X-Received: by 10.140.151.75 with SMTP id 72mr23918785qhx.3.1425251916871;
        Sun, 01 Mar 2015 15:18:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.171.37 with SMTP id ar5ls218547obc.84.gmail; Sun, 01 Mar
 2015 15:18:36 -0800 (PST)
X-Received: by 10.182.29.102 with SMTP id j6mr22230690obh.46.1425251916707;
        Sun, 01 Mar 2015 15:18:36 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si1300466pdb.1.2015.03.01.15.18.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 15:18:36 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 671852C;
	Sun,  1 Mar 2015 23:18:36 +0000 (UTC)
Date: Sun, 1 Mar 2015 15:18:36 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: rtl8188eu: Eliminate
 use of _set_timer
Message-ID: <20150301231836.GA4616@kroah.com>
References: <cover.1425017327.git.vthakkar1994@gmail.com>
 <c3958d61a2dc3505df021bb66c55e3e3b8b75d5e.1425017327.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c3958d61a2dc3505df021bb66c55e3e3b8b75d5e.1425017327.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 11:48:03AM +0530, Vaishali Thakkar wrote:
> This patch introduces the use of API function mod_timer
> instead of driver specific function _set_timer as it is
> a more efficient and standard way to update the expire
> field of an active timer. Also, definition of function
> _set_timer is removed as it is no longer needed after
> this change.
> 
> Here, these cases are handled using Coccinelle and
> semantic patch used for this is as follows:
> 
> @@ expression x; expression y;@@
> 
> - _set_timer (&x, y);
> + mod_timer (&x, jiffies + msecs_to_jiffies (y));
> 
> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> ---
> v1 : Here, this patch has some line over 80 characters as
>      limiting them to 80 characters does not make code look
>      good and readable.
> v2 : Change commit log
>    - Redo the patch against staging-testing

How about you do a v3 that includes:  Fixes build problems in previous
version.

ALWAYS test build your patches, it breaks my workflow when patches are
not tested and break the build :(

thanks,

greg k-h

