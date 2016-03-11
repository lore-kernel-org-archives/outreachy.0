X-GM-THRID: 6256120108487278592
X-Received: by 10.50.142.66 with SMTP id ru2mr2947020igb.8.1457719993943;
        Fri, 11 Mar 2016 10:13:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.40 with SMTP id 37ls2366533qga.14.gmail; Fri, 11 Mar
 2016 10:13:13 -0800 (PST)
X-Received: by 10.140.18.239 with SMTP id 102mr8125576qgf.28.1457719993529;
        Fri, 11 Mar 2016 10:13:13 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 12si1491528pfb.1.2016.03.11.10.13.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 10:13:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 34C75A59;
	Fri, 11 Mar 2016 18:13:13 +0000 (UTC)
Date: Fri, 11 Mar 2016 10:13:12 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 02/10] staging: octeon: Fix alignment
 with open parenthesis
Message-ID: <20160311181312.GA10900@kroah.com>
References: <cover.1456615452.git.nevola@gmail.com>
 <e0e3978e532e0227d2ffeb8d035bc3cb1bc0b691.1456615452.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e0e3978e532e0227d2ffeb8d035bc3cb1bc0b691.1456615452.git.nevola@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 28, 2016 at 12:42:07AM +0100, Laura Garcia Liebana wrote:
> Alignment should match open parenthesis. Checkpatch detected these
> issues.
> 
> Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>

This patch failed to apply, pleae rebase and resend.

thanks,

greg k-h

