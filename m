X-GM-THRID: 2273030701056
X-Received: by 10.236.28.230 with SMTP id g66mr10311179yha.2.1424992389953;
        Thu, 26 Feb 2015 15:13:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.223 with SMTP id c92ls360924ioj.104.gmail; Thu, 26 Feb
 2015 15:13:09 -0800 (PST)
X-Received: by 10.66.147.132 with SMTP id tk4mr10263685pab.23.1424992389770;
        Thu, 26 Feb 2015 15:13:09 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id hs7si294495pad.1.2015.02.26.15.13.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:13:09 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 69865B1B;
	Thu, 26 Feb 2015 23:13:09 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:13:09 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Gulsah Kose <gulsah.1004@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/7] staging: arch: alpha: boot:
 Combined seperated strings.
Message-ID: <20150226231309.GA402@kroah.com>
References: <cover.1424569663.git.gulsah.1004@gmail.com>
 <4d23e942ec6501b30262bbdeff3ff2b753f9e6f6.1424569663.git.gulsah.1004@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4d23e942ec6501b30262bbdeff3ff2b753f9e6f6.1424569663.git.gulsah.1004@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Feb 22, 2015 at 03:51:57AM +0200, Gulsah Kose wrote:
> This patch fixes "quoted string split across lines" checkpatch.pl
> warning in bootpz.c
> 
> Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
> ---
>  arch/alpha/boot/bootpz.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

I can't accept patches for stuff outside of drivers/staging/ sorry.

