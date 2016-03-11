X-GM-THRID: 6253656359784415232
X-Received: by 10.50.13.101 with SMTP id g5mr3012720igc.6.1457720947509;
        Fri, 11 Mar 2016 10:29:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.47 with SMTP id 44ls2416970qgk.90.gmail; Fri, 11 Mar
 2016 10:29:06 -0800 (PST)
X-Received: by 10.129.106.9 with SMTP id f9mr8021671ywc.16.1457720946842;
        Fri, 11 Mar 2016 10:29:06 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si1563533pac.1.2016.03.11.10.29.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 10:29:06 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 77E6DCA5;
	Fri, 11 Mar 2016 18:29:06 +0000 (UTC)
Date: Fri, 11 Mar 2016 10:29:06 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] staging: rtl8712: Place
 constants on the right side of '&'
Message-ID: <20160311182906.GA17828@kroah.com>
References: <20160221082106.GA24203@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160221082106.GA24203@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 21, 2016 at 01:51:06PM +0530, Bhaktipriya Shridhar wrote:
> Move constants to the right of binary operator '&'.
> This issue was identified using the Coccinelle script:
> @@
> constant c,c1;
> expression e,e1,e2;
> local idexpression i;
> binary operator b = {==,!=,&,|};
> @@
> 
> (
> c b (c1)
> |
> i b e1
> |
> c | e1 | e2 | ...
> |
> c | (e ? e1 : e2)
> |
> - c
> + e
> b
> - e
> + c
> )
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	-change subject line
> 	-inserted Coccinelle script
>  drivers/staging/rtl8712/wifi.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
> index 7a352c4..ee41971 100644
> --- a/drivers/staging/rtl8712/wifi.h
> +++ b/drivers/staging/rtl8712/wifi.h
> @@ -260,12 +260,12 @@ enum WIFI_REG_DOMAIN {
>  	*(unsigned short *)((addr_t)(pbuf) + 22) = \
>  	((*(unsigned short *)((addr_t)(pbuf) + 22)) & \
>  	le16_to_cpu((unsigned short)0x000f)) | \
> -	le16_to_cpu((unsigned short)(0xfff0 & (num << 4))); \
> +	le16_to_cpu((unsigned short)((num << 4) & 0xfff0)); \
>  })
> 
>  #define SetDuration(pbuf, dur) ({ \
>  	*(unsigned short *)((addr_t)(pbuf) + 2) |= \
> -	cpu_to_le16(0xffff & (dur)); \
> +	cpu_to_le16((dur) & 0xffff); \

Why?  What does this change really?  Is it needed?  The code is just as
readable before as after, which should be the only reason you do stuff
like this.

greg k-h

