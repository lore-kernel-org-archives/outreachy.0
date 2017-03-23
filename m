X-GM-THRID: 6399916000486096896
X-Received: by 10.237.61.157 with SMTP id i29mr702729qtf.66.1490275189341;
        Thu, 23 Mar 2017 06:19:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.169 with SMTP id z38ls2673750ota.27.gmail; Thu, 23 Mar
 2017 06:19:48 -0700 (PDT)
X-Received: by 10.13.193.65 with SMTP id c62mr773751ywd.94.1490275188896;
        Thu, 23 Mar 2017 06:19:48 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si1148352pfx.8.2017.03.23.06.19.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 06:19:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 29F977A8;
	Thu, 23 Mar 2017 13:19:47 +0000 (UTC)
Date: Thu, 23 Mar 2017 14:19:33 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, devel@driverdev.osuosl.org, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, samuel.thibault@ens-lyon.org,
	chris@the-brannons.com
Subject: Re: [PATCH 09/11] staging: speakup: Simplify the NULL comparisons
Message-ID: <20170323131933.GC21199@kroah.com>
References: <20170321114235.1638-1-arushisinghal19971997@gmail.com>
 <20170321114235.1638-10-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170321114235.1638-10-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 21, 2017 at 05:12:33PM +0530, Arushi Singhal wrote:
> Fixed coding style for null comparisons in speakup driver to be more
> consistant with the rest of the kernel coding style.
> Replaced 'x != NULL' with 'x' and 'x = NULL' with '!x'.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/fakekey.c |  2 +-
>  drivers/staging/speakup/main.c    | 32 ++++++++++++++++----------------
>  2 files changed, 17 insertions(+), 17 deletions(-)

You used this same subject line in this series, not good :(

greg k-h

