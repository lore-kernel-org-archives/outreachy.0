X-GM-THRID: 6395785103347286016
X-Received: by 10.99.188.2 with SMTP id q2mr15059741pge.36.1489328580064;
        Sun, 12 Mar 2017 07:23:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.237.77 with SMTP id r74ls1016807ith.11.gmail; Sun, 12 Mar
 2017 07:22:59 -0700 (PDT)
X-Received: by 10.99.111.6 with SMTP id k6mr14188856pgc.131.1489328579507;
        Sun, 12 Mar 2017 07:22:59 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si2727699pfx.8.2017.03.12.07.22.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:22:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 77A568A6;
	Sun, 12 Mar 2017 14:22:57 +0000 (UTC)
Date: Sun, 12 Mar 2017 15:22:39 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH] staging: media: mt9m114: Use true/false instead of 1/0
 for bool initialisations
Message-ID: <20170312142239.GA6069@kroah.com>
References: <20170310105437.GA28431@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170310105437.GA28431@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Fri, Mar 10, 2017 at 04:31:57PM +0530, sayli karnik wrote:
> Bool initializations should use true and false instead of 1 and 0.
> Detected by coccinelle/misc/boolinit.cocci.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/media/atomisp/i2c/mt9m114.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

You send two different patches, with identical subject lines :(

Please fix up and resend them with unique ones, as a series.

thanks,

greg k-h

