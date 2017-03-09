X-GM-THRID: 6393343309495926784
X-Received: by 10.13.229.196 with SMTP id o187mr4575394ywe.12.1489065952563;
        Thu, 09 Mar 2017 05:25:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.197 with SMTP id o188ls1778677ioe.53.gmail; Thu, 09
 Mar 2017 05:25:51 -0800 (PST)
X-Received: by 10.99.149.81 with SMTP id t17mr6149136pgn.62.1489065951784;
        Thu, 09 Mar 2017 05:25:51 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id g82si1181982pfb.5.2017.03.09.05.25.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 05:25:51 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0D9E15A9;
	Thu,  9 Mar 2017 13:25:50 +0000 (UTC)
Date: Thu, 9 Mar 2017 14:25:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, devel@driverdev.osuosl.org, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, samuel.thibault@ens-lyon.org,
	chris@the-brannons.com
Subject: Re: [PATCH 1/6] staging: speakup: Add blank line after
 function/struct/union/enum declarations
Message-ID: <20170309132541.GB8690@kroah.com>
References: <20170303201709.19997-1-arushisinghal19971997@gmail.com>
 <20170303201709.19997-2-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170303201709.19997-2-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sat, Mar 04, 2017 at 01:47:04AM +0530, Arushi Singhal wrote:
> This patch fixes the warnings reported by checkpatch.pl
> for please use a blank line after function/struct/union/enum
> declarations.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/main.c         | 1 +
>  drivers/staging/speakup/serialio.c     | 1 +
>  drivers/staging/speakup/speakup_dtlk.c | 1 +
>  3 files changed, 3 insertions(+)

You seem to have sent me many different series of patches for this
driver, some of them the same, some different, some duplicates.  I have
no idea what to apply and what not to apply, so I'm dropping them all
from my patch queue.  Please fix up and resend a _single_ patch series
with your patches so I know what to review and possibly apply.

thanks,

greg k-h

