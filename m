X-GM-THRID: 6330861539691593728
X-Received: by 10.200.52.137 with SMTP id w9mr12247834qtb.4.1474147706753;
        Sat, 17 Sep 2016 14:28:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.1 with SMTP id 1ls2770802otb.4.gmail; Sat, 17 Sep 2016
 14:28:26 -0700 (PDT)
X-Received: by 10.129.116.193 with SMTP id p184mr1929310ywc.83.1474147706427;
        Sat, 17 Sep 2016 14:28:26 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h124si5289405pfe.0.2016.09.17.14.28.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 14:28:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C1E539C;
	Sat, 17 Sep 2016 21:28:25 +0000 (UTC)
Date: Sat, 17 Sep 2016 23:28:30 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com, stuart.yoder@nxp.com,
	mbrugger@suse.com, german.rivera@nxp.com
Subject: Re: [PATCH] Staging: fsl-mc: Use !x instead of x == NULL.
Message-ID: <20160917212830.GB12466@kroah.com>
References: <20160916093641.GA4100@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160916093641.GA4100@sandhya>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Sep 16, 2016 at 03:06:41PM +0530, Sandhya Bankar wrote:
> Use !x instead of x == NULL.
> This issue was found by checkpatch.
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> Reviewed-by: Matthias Brugger <mbrugger@suse.com>
> ---
>  drivers/staging/fsl-mc/bus/fsl-mc-msi.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/fsl-mc/bus/fsl-mc-msi.c b/drivers/staging/fsl-mc/bus/fsl-mc-msi.c
> index cc19092..bc1ad1a 100755

Same permission here as well.

