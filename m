X-GM-THRID: 6257541621925019648
X-Received: by 10.112.209.6 with SMTP id mi6mr684063lbc.15.1457207844622;
        Sat, 05 Mar 2016 11:57:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.99 with SMTP id j96ls215622lfi.3.gmail; Sat, 05 Mar 2016
 11:57:24 -0800 (PST)
X-Received: by 10.25.154.129 with SMTP id c123mr1846202lfe.1.1457207844040;
        Sat, 05 Mar 2016 11:57:24 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z75si176979wmz.2.2016.03.05.11.57.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 11:57:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AB623C47;
	Sat,  5 Mar 2016 19:57:22 +0000 (UTC)
Date: Sat, 5 Mar 2016 11:57:22 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: api-ni: Remove int
 typecast of offsetof().
Message-ID: <20160305195722.GA24503@kroah.com>
References: <20160303014645.GA3348@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160303014645.GA3348@sandhya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Mar 03, 2016 at 07:16:45AM +0530, Sandhya Bankar wrote:
> Remove int typecast of offsetof().
> As per below coccinelle rule:
> 
> @@
> type T;
> expression E;
> @@
> 
> - (int)(offsetof(T,E))
> + offsetof(T,E)
> 
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/lustre/lnet/lnet/api-ni.c | 60 +++++++++++++++----------------
>  1 file changed, 30 insertions(+), 30 deletions(-)

Another patch you didn't test build at all :(

I'm now purging all of your pending patches from my queue.  Please
rebase all of them, retest to ensure that they build properly, and then
resend them.

thanks,

greg k-h

