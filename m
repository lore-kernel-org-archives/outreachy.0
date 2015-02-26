X-GM-THRID: 1798172573696
X-Received: by 10.50.61.132 with SMTP id p4mr27564160igr.7.1424976844612;
        Thu, 26 Feb 2015 10:54:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.17 with SMTP id b17ls276801ioj.35.gmail; Thu, 26 Feb
 2015 10:54:04 -0800 (PST)
X-Received: by 10.70.18.37 with SMTP id t5mr9182633pdd.7.1424976844418;
        Thu, 26 Feb 2015 10:54:04 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id hs7si224281pad.1.2015.02.26.10.54.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:54:04 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 280D1BC2;
	Thu, 26 Feb 2015 18:54:04 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:54:03 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: as102: quoted string
 split across lines in as102_fe.c
Message-ID: <20150226185403.GA17164@kroah.com>
References: <1424524942-10625-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424524942-10625-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 03:22:22PM +0200, Yeliz Taneroglu wrote:
> Fix checkpatch.pl issues with quoted string split
> across lines in as102_fe.c
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/media/as102/as102_fe.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Not in the tree anymore :(

