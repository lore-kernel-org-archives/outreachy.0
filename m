X-GM-THRID: 6253019031634182144
X-Received: by 10.112.138.98 with SMTP id qp2mr2674539lbb.4.1456009909843;
        Sat, 20 Feb 2016 15:11:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.166 with SMTP id 38ls174970lfs.104.gmail; Sat, 20 Feb
 2016 15:11:49 -0800 (PST)
X-Received: by 10.112.138.98 with SMTP id qp2mr2674537lbb.4.1456009909071;
        Sat, 20 Feb 2016 15:11:49 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id v197si585781wmv.1.2016.02.20.15.11.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 15:11:49 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A9481103F;
	Sat, 20 Feb 2016 23:11:47 +0000 (UTC)
Date: Sat, 20 Feb 2016 15:11:47 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Replace sprintf
 with snprintf
Message-ID: <20160220231147.GA19925@kroah.com>
References: <20160219150713.GA13168@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160219150713.GA13168@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 19, 2016 at 08:37:14PM +0530, Amitoj Kaur Chawla wrote:
> Replace sprintf with snprintf as sprintf does not check for buffer
> overflow.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_wx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
> index 84e6272..1116a88 100644
> --- a/drivers/staging/rtl8192e/rtllib_wx.c
> +++ b/drivers/staging/rtl8192e/rtllib_wx.c
> @@ -602,7 +602,7 @@ int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
>  		char tempbuf[100];
>  
>  		memset(tempbuf, 0x00, 100);
> -		sprintf(tempbuf, "%s", module);
> +		snprintf(tempbuf, sizeof(tempbuf), "%s", module);

But it's impossible to overflow this buffer, so sprintf() is the correct
thing here.  I can't take this change, sorry.

greg k-h

