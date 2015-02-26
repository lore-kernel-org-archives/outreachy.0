X-GM-THRID: 2517133950976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,25a6457a67aef068
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.109.202 with SMTP id hu10mr150839igb.4.1424987030144;
        Thu, 26 Feb 2015 13:43:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.74 with SMTP id a68ls347260qga.76.gmail; Thu, 26 Feb
 2015 13:43:49 -0800 (PST)
X-Received: by 10.236.36.39 with SMTP id v27mr10022483yha.24.1424987029701;
        Thu, 26 Feb 2015 13:43:49 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si284303pbc.0.2015.02.26.13.43.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:43:49 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 5A86EB1B;
	Thu, 26 Feb 2015 21:43:49 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:43:49 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/4] staging: rtl8192u: Convert
 from printk into netdev_dbg or pr_dbg
Message-ID: <20150226214349.GA6995@kroah.com>
References: <cover.1424622240.git.navyasri.tech@gmail.com>
 <faf65006e6915dfb3539058d59019502e805e7cc.1424622240.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <faf65006e6915dfb3539058d59019502e805e7cc.1424622240.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Feb 22, 2015 at 10:06:04PM +0530, Navya Sri Nizamkari wrote:
> As this is a network driver file, convert printk(KERN_DEBUG.. ) to
> netdev_dbg if the calling function has arguments to support it else
> to pr_dbg , to fix the checkpatch.pl warning:
> 
> WARNING: Prefer netdev_dbg(netdev, ... then dev_dbg(dev, ... then
> pr_debug(...  to printk(KERN_DEBUG ...
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
> Changes in v2:
>     - Correct the commit message to be clearer.

Doesn't apply as I think someone else made this change before you did :(

