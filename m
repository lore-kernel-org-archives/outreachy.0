X-GM-THRID: 670124998656
X-Received: by 10.68.192.10 with SMTP id hc10mr9233035pbc.4.1424976670701;
        Thu, 26 Feb 2015 10:51:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.4.98 with SMTP id j2ls104822obj.28.gmail; Thu, 26 Feb 2015
 10:51:10 -0800 (PST)
X-Received: by 10.182.34.133 with SMTP id z5mr9682140obi.3.1424976670509;
        Thu, 26 Feb 2015 10:51:10 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ks4si222633pbc.1.2015.02.26.10.51.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:51:10 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2E820BE7;
	Thu, 26 Feb 2015 18:51:10 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:51:09 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Remove space before
 tabs
Message-ID: <20150226185109.GA11586@kroah.com>
References: <20150219095928.GA28559@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150219095928.GA28559@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 19, 2015 at 03:29:28PM +0530, Vatika Harlalka wrote:
> This patch is to remove space before tabs to follow
> kernel coding conventions.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/media/tlg2300/pd-alsa.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

This file is no longer in Linus's tree :(

