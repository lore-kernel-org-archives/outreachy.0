X-GM-THRID: 3420707618816
X-Received: by 10.50.176.202 with SMTP id ck10mr478713igc.5.1424992771924;
        Thu, 26 Feb 2015 15:19:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.198 with SMTP id l6ls15270igx.29.gmail; Thu, 26 Feb 2015
 15:19:31 -0800 (PST)
X-Received: by 10.67.29.231 with SMTP id jz7mr10590427pad.9.1424992771693;
        Thu, 26 Feb 2015 15:19:31 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si307917pac.0.2015.02.26.15.19.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:19:31 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6ADC3B41;
	Thu, 26 Feb 2015 23:19:31 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:19:31 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: nvec: Add paragraph to
 describe kconfig symbol
Message-ID: <20150226231931.GA16329@kroah.com>
References: <1424878453-3918-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424878453-3918-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Feb 25, 2015 at 06:34:13PM +0300, Haneen Mohammed wrote:
> This patch updates kconfig with paragraphs that describe config symbol
> fully. Issue addressed by checkpatch.pl warning.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/nvec/Kconfig | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)

You sent 2 different copies of this patch, with no hint as to which one
I should accept, so I choose neither :)

Please fix up and resend the proper one you want to submit.

thanks,

greg k-h

