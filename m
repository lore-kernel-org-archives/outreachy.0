X-GM-THRID: 6393318693588172800
X-Received: by 10.129.177.130 with SMTP id p124mr6315812ywh.124.1489078004879;
        Thu, 09 Mar 2017 08:46:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.218 with SMTP id i26ls510121ote.48.gmail; Thu, 09 Mar
 2017 08:46:44 -0800 (PST)
X-Received: by 10.13.200.3 with SMTP id k3mr5242428ywd.136.1489078004442;
        Thu, 09 Mar 2017 08:46:44 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r66si1279477pfb.7.2017.03.09.08.46.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 08:46:44 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D267CBCD;
	Thu,  9 Mar 2017 16:46:43 +0000 (UTC)
Date: Thu, 9 Mar 2017 17:46:35 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: mchehab@kernel.org, devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Subject: Re: [PATCH] staging: media: Remove parentheses from return arguments
Message-ID: <20170309164635.GC12365@kroah.com>
References: <20170303170139.GA9887@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170303170139.GA9887@singhal-Inspiron-5558>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Fri, Mar 03, 2017 at 10:31:39PM +0530, simran singhal wrote:
> The sematic patch used for this is:
> @@
> identifier i;
> constant c;
> @@
> return
> - (
>     \(i\|-i\|i(...)\|c\)
> - )
>   ;
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> ---
>  .../media/atomisp/pci/atomisp2/css2400/sh_css.c      | 20 ++++++++++----------
>  .../atomisp/pci/atomisp2/css2400/sh_css_firmware.c   |  2 +-
>  2 files changed, 11 insertions(+), 11 deletions(-)

Again, one patch per driver.

