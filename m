X-GM-THRID: 6330852738662924288
X-Received: by 10.237.51.196 with SMTP id v62mr1983818qtd.40.1474147654673;
        Sat, 17 Sep 2016 14:27:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.153.9 with SMTP id b9ls2300284ioe.23.gmail; Sat, 17 Sep
 2016 14:27:34 -0700 (PDT)
X-Received: by 10.66.165.6 with SMTP id yu6mr1942673pab.81.1474147654244;
        Sat, 17 Sep 2016 14:27:34 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z4si3637083pam.0.2016.09.17.14.27.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 14:27:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CBDBF9C;
	Sat, 17 Sep 2016 21:27:32 +0000 (UTC)
Date: Sat, 17 Sep 2016 23:27:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com, thomas.petazzoni@free-electrons.com,
	noralf@tronnes.org
Subject: Re: [PATCH] Staging: fbtft: Use !x instead of x == NULL.
Message-ID: <20160917212715.GA5920@kroah.com>
References: <20160916090231.GA3940@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160916090231.GA3940@sandhya>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Sep 16, 2016 at 02:32:32PM +0530, Sandhya Bankar wrote:
> Use !x instead of x == NULL.
> This issue was found by checkpatch.
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/fbtft/fbtft_device.c |    6 +++---
>  1 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fbtft_device.c b/drivers/staging/fbtft/fbtft_device.c
> index 924abd3..e921183 100755

How did this file get to be 0755 permissions?  What are you using to
edit this?  It is a virtual machine somehow?

Please be more careful in the future...

thanks,

greg k-h

