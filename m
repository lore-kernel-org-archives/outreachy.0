X-GM-THRID: 6261499450444742656
X-Received: by 10.140.157.69 with SMTP id d66mr24902364qhd.13.1458589568404;
        Mon, 21 Mar 2016 12:46:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.230 with SMTP id i6ls1031930igt.39.gmail; Mon, 21 Mar
 2016 12:46:07 -0700 (PDT)
X-Received: by 10.98.1.81 with SMTP id 78mr24440927pfb.1.1458589567650;
        Mon, 21 Mar 2016 12:46:07 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si4034702pab.0.2016.03.21.12.46.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 12:46:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 275C867;
	Mon, 21 Mar 2016 19:46:06 +0000 (UTC)
Date: Mon, 21 Mar 2016 15:46:05 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] staging: wilc1000: Remove
 camel case in variable names.
Message-ID: <20160321194605.GA27573@kroah.com>
References: <cover.1457878893.git.anchalj109@gmail.com>
 <54565b086bac8ca4e67a4b9eed2957d8dd20ebbf.1457878893.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <54565b086bac8ca4e67a4b9eed2957d8dd20ebbf.1457878893.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 13, 2016 at 07:56:44PM +0530, Anchal Jain wrote:
> Remove a check detect by checkpatch.pl
> 
> CHECK: Avoid CamelCase: <srcAdd>
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/wilc1000/linux_mon.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

What changed in v2?

And I'm confused as to what version of what I should apply, please
resend the whole series when you have a problem with one of them.
Please resend this whole series.

thanks,

greg k-h

