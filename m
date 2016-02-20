X-GM-THRID: 6252996370721931264
X-Received: by 10.112.189.104 with SMTP id gh8mr2569029lbc.12.1456009216072;
        Sat, 20 Feb 2016 15:00:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.169 with SMTP id 41ls196017lfw.11.gmail; Sat, 20 Feb
 2016 15:00:15 -0800 (PST)
X-Received: by 10.112.129.65 with SMTP id nu1mr2635941lbb.18.1456009215557;
        Sat, 20 Feb 2016 15:00:15 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id v197si584628wmv.1.2016.02.20.15.00.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 15:00:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 37DCB124C;
	Sat, 20 Feb 2016 23:00:14 +0000 (UTC)
Date: Sat, 20 Feb 2016 15:00:13 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: netlogic: Use !x instead of
 x == NULL
Message-ID: <20160220230013.GA11789@kroah.com>
References: <1455889159-7913-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455889159-7913-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 19, 2016 at 03:39:19PM +0200, Dilek Uzulmez wrote:
> Avoid to change comparison for devm_ioremap_resource value. Checkpatch
> detected these issues.
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/netlogic/xlr_net.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Doesn't apply to my tree due to changes someone else send before you did
:(


