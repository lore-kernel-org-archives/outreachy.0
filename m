X-GM-THRID: 6257541621925019648
X-Received: by 10.28.170.73 with SMTP id t70mr1593wme.6.1456961152750;
        Wed, 02 Mar 2016 15:25:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.82.132 with SMTP id g126ls844768lfb.92.gmail; Wed, 02 Mar
 2016 15:25:51 -0800 (PST)
X-Received: by 10.112.150.105 with SMTP id uh9mr3322746lbb.17.1456961151782;
        Wed, 02 Mar 2016 15:25:51 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c140si305738wmh.1.2016.03.02.15.25.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 15:25:51 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 634BCCA4;
	Wed,  2 Mar 2016 23:25:50 +0000 (UTC)
Date: Wed, 2 Mar 2016 15:25:50 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: api-ni: Remove int
 typecast of offsetof().
Message-ID: <20160302232550.GA17504@kroah.com>
References: <20160302113709.GA3444@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160302113709.GA3444@sandhya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Mar 02, 2016 at 05:07:09PM +0530, Sandhya Bankar wrote:
> Remove int typecast of offsetof().
> As per below coccinelle rule:
> 
> @@
> type T;
> expression E;
> @@
> 
> - (int)(offsetof(T,E))
> + offsetof(T,E)
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/lustre/lnet/lnet/api-ni.c | 60 +++++++++++++++----------------
>  1 file changed, 30 insertions(+), 30 deletions(-)

You sent 2 copies of this patch, with different subjects, so I got
confused and deleted both of them :(

Please fix up and resend it properly.

thanks,

greg k-h

