X-GM-THRID: 6251489133143785472
X-Received: by 10.66.142.197 with SMTP id ry5mr18827499pab.41.1455589291253;
        Mon, 15 Feb 2016 18:21:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.11 with SMTP id j11ls1661097ioe.60.gmail; Mon, 15 Feb
 2016 18:21:30 -0800 (PST)
X-Received: by 10.98.71.209 with SMTP id p78mr19173529pfi.13.1455589290757;
        Mon, 15 Feb 2016 18:21:30 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 79si3733012pft.0.2016.02.15.18.21.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 18:21:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7CC5012C0;
	Tue, 16 Feb 2016 02:21:30 +0000 (UTC)
Date: Mon, 15 Feb 2016 18:21:30 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Fix line over 80
 charcters long
Message-ID: <20160216022130.GA31592@kroah.com>
References: <20160215121052.GA9478@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160215121052.GA9478@life-desktop>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 15, 2016 at 05:41:02PM +0530, Anchal Jain wrote:
> This is a patch that fixes line over 80 characters coding style
> warning detected by checkpatch.pl.
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wlan.c | 69 ++++++++++++++++++++++++------------
>  1 file changed, 47 insertions(+), 22 deletions(-)

You sent 5 patches, but I have no idea what order to apply them in :(

Please resend them as a patch series, properly numbered, so I have a
chance as to know how to merge them to my tree.

thanks,

greg k-h

