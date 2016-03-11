X-GM-THRID: 6258953654266494976
X-Received: by 10.129.130.71 with SMTP id s68mr9000279ywf.29.1457732999618;
        Fri, 11 Mar 2016 13:49:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.202 with SMTP id t68ls3125824qgt.7.gmail; Fri, 11 Mar
 2016 13:49:59 -0800 (PST)
X-Received: by 10.13.248.4 with SMTP id i4mr8808230ywf.20.1457732998988;
        Fri, 11 Mar 2016 13:49:58 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si1551593pfa.2.2016.03.11.13.49.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 13:49:58 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AC53ACA3;
	Fri, 11 Mar 2016 21:49:58 +0000 (UTC)
Date: Fri, 11 Mar 2016 13:49:58 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: gdm724x: Use list_next_entry
 instead of list_entry
Message-ID: <20160311214958.GD24083@kroah.com>
References: <1457276190-12089-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1457276190-12089-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 06, 2016 at 08:26:30PM +0530, Bhumika Goyal wrote:
> This patch replace list_entry with list_next_entry as it makes the code
> more clear to read.
> Done using coccinelle:
> 
> @@
> expression e1;
> identifier e3;
> type t;
> @@
> (
> - list_entry(e1->e3.next,t,e3)
> + list_next_entry(e1,e3)
> |
> - list_entry(e1->e3.prev,t,e3)
> + list_prev_entry(e1,e3)
> )
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/gdm724x/gdm_usb.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

Driver is no longer in the tree, sorry.

