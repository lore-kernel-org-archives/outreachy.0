X-GM-THRID: 9311491194880
X-Received: by 10.182.148.164 with SMTP id tt4mr1877277obb.30.1427152927002;
        Mon, 23 Mar 2015 16:22:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.47 with SMTP id a44ls2802262qge.83.gmail; Mon, 23 Mar
 2015 16:22:06 -0700 (PDT)
X-Received: by 10.236.111.4 with SMTP id v4mr1996016yhg.55.1427152926785;
        Mon, 23 Mar 2015 16:22:06 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si252993pac.2.2015.03.23.16.22.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2015 16:22:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BEB47A79;
	Mon, 23 Mar 2015 23:22:05 +0000 (UTC)
Date: Mon, 23 Mar 2015 22:38:20 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Change C99 //
 comments
Message-ID: <20150323213820.GB935@kroah.com>
References: <1426873556-30115-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1426873556-30115-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 20, 2015 at 07:45:56PM +0200, Hatice ERT�RK wrote:
> Remove the all '//' and instead of '/* */' put.
> This Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  .../staging/rtl8192u/ieee80211/ieee80211_module.c  | 40 +++++++++++-----------
>  1 file changed, 20 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
> index a35ba01..6763ac5 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
> @@ -152,7 +152,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
>  	ieee->privacy_invoked = 0;
>  	ieee->ieee802_1x = 1;
>  	ieee->raw_tx = 0;
> -	//ieee->hwsec_support = 1; //defalt support hw security. //use module_param instead.
> +	/* ieee->hwsec_support = 1;  defalt support hw security. //use module_param instead. */

Lines like this can just be deleted, don't keep them around for no
reason.

thanks,

greg k-h

