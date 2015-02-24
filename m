X-GM-THRID: 260132831232
X-Received: by 10.236.51.170 with SMTP id b30mr16149167yhc.34.1424763828230;
        Mon, 23 Feb 2015 23:43:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.194 with SMTP id j60ls2657279qgj.40.gmail; Mon, 23 Feb
 2015 23:43:48 -0800 (PST)
X-Received: by 10.236.230.39 with SMTP id i37mr15424614yhq.47.1424763828093;
        Mon, 23 Feb 2015 23:43:48 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id re6si4561458pab.1.2015.02.23.23.43.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 23:43:48 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id ABBB513;
	Tue, 24 Feb 2015 07:43:47 +0000 (UTC)
Date: Mon, 23 Feb 2015 23:43:47 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: line6: replace init_timer by
 setup_timer
Message-ID: <20150224074347.GE11701@kroah.com>
References: <20150218043030.GA21690@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150218043030.GA21690@localhost.localdomain>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Feb 18, 2015 at 06:30:30AM +0200, Aya Mahfouz wrote:
> This patch replaces init_timer and 2 step initialization of
> function and data by setup_timer using the following coccinelle
> script:
> 
> @@
> expression ds, e1, e2;
> @@
> 
> -init_timer (&ds);
> +setup_timer (&ds, e1, e2);
> ...
> -ds.function = e1;
> ...
> -ds.data = e2;
> 
> 
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
>  drivers/staging/line6/toneport.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

This driver is no longer in Linus's tree, so I can't accept any patches
against it :(

sorry,

greg k-h

