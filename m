X-GM-THRID: 6330669960642166784
X-Received: by 10.200.45.232 with SMTP id q37mr1770793qta.78.1474137524185;
        Sat, 17 Sep 2016 11:38:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.27.213 with SMTP id b204ls923939iob.41.gmail; Sat, 17 Sep
 2016 11:38:43 -0700 (PDT)
X-Received: by 10.66.75.36 with SMTP id z4mr11945930pav.39.1474137523599;
        Sat, 17 Sep 2016 11:38:43 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id si10si4081710pab.1.2016.09.17.11.38.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 11:38:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AD59D412;
	Sat, 17 Sep 2016 18:38:42 +0000 (UTC)
Date: Sat, 17 Sep 2016 20:38:46 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Arnaud Patard <arnaud.patard@rtp-net.org>,
	Clifton Barnes <clifton.a.barnes@gmail.com>,
	Geliang Tang <geliangtang@163.com>, Ben Marsh <bmarsh94@gmail.com>,
	Janani Ravichandran <janani.rvchndrn@gmail.com>,
	Benoit Hiller <benoit.hiller@gmail.com>
Subject: Re: [PATCH v2] staging: xgifb: Replace explicit NULL comparison
Message-ID: <20160917183846.GA4232@kroah.com>
References: <20160916105653.GE5686@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160916105653.GE5686@namrata-HP-Pavilion-g6-Notebook-PC>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Sep 16, 2016 at 04:26:56PM +0530, Namrata A Shettar wrote:
> Replace explicit NULL comparison  with equivalent expression to resolve
> checkpatch issue.
> - x != NULL => x
> 
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  Changes in v2:
>  -sent using plain text mail agent
> 
>  drivers/staging/xgifb/XGI_main_26.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
>   diff --git a/drivers/staging/xgifb/XGI_main_26.c
>   b/drivers/staging/xgifb/XGI_main_26.c
>   index d56ef14..23a3bd7 100644
>   --- a/drivers/staging/xgifb/XGI_main_26.c
>   +++ b/drivers/staging/xgifb/XGI_main_26.c
>   @@ -2085,7 +2085,7 @@ static int __init xgifb_init(void)
>    {
>            char *option = NULL;
> 
> 	   -       if (forcecrt2type != NULL)
> 	   +       if (forcecrt2type)
> 	                   XGIfb_search_crt2type(forcecrt2type);
> 			           if (fb_get_options("xgifb", &option))
> 				                   return -ENODEV;

This is really corrupted, I don't know how you did this, it's a new one
to me...

Please fix up and resend.

thanks,

greg k-h

