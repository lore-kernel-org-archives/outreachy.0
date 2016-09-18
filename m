X-GM-THRID: 6331575608361877504
X-Received: by 10.107.37.10 with SMTP id l10mr13461598iol.18.1474194895672;
        Sun, 18 Sep 2016 03:34:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.40.85 with SMTP id o82ls2554407ioo.50.gmail; Sun, 18 Sep
 2016 03:34:54 -0700 (PDT)
X-Received: by 10.66.76.40 with SMTP id h8mr12678650paw.41.1474194894915;
        Sun, 18 Sep 2016 03:34:54 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id e66si286953pfk.2.2016.09.18.03.34.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 03:34:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 18D2298F;
	Sun, 18 Sep 2016 10:34:53 +0000 (UTC)
Date: Sun, 18 Sep 2016 12:34:59 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com, amitoj1606@gmail.com
Subject: Re: [PATCH 1/3] staging: rtl8188eu: core: Remove unnecessary
 parentheses around LNet function pointer
Message-ID: <20160918103459.GA9852@kroah.com>
References: <20160918074648.GA4656@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160918074648.GA4656@life-desktop>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Sep 18, 2016 at 01:16:55PM +0530, Anchal Jain wrote:
> No need for the parentheses around any function pointer.
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 30 +++++++++++++++---------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index 3562f11..dfd5055 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -26,7 +26,7 @@
>  
>  void init_mlme_ap_info(struct adapter *padapter)
>  {
> -	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
> +	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

But that's not a function pointer, right?

confused,

greg k-h

