X-GM-THRID: 6210234849248149504
X-Received: by 10.182.29.41 with SMTP id g9mr34217996obh.27.1445933611990;
        Tue, 27 Oct 2015 01:13:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.24 with SMTP id i24ls286721ioo.68.gmail; Tue, 27 Oct
 2015 01:13:31 -0700 (PDT)
X-Received: by 10.66.248.9 with SMTP id yi9mr10608280pac.43.1445933611735;
        Tue, 27 Oct 2015 01:13:31 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pe1si4014790pac.2.2015.10.27.01.13.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 01:13:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.250])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BFE0190;
	Tue, 27 Oct 2015 08:13:30 +0000 (UTC)
Date: Tue, 27 Oct 2015 17:13:28 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723au: core: Remove
 unnecessary functions
Message-ID: <20151027081328.GB17198@kroah.com>
References: <20151027080252.GA27211@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151027080252.GA27211@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 27, 2015 at 01:32:52PM +0530, Amitoj Kaur Chawla wrote:
> Remove functions that can be replaced by a single line of code and are
> unnecessary.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_ap.c | 28 ++++------------------------
>  1 file changed, 4 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
> index a7c8b73..0637020 100644
> --- a/drivers/staging/rtl8723au/core/rtw_ap.c
> +++ b/drivers/staging/rtl8723au/core/rtw_ap.c
> @@ -1135,11 +1135,6 @@ int rtw_acl_remove_sta23a(struct rtw_adapter *padapter, u8 *addr)
>  	return 0;
>  }
>  
> -static void update_bcn_fixed_ie(struct rtw_adapter *padapter)
> -{
> -	DBG_8723A("%s\n", __func__);
> -}
> -
>  static void update_bcn_erpinfo_ie(struct rtw_adapter *padapter)
>  {
>  	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
> @@ -1173,21 +1168,6 @@ static void update_bcn_erpinfo_ie(struct rtw_adapter *padapter)
>  	}
>  }
>  
> -static void update_bcn_htcap_ie(struct rtw_adapter *padapter)
> -{
> -	DBG_8723A("%s\n", __func__);
> -}
> -
> -static void update_bcn_htinfo_ie(struct rtw_adapter *padapter)
> -{
> -	DBG_8723A("%s\n", __func__);
> -}
> -
> -static void update_bcn_rsn_ie(struct rtw_adapter *padapter)
> -{
> -	DBG_8723A("%s\n", __func__);
> -}

These look like functions that someone hasn't implemented yet, just
delete them, and the callers as well, don't move the debug message into
the caller site, that doesn't make much sense.

thanks,

greg k-h

