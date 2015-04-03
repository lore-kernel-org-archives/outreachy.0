X-GM-THRID: 10800857088000
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e0b5b091b94f8408
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.251.231 with SMTP id zn7mr1756806obc.24.1428048615386;
        Fri, 03 Apr 2015 01:10:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.165 with SMTP id f37ls827902ioi.22.gmail; Fri, 03 Apr
 2015 01:10:15 -0700 (PDT)
X-Received: by 10.66.119.174 with SMTP id kv14mr1635276pab.21.1428048615064;
        Fri, 03 Apr 2015 01:10:15 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id zw6si864690pbc.2.2015.04.03.01.10.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2015 01:10:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 213C5ACC;
	Fri,  3 Apr 2015 08:10:13 +0000 (UTC)
Date: Fri, 3 Apr 2015 10:10:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Charlie WONG Super <1213charlie@gmail.com>
Cc: julia.lawall@lip6.fr, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Replace spaces to tab
Message-ID: <20150403081009.GC8016@kroah.com>
References: <1428039199-4628-1-git-send-email-1213charlie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1428039199-4628-1-git-send-email-1213charlie@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Apr 03, 2015 at 01:33:19PM +0800, Charlie WONG Super wrote:
> From: Charlie Wong Super <1213charlie@gmail.com>
> 
> Spaces at the start of the line, replace the leading space to tabs
> 
> Signed-off-by: Charlie Wong Super <1213charlie@gmail.com>
> ---
>  drivers/staging/fbtft/fb_st7735r.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

The outreachy application period is over, please use the "normal"
mailing lists for sending in staging patches.  Julia gave a list of how
to use scripts/get_maintainer.pl for how to determine who to send the
patches to.

I'm not going to be taking any new patches from this mailing list at
this point in time, sorry.

greg k-h

