X-GM-THRID: 6340040411169423360
X-Received: by 10.157.38.241 with SMTP id i46mr266934otd.82.1476278559623;
        Wed, 12 Oct 2016 06:22:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.163 with SMTP id c32ls3295889otb.20.gmail; Wed, 12 Oct
 2016 06:22:39 -0700 (PDT)
X-Received: by 10.157.34.134 with SMTP id y6mr264488ota.136.1476278559190;
        Wed, 12 Oct 2016 06:22:39 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id a143si1376767pfa.2.2016.10.12.06.22.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 06:22:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9BF221BB;
	Wed, 12 Oct 2016 13:22:37 +0000 (UTC)
Date: Wed, 12 Oct 2016 15:22:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elise Lennion <elise.lennion@gmail.com>
Cc: vaibhav.sr@gmail.com, johan@kernel.org, elder@kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 6/7] staging: greybus: Use kcalloc for array's memory
 allocation.
Message-ID: <20161012132246.GB22338@kroah.com>
References: <20161011031614.GA22058@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161011031614.GA22058@lennorien.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Tue, Oct 11, 2016 at 12:16:14AM -0300, Elise Lennion wrote:
> Fix checkpatch warning:
> 
> WARNING: Prefer kcalloc over kzalloc with multiply
> 
> kcalloc is designed to allocate memory for arrays, its use is
> preferable than kzalloc in these cases.
> 
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
>  drivers/staging/greybus/camera.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Same issue with the subject:, it's the same as the previous patch.

A way to make it more unique would be to add the driver name to it, so
for this one, it would be:
	staging: greybus: camera: use kcalloc for array's memory

thanks,

greg k-h

