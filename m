X-GM-THRID: 6035575144448
X-Received: by 10.70.42.170 with SMTP id p10mr27464168pdl.3.1425322454259;
        Mon, 02 Mar 2015 10:54:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.85 with SMTP id 79ls1838165qgi.9.gmail; Mon, 02 Mar
 2015 10:54:13 -0800 (PST)
X-Received: by 10.140.201.202 with SMTP id w193mr27610800qha.7.1425322453961;
        Mon, 02 Mar 2015 10:54:13 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si1665914pdc.0.2015.03.02.10.54.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 10:54:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9207826;
	Mon,  2 Mar 2015 18:54:13 +0000 (UTC)
Date: Mon, 2 Mar 2015 10:54:12 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v10 4/4] Staging: emxx_udc: Clean
 dev_err() logging
Message-ID: <20150302185412.GA13368@kroah.com>
References: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>
 <1425321923-4125-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425321923-4125-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 02, 2015 at 09:45:23PM +0300, Haneen Mohammed wrote:
> This patch removes  __func__ from dev_err.
> dev_err includes the function name in the log printout, so there is no
> need to include it manually.

No, dev_err() does not include the function name, it includes much more
than that (device, driver, specific instance of device, etc.).

> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
> v10: nothing. 
> 

Then why send a v10?

confused,

greg k-h

