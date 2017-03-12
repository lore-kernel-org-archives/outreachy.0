X-GM-THRID: 6395635092352401408
X-Received: by 10.13.253.6 with SMTP id n6mr13774257ywf.84.1489328451655;
        Sun, 12 Mar 2017 07:20:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.99 with SMTP id f90ls848000otb.24.gmail; Sun, 12 Mar
 2017 07:20:51 -0700 (PDT)
X-Received: by 10.157.25.145 with SMTP id k17mr12844138otk.60.1489328451274;
        Sun, 12 Mar 2017 07:20:51 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y203si2274370pfb.0.2017.03.12.07.20.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:20:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A29E3901;
	Sun, 12 Mar 2017 14:20:49 +0000 (UTC)
Date: Sun, 12 Mar 2017 15:20:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: mchehab@kernel.org, devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Subject: Re: [PATCH v1 1/7] staging: gc2235: Remove unnecessary typecast of
 c90 int constant
Message-ID: <20170312142024.GA5964@kroah.com>
References: <1489099829-1264-1-git-send-email-singhalsimran0@gmail.com>
 <1489099829-1264-2-git-send-email-singhalsimran0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1489099829-1264-2-git-send-email-singhalsimran0@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Fri, Mar 10, 2017 at 04:20:23AM +0530, simran singhal wrote:
> This patch removes unnecessary typecast of c90 int constant.
> 
> WARNING: Unnecessary typecast of c90 int constant
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/media/atomisp/i2c/gc2235.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

This series doesn't apply to my tree at all, please rebase and resend.

thanks,

greg k-h

