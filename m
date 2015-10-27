X-GM-THRID: 6210088605629546496
X-Received: by 10.66.248.233 with SMTP id yp9mr19518882pac.19.1445937164383;
        Tue, 27 Oct 2015 02:12:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.201 with SMTP id b67ls4206919qgb.85.gmail; Tue, 27 Oct
 2015 02:12:43 -0700 (PDT)
X-Received: by 10.13.233.197 with SMTP id s188mr34154662ywe.42.1445937163734;
        Tue, 27 Oct 2015 02:12:43 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pe1si4061173pac.2.2015.10.27.02.12.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 02:12:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id ACF1797;
	Tue, 27 Oct 2015 09:12:42 +0000 (UTC)
Date: Tue, 27 Oct 2015 18:12:39 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: SirnamSwetha <theonly.ultimate@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-usb@vger.kernel.org
Subject: Re: [PATCH 0/8] Staging: rdma ipath: fix checkpatch issues
Message-ID: <20151027091239.GA23118@kroah.com>
References: <cover.1445936143.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445936143.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 27, 2015 at 02:28:46PM +0530, SirnamSwetha wrote:
> This patchset fixes checkpatch issues, for ipath_common.h and
> ipath_cq.c

Why did you cc: the linux-usb mailing list on these?  They have nothing
to do with the USB subsystem.

Please use scripts/get_maintainer.pl to determine mailing lists to cc:

But, for the Outreachy application process, please just use the
outreachy-kernel list, no need to bother any vger.kernel.org list with
your patches.

thanks,

greg k-h

