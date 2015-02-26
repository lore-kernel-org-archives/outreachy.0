X-GM-THRID: 4172222038016
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2900b53c8d5ba36b
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.133.69 with SMTP id pa5mr1273777obb.32.1424993238371;
        Thu, 26 Feb 2015 15:27:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.94 with SMTP id u91ls303919ioi.57.gmail; Thu, 26 Feb
 2015 15:27:18 -0800 (PST)
X-Received: by 10.70.42.170 with SMTP id p10mr10289081pdl.3.1424993238209;
        Thu, 26 Feb 2015 15:27:18 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bx1si273917pdb.2.2015.02.26.15.27.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:27:18 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EBF4813;
	Thu, 26 Feb 2015 23:27:17 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:27:17 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: rtl8192u: Replace
 printk() with pr_debug()
Message-ID: <20150226232717.GA31152@kroah.com>
References: <1424990950-10390-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424990950-10390-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 26, 2015 at 11:49:10PM +0100, Ksenija Stanojevic wrote:
> For dynamic debugging netdev_dbg(), dev_dbg() or  pr_debug() macro is
> preferred over printk(), which is the raw way to print something.
> Network system has it's own printk format, netdev_dbg, but in this case
> function's argument list has no  pointer to a struct netdevice so
> pr_debug is used instead.
> Issue found by checkpatch.pl.
> ---
> v3: Change commit message.
> v2: Include only changes made to this file.
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

No signed-off-by: Line :(


