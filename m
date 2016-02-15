X-GM-THRID: 6251014829496074240
X-Received: by 10.140.153.194 with SMTP id 185mr13621016qhz.1.1455497186449;
        Sun, 14 Feb 2016 16:46:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.244 with SMTP id p107ls2599045qgd.84.gmail; Sun, 14 Feb
 2016 16:46:25 -0800 (PST)
X-Received: by 10.129.70.86 with SMTP id t83mr13060468ywa.22.1455497185643;
        Sun, 14 Feb 2016 16:46:25 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si3041218pab.0.2016.02.14.16.46.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 16:46:25 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4D395113D;
	Mon, 15 Feb 2016 00:46:25 +0000 (UTC)
Date: Sun, 14 Feb 2016 16:46:25 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Remove unused
 macros
Message-ID: <20160215004625.GA9344@kroah.com>
References: <1455429863-13223-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455429863-13223-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 14, 2016 at 11:34:23AM +0530, Bhumika Goyal wrote:
> The macros PlatformProcessHCICommands and PlatformTxBTQueuedPackets
> are not used anywhere in the kernel so remove them.
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>

This subject was the same as another patch you sent :(

Please fix it and resend.

thanks,

greg k-h

