X-GM-THRID: 6202759012965941248
X-Received: by 10.107.34.8 with SMTP id i8mr5644835ioi.2.1444298068661;
        Thu, 08 Oct 2015 02:54:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.112 with SMTP id a103ls224379qge.94.gmail; Thu, 08 Oct
 2015 02:54:28 -0700 (PDT)
X-Received: by 10.13.247.132 with SMTP id h126mr5036601ywf.56.1444298068308;
        Thu, 08 Oct 2015 02:54:28 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y11si720973ywd.7.2015.10.08.02.54.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 02:54:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [64.88.227.134])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 275861AB2;
	Thu,  8 Oct 2015 09:54:25 +0000 (UTC)
Date: Thu, 8 Oct 2015 10:43:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepa Dinamani <deepa.kernel@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: skein: remove extra
 indentation
Message-ID: <20151008094327.GA7061@kroah.com>
References: <20151007170600.GA24764@deepa-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151007170600.GA24764@deepa-ubuntu>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 07, 2015 at 10:06:02AM -0700, Deepa Dinamani wrote:
> Remove second leading indent of code in do/while macro blocks.
> 
> This patch fixes the checkpatch.pl warning:
> 
> WARNING: suspect code indent for conditional statements
> 
> Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
> ---
>  drivers/staging/skein/skein_block.c | 40 ++++++++++++++++++-------------------
>  1 file changed, 20 insertions(+), 20 deletions(-)

Why did you send these a second time?  What was wrong with the first
versions?  Please resend these, all and say why you are resending,
thanks,

greg k-h

