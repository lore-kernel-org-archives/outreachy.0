X-GM-THRID: 6393347982886961152
X-Received: by 10.99.250.21 with SMTP id y21mr5379898pgh.21.1489077989198;
        Thu, 09 Mar 2017 08:46:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.6 with SMTP id q6ls7009344otc.10.gmail; Thu, 09 Mar
 2017 08:46:28 -0800 (PST)
X-Received: by 10.157.53.40 with SMTP id o37mr5155907otc.25.1489077988788;
        Thu, 09 Mar 2017 08:46:28 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c123si1289955pfa.4.2017.03.09.08.46.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 08:46:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3B1F1BC3;
	Thu,  9 Mar 2017 16:46:28 +0000 (UTC)
Date: Thu, 9 Mar 2017 17:46:19 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] staging: media: Clean up tests if NULL returned on
 failure
Message-ID: <20170309164619.GB12365@kroah.com>
References: <1488567319-25989-1-git-send-email-singhalsimran0@gmail.com>
 <1488567319-25989-2-git-send-email-singhalsimran0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1488567319-25989-2-git-send-email-singhalsimran0@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sat, Mar 04, 2017 at 12:25:18AM +0530, simran singhal wrote:
> Some functions like kmalloc/kzalloc return NULL on failure.
> When NULL represents failure, !x is commonly used.
> 
> This was done using Coccinelle:
> @@
> expression *e;
> identifier l1;
> @@
> 
> e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
> ...
> - e == NULL
> + !e
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/media/atomisp/pci/atomisp2/atomisp_fops.c | 2 +-
>  drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c      | 4 ++--
>  drivers/staging/media/lirc/lirc_zilog.c                   | 6 +++---
>  3 files changed, 6 insertions(+), 6 deletions(-)

Please break this up into one patch per driver.

thanks,

greg k-h

