X-GM-THRID: 6598140362752
X-Received: by 10.182.133.69 with SMTP id pa5mr17501134obb.32.1425725801506;
        Sat, 07 Mar 2015 02:56:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.131 with SMTP id g3ls679442qge.28.gmail; Sat, 07 Mar
 2015 02:56:41 -0800 (PST)
X-Received: by 10.236.36.39 with SMTP id v27mr18070988yha.24.1425725801346;
        Sat, 07 Mar 2015 02:56:41 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si1713995pac.0.2015.03.07.02.56.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 02:56:41 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3811E990;
	Sat,  7 Mar 2015 10:56:39 +0000 (UTC)
Date: Fri, 6 Mar 2015 15:49:57 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Somya Anand <somyaanand214@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/5] Staging: rtl8188eu: Remove
 useless local variable
Message-ID: <20150306234957.GA26883@kroah.com>
References: <1425475385-2360-1-git-send-email-somyaanand214@gmail.com>
 <1425475385-2360-2-git-send-email-somyaanand214@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425475385-2360-2-git-send-email-somyaanand214@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 04, 2015 at 06:53:01PM +0530, Somya Anand wrote:
> This patch removes a redundant variable "raid" and adds inline
> return statements.
> 
> This issue is identified by the following coccinelle script:
> @@
> expression ret;
> identifier f;
> @@
> 
> -ret =
> +return
>      f(...);
> -return ret;
> 
> Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 24 +++++++-----------------
>  1 file changed, 7 insertions(+), 17 deletions(-)

I think I already applied an older version of this series, right?
Please resend the portions I missed that were different from the ones I
applied.

thanks,

greg k-h

