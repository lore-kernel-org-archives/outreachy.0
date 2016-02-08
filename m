X-GM-THRID: 6249004522009526272
X-Received: by 10.98.8.15 with SMTP id c15mr28779892pfd.0.1454960364257;
        Mon, 08 Feb 2016 11:39:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.231 with SMTP id 94ls3221118qgb.43.gmail; Mon, 08 Feb
 2016 11:39:23 -0800 (PST)
X-Received: by 10.31.153.75 with SMTP id b72mr28786483vke.0.1454960363664;
        Mon, 08 Feb 2016 11:39:23 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tn7si4623140pac.1.2016.02.08.11.39.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2016 11:39:23 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 46855108C;
	Mon,  8 Feb 2016 19:39:23 +0000 (UTC)
Date: Mon, 8 Feb 2016 11:39:22 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging:wlan-ng:Merged two lines into
 one
Message-ID: <20160208193922.GA10743@kroah.com>
References: <1454959731-21240-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1454959731-21240-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Feb 09, 2016 at 12:58:51AM +0530, Bhumika Goyal wrote:
> The last two lines of these functions are compressed into one.
> Also removed the variable ret as it is now not used.
> Found using coccinelle:
> @@
> expression e, ret;
> @@
> 
> -ret =
> +return
>      e;
> -return ret;
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x_usb.c | 20 ++++----------------
>  1 file changed, 4 insertions(+), 16 deletions(-)

We do not accept patches on the outreachy-kernel mailing list yet,
please submit these the "normal way" in order for them to be accepted to
the kernel community.

thanks,

greg k-h

