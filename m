X-GM-THRID: 6392991510876389376
X-Received: by 10.129.136.6 with SMTP id y6mr6039666ywf.157.1489077951294;
        Thu, 09 Mar 2017 08:45:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.180 with SMTP id b49ls516836otc.36.gmail; Thu, 09 Mar
 2017 08:45:50 -0800 (PST)
X-Received: by 10.157.8.148 with SMTP id 20mr5316279otf.131.1489077950856;
        Thu, 09 Mar 2017 08:45:50 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c123si1289713pfa.4.2017.03.09.08.45.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 08:45:50 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id F1F28BBD;
	Thu,  9 Mar 2017 16:45:49 +0000 (UTC)
Date: Thu, 9 Mar 2017 17:45:41 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: mchehab@kernel.org, devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Subject: Re: [PATCH 1/7] staging: media: Remove unnecessary typecast of c90
 int constant
Message-ID: <20170309164541.GA12365@kroah.com>
References: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Fri, Mar 03, 2017 at 01:21:56AM +0530, simran singhal wrote:
> This patch removes unnecessary typecast of c90 int constant.
> 
> WARNING: Unnecessary typecast of c90 int constant
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/media/atomisp/i2c/gc2235.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

The subject needs to say which driver is being touched here.  So this
would be:
	 [PATCH 1/7] staging: gc2235: Remove unnecessary typecast of c90 int constant

Please fix up for all of these and resend.

thanks,

greg k-h

