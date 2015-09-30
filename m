X-GM-THRID: 6200080718557609984
X-Received: by 10.50.134.132 with SMTP id pk4mr1429556igb.4.1443579195953;
        Tue, 29 Sep 2015 19:13:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.97 with SMTP id 88ls107209qgy.90.gmail; Tue, 29 Sep
 2015 19:13:15 -0700 (PDT)
X-Received: by 10.31.174.146 with SMTP id x140mr1119974vke.1.1443579195623;
        Tue, 29 Sep 2015 19:13:15 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u67si2842520ywf.5.2015.09.29.19.13.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 19:13:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [83.145.64.184])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 62B921196;
	Wed, 30 Sep 2015 02:13:14 +0000 (UTC)
Date: Wed, 30 Sep 2015 03:57:06 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: fix block comment
 indentation
Message-ID: <20150930015706.GB8770@kroah.com>
References: <1443568771-8819-1-git-send-email-ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443568771-8819-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Sep 30, 2015 at 02:19:31AM +0300, Ioana Ciornei wrote:
> Update indentation of block comments to follow linux coding style
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/wlan-ng/prism2sta.c | 111 ++++++++++++++++++++++++------------
>  1 file changed, 74 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
> index 0329c52..267faf8 100644
> --- a/drivers/staging/wlan-ng/prism2sta.c
> +++ b/drivers/staging/wlan-ng/prism2sta.c
> @@ -150,7 +150,8 @@ static void prism2sta_inf_psusercnt(wlandevice_t *wlandev,
>  *
>  * Call context:
>  *	process thread
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/

That doesn't feel like it is a "correct" change to me, does it look
right to you?

thanks,

greg k-h

