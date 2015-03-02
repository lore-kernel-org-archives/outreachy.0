X-GM-THRID: 4837939871744
X-Received: by 10.42.53.80 with SMTP id m16mr24123307icg.26.1425255715395;
        Sun, 01 Mar 2015 16:21:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.193 with SMTP id g184ls1143598ioe.107.gmail; Sun, 01
 Mar 2015 16:21:55 -0800 (PST)
X-Received: by 10.66.131.37 with SMTP id oj5mr24457335pab.12.1425255715244;
        Sun, 01 Mar 2015 16:21:55 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q9si443927pds.2.2015.03.01.16.21.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:21:55 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id F283F4D3;
	Mon,  2 Mar 2015 00:21:54 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:21:54 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Change return
 type of function to void
Message-ID: <20150302002154.GB17196@kroah.com>
References: <20150227202345.GA2034@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150227202345.GA2034@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 28, 2015 at 01:53:45AM +0530, Vatika Harlalka wrote:
> Return is made void as the function is only called once where its
> return value is not used.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/bb_cfg.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

All of your patches for this driver seem to be dependant on the previous
patch, and I don't know what order to apply them in.

So please resend all of them, in an ordered list of patches, so I have a
chance to get them correct.

thanks,

greg k-h

