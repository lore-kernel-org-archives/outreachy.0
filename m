X-GM-THRID: 6253406958213136384
X-Received: by 10.28.47.211 with SMTP id v202mr373092wmv.3.1456008195874;
        Sat, 20 Feb 2016 14:43:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.230.5 with SMTP id d5ls168907wmh.22.gmail; Sat, 20 Feb 2016
 14:43:15 -0800 (PST)
X-Received: by 10.194.19.195 with SMTP id h3mr2606502wje.1.1456008195483;
        Sat, 20 Feb 2016 14:43:15 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id s141si829714wmd.1.2016.02.20.14.43.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 14:43:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2661110FD;
	Sat, 20 Feb 2016 22:43:14 +0000 (UTC)
Date: Sat, 20 Feb 2016 14:43:13 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Rakhi Sharma <rakhish1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Use __packed
 instead of __attribute__((packed))
Message-ID: <20160220224313.GA13436@kroah.com>
References: <1455984754-14644-1-git-send-email-rakhish1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455984754-14644-1-git-send-email-rakhish1994@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 20, 2016 at 09:42:34PM +0530, Rakhi Sharma wrote:
> This patch fixes the warning: "__packed is preferred over
> __attribute__((packed))" as reported by checkpatch.pl.
> 
> Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> ---
>  drivers/staging/wilc1000/linux_mon.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

This change was done by someone else a while ago, are you sure you are
working against the correct kernel tree and branch?

thanks,

greg k-h

