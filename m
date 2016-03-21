X-GM-THRID: 6264247085046956032
X-Received: by 10.66.141.74 with SMTP id rm10mr25758937pab.16.1458592942690;
        Mon, 21 Mar 2016 13:42:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.99 with SMTP id e90ls3660612qgd.67.gmail; Mon, 21 Mar
 2016 13:42:22 -0700 (PDT)
X-Received: by 10.129.156.8 with SMTP id t8mr24059530ywg.25.1458592942079;
        Mon, 21 Mar 2016 13:42:22 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 12si3710191pfb.1.2016.03.21.13.42.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 13:42:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 777112C;
	Mon, 21 Mar 2016 20:42:21 +0000 (UTC)
Date: Mon, 21 Mar 2016 16:42:20 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] Staging: rtl8188eu: rtw_efuse:
 Use sizeof type *pointer instead of sizeof type.
Message-ID: <20160321204220.GA31880@kroah.com>
References: <cover.1458564530.git.bankarsandhya512@gmail.com>
 <f5ebff148478b21732288113ef1505f2a6d48a42.1458564530.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f5ebff148478b21732288113ef1505f2a6d48a42.1458564530.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Mar 21, 2016 at 06:31:45PM +0530, Sandhya Bankar wrote:
> Use sizeof type *pointer instead of sizeof type.
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_efuse.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

What changed in this patch from v1?  Please put that information in the
patch itself, I almost always ignore the 0/X emails, especially when
people group together patches from different drivers, as I apply patches
based on drivers at the same time, not based on a specific sequence.

thanks,

greg k-h

