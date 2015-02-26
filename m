X-GM-THRID: 4040986460160
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b66f0a3e76012054
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.7.37 with SMTP id 25mr9937035yho.18.1424985909820;
        Thu, 26 Feb 2015 13:25:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.20 with SMTP id q20ls290034ioe.98.gmail; Thu, 26 Feb
 2015 13:25:09 -0800 (PST)
X-Received: by 10.66.235.162 with SMTP id un2mr2697100pac.43.1424985909651;
        Thu, 26 Feb 2015 13:25:09 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id hs7si266582pad.1.2015.02.26.13.25.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:25:09 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 57FF4B88;
	Thu, 26 Feb 2015 21:25:09 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:25:09 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: coding style
 ether_addr_copy
Message-ID: <20150226212509.GA3962@kroah.com>
References: <1424985352-10899-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1424985352-10899-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 26, 2015 at 11:15:52PM +0200, Hatice ERT�RK wrote:
> This fixes the following issues detected by checkpatch.pl:
> 
> WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
> addresses are __aligned(2)

Are they aligned?  Please show some kind of proof in your commit log
when you resend this.

thanks,

greg k-h

