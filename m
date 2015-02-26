X-GM-THRID: 1726977409024
X-Received: by 10.52.36.240 with SMTP id t16mr9098248vdj.1.1424974970430;
        Thu, 26 Feb 2015 10:22:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.27.68 with SMTP id b65ls280178iob.50.gmail; Thu, 26 Feb
 2015 10:22:50 -0800 (PST)
X-Received: by 10.66.119.132 with SMTP id ku4mr9112056pab.7.1424974970193;
        Thu, 26 Feb 2015 10:22:50 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si226673pdc.0.2015.02.26.10.22.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:22:50 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E6662AF9;
	Thu, 26 Feb 2015 18:22:49 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:22:49 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: aybuke ozdemir <aybuke.147@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 4/5] Staging: lustre: Added spaces
 around '='
Message-ID: <20150226182249.GC7025@kroah.com>
References: <1424546839-11612-1-git-send-email-aybuke.147@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424546839-11612-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 09:27:19PM +0200, aybuke ozdemir wrote:
> Add spaces around =, to conform to kernel
> coding type. This problem was found by checkpatch.
> 
> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
> Changes since v1:
> * changed the description
> ---
>  drivers/staging/lustre/lustre/llite/llite_lib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Same here, please resend the whole series.

thanks,

greg k-h

