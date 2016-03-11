X-GM-THRID: 6254220636972908544
X-Received: by 10.67.30.161 with SMTP id kf1mr7960781pad.21.1457717354738;
        Fri, 11 Mar 2016 09:29:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.210 with SMTP id 79ls1322269iop.77.gmail; Fri, 11 Mar
 2016 09:29:14 -0800 (PST)
X-Received: by 10.66.224.68 with SMTP id ra4mr6381588pac.45.1457717354418;
        Fri, 11 Mar 2016 09:29:14 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tu5si1193330pab.2.2016.03.11.09.29.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 09:29:14 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 27D5FCC0;
	Fri, 11 Mar 2016 17:29:14 +0000 (UTC)
Date: Fri, 11 Mar 2016 09:29:13 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: goldfish: Add space around
 '+'
Message-ID: <20160311172913.GA1834@kroah.com>
References: <1456174208-5179-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1456174208-5179-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 22, 2016 at 10:50:08PM +0200, Dilek Uzulmez wrote:
> Add space around operator '+'. Problem found using checkpatch.pl
> CHECK: spaces preferred around that '+' (ctx:VxV)
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/goldfish/goldfish_audio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

This doesn't apply to my tree at all, I think someone else already did
this :(


