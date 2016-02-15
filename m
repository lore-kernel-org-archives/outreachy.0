X-GM-THRID: 6251161839379415040
X-Received: by 10.66.121.132 with SMTP id lk4mr14333671pab.9.1455496863493;
        Sun, 14 Feb 2016 16:41:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.35 with SMTP id t35ls1358917ioe.37.gmail; Sun, 14 Feb
 2016 16:41:03 -0800 (PST)
X-Received: by 10.66.246.165 with SMTP id xx5mr13358986pac.31.1455496863101;
        Sun, 14 Feb 2016 16:41:03 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 12si2395926pfb.1.2016.02.14.16.41.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 16:41:03 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CA60E10E8;
	Mon, 15 Feb 2016 00:41:02 +0000 (UTC)
Date: Sun, 14 Feb 2016 16:41:02 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: rtl8188eu: core:
 Remove NULL test before vfree
Message-ID: <20160215004102.GC1276@kroah.com>
References: <cover.1455470452.git.bhumirks@gmail.com>
 <8ffdece306380770381595cfef73aeb8bb324c36.1455470452.git.bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8ffdece306380770381595cfef73aeb8bb324c36.1455470452.git.bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 14, 2016 at 11:09:30PM +0530, Bhumika Goyal wrote:
> The function vfree tests whether the argument is NULL and returns
> immediately. So NULL test before vfree is not needed. Also remove braces
> around if branch as they are no longer needed.
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
> Changes since v1:
> *Correct errors in commit message.
> *Remove braces around if branch.

You sent 2 patches with identical subject lines, I can't take that :(

Please add the filename to the subject to make it more obvious, and
unique.

thanks,

greg k-h

