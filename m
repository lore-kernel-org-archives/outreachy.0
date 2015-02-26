X-GM-THRID: 2063631122432
X-Received: by 10.236.63.230 with SMTP id a66mr10316322yhd.51.1424986478057;
        Thu, 26 Feb 2015 13:34:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.17 with SMTP id b17ls313501ioj.35.gmail; Thu, 26 Feb
 2015 13:34:37 -0800 (PST)
X-Received: by 10.66.151.101 with SMTP id up5mr9803721pab.10.1424986477907;
        Thu, 26 Feb 2015 13:34:37 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id nt14si244564pab.2.2015.02.26.13.34.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:34:37 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 96CCEB14;
	Thu, 26 Feb 2015 21:34:37 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:34:37 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8192u: Convert
 comments from C99 to C89 style
Message-ID: <20150226213437.GA21478@kroah.com>
References: <1424613641-16863-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424613641-16863-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Feb 22, 2015 at 03:00:41PM +0100, Ksenija Stanojevic wrote:
> Kernel style for comments is C89 style. Issue found by checkpatch.pl.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
> v2: format comments to fit 80 characters.
> 
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 282 ++++++++++++----------
>  1 file changed, 156 insertions(+), 126 deletions(-)

This patch adds new issues to the file (trailing whitespace).  Please
fix up and resend.

thanks,

greg k-h

