X-GM-THRID: 1328454565888
X-Received: by 10.66.153.16 with SMTP id vc16mr9288838pab.42.1424974615570;
        Thu, 26 Feb 2015 10:16:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.141.234 with SMTP id rr10ls251939igb.21.gmail; Thu, 26 Feb
 2015 10:16:55 -0800 (PST)
X-Received: by 10.66.190.104 with SMTP id gp8mr9419184pac.26.1424974615310;
        Thu, 26 Feb 2015 10:16:55 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id nt14si188621pab.2.2015.02.26.10.16.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:16:55 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 19585BE3;
	Thu, 26 Feb 2015 18:16:30 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:16:29 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: lustre: lnet: klnds:
 socklnd: Deleted space prohibited between function name and open parenthesis
Message-ID: <20150226181629.GA23249@kroah.com>
References: <1424446070-14232-1-git-send-email-aysemelikeyurtoglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424446070-14232-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 20, 2015 at 05:27:47PM +0200, Melike Yurtoglu wrote:
> WARNING: space prohibited between function name and open parenthesis '('
> checkpatch.pl warning in socklnd.c
> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  .../staging/lustre/lnet/klnds/socklnd/socklnd.c    | 448 ++++++++++-----------
>  1 file changed, 224 insertions(+), 224 deletions(-)

This patch breaks the build, which implies that you never even test
built it :(

Please be more careful, I can't take anything in this series now.
Please fix up, test it, and resend.

thanks,

greg k-h

