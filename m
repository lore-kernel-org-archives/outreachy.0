X-GM-THRID: 1526974119936
X-Received: by 10.70.132.138 with SMTP id ou10mr9090687pdb.2.1424974803625;
        Thu, 26 Feb 2015 10:20:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.39 with SMTP id z39ls279733ioi.36.gmail; Thu, 26 Feb
 2015 10:20:03 -0800 (PST)
X-Received: by 10.50.29.6 with SMTP id f6mr27474546igh.2.1424974803441;
        Thu, 26 Feb 2015 10:20:03 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ks4si213409pbc.1.2015.02.26.10.20.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:20:03 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0D8CABD8;
	Thu, 26 Feb 2015 18:20:03 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:20:02 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/4] Staging: lustre: Deleted space
 prohibited between function name and open parenthesis
Message-ID: <20150226182002.GA7025@kroah.com>
References: <1424462647-4861-1-git-send-email-aysemelikeyurtoglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424462647-4861-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 20, 2015 at 10:04:04PM +0200, Melike Yurtoglu wrote:
> WARNING: space prohibited between function name and open parenthesis '('
> Remove unnecessary space between function name and opening parenthesis.
> That was found by running checkpatch
> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
> 
> v2:changed the subject line and description
> 
>  .../staging/lustre/lnet/klnds/socklnd/socklnd.c    | 448 ++++++++++-----------
>  1 file changed, 224 insertions(+), 224 deletions(-)

Did you test this version?  I hesitate to even apply it considering I
don't think you did :)

Please fix up and resend.

thanks,

greg k-h

