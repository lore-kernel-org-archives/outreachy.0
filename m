X-GM-THRID: 1041667981312
X-Received: by 10.43.63.196 with SMTP id xf4mr9865282icb.22.1424976873277;
        Thu, 26 Feb 2015 10:54:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.88.5 with SMTP id bc5ls267637igb.0.gmail; Thu, 26 Feb 2015
 10:54:33 -0800 (PST)
X-Received: by 10.42.16.141 with SMTP id p13mr9520406ica.6.1424976873048;
        Thu, 26 Feb 2015 10:54:33 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si236207pdc.0.2015.02.26.10.54.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:54:33 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B4FE7BE6;
	Thu, 26 Feb 2015 18:54:32 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:54:32 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Add newline after
 variable declarations
Message-ID: <20150226185432.GA17244@kroah.com>
References: <20150219222341.GA976@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150219222341.GA976@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 20, 2015 at 03:53:42AM +0530, Vatika Harlalka wrote:
> This patch is to add a newline after variable declarations
> to follow kernel coding conventions.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/media/tlg2300/pd-alsa.c | 2 ++
>  1 file changed, 2 insertions(+)

Also not in the tree :(

