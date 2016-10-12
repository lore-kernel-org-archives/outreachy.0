X-GM-THRID: 6338982763407867904
X-Received: by 10.66.158.102 with SMTP id wt6mr160916pab.65.1476276130019;
        Wed, 12 Oct 2016 05:42:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.7 with SMTP id h7ls3753547otb.23.gmail; Wed, 12 Oct
 2016 05:42:09 -0700 (PDT)
X-Received: by 10.200.41.211 with SMTP id 19mr217738qtt.28.1476276129604;
        Wed, 12 Oct 2016 05:42:09 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si1299589pab.2.2016.10.12.05.42.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 05:42:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C1E3A1BB;
	Wed, 12 Oct 2016 12:42:08 +0000 (UTC)
Date: Wed, 12 Oct 2016 14:42:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Eva Rachel Retuya <eraretuya@gmail.com>, linux-iio@vger.kernel.org,
	outreachy-kernel@googlegroups.com, Michael.Hennerich@analog.com,
	jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net
Subject: Re: [Outreachy kernel] Re: [PATCH v3 2/2] staging: iio: ad7606: fix
 improper setting of oversampling pins
Message-ID: <20161012124217.GA18782@kroah.com>
References: <cover.1475907512.git.eraretuya@gmail.com>
 <9018314d134e3e33f892ad78969e11bf5ffa0950.1475907512.git.eraretuya@gmail.com>
 <39a0c2c4-6fcb-21f2-f9b3-ddb360f58c75@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <39a0c2c4-6fcb-21f2-f9b3-ddb360f58c75@metafoo.de>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Sat, Oct 08, 2016 at 02:21:46PM +0200, Lars-Peter Clausen wrote:
> On 10/08/2016 08:50 AM, Eva Rachel Retuya wrote:
> > The oversampling ratio is controlled using the oversampling pins,
> > OS [2:0] with OS2 being the MSB control bit, and OS0 the LSB control
> > bit.
> > 
> > The gpio connected to the OS2 pin is not being set correctly, only OS0
> > and OS1 pins are being set. Fix the typo to allow proper control of the
> > oversampling pins.
> > 
> > Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> > Fixes: b9618c0 ("staging: IIO: ADC: New driver for AD7606/AD7606-6/AD7606-4")
> 
> Looks good, thanks.
> 
> Acked-by: Lars-Peter Clausen <lars@metafoo.de>
> 
> Ideally you'd have but the patches in the opposite order, fix first, then
> rework. As it is right now with the fix after the rework the fix no longer
> applies cleanly to older versions.

Yes, please do that, so it can be applied to older kernels properly.

thanks,

greg k-h

