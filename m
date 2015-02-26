X-GM-THRID: 1550436007936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9eec88c8272265f5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.176.202 with SMTP id ck10mr438955igc.5.1424992055475;
        Thu, 26 Feb 2015 15:07:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.228 with SMTP id p91ls380491qgp.36.gmail; Thu, 26 Feb
 2015 15:07:35 -0800 (PST)
X-Received: by 10.52.88.67 with SMTP id be3mr10254826vdb.3.1424992055171;
        Thu, 26 Feb 2015 15:07:35 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id xj4si268099pbc.2.2015.02.26.15.07.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:07:35 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C391FA47;
	Thu, 26 Feb 2015 23:07:34 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:07:34 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Gamze POLAT <gamzepolat94@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH V2] staging: rtl8712: warning of
 prefer ether_addr_copy
Message-ID: <20150226230734.GA11094@kroah.com>
References: <1424596665-3251-1-git-send-email-gamzepolat94@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424596665-3251-1-git-send-email-gamzepolat94@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Feb 22, 2015 at 11:17:45AM +0200, Gamze POLAT wrote:
> This patch fixes the following checkpatch.pl warnings:
> WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
> addresses are __aligned(2)
> Pahole shows that the addresses are aligned
> 
> Signed-off-by: Gamze POLAT <gamzepolat94@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_recv.c | 49 +++++++++++++++++-----------------
>  1 file changed, 24 insertions(+), 25 deletions(-)

What changed from the first version?

And please provide some pahole output in the changelog to show this
proof.

thanks,

greg k-h

