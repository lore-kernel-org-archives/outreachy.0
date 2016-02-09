X-GM-THRID: 6249370730393239552
X-Received: by 10.112.168.201 with SMTP id zy9mr4345516lbb.23.1455054988344;
        Tue, 09 Feb 2016 13:56:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.42.75 with SMTP id q72ls1978lfq.72.gmail; Tue, 09 Feb 2016
 13:56:27 -0800 (PST)
X-Received: by 10.112.17.37 with SMTP id l5mr4292252lbd.21.1455054987419;
        Tue, 09 Feb 2016 13:56:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 5si13846wmm.2.2016.02.09.13.56.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 13:56:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,423,1449529200"; 
   d="scan'208";a="202366433"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 22:56:26 +0100
Date: Tue, 9 Feb 2016 22:56:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Remove unnecessary
 variable
In-Reply-To: <1455044948-1425-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1602092255320.2066@localhost6.localdomain6>
References: <1455044948-1425-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 10 Feb 2016, Bhumika Goyal wrote:

> Variable ret is initially made 0 and it's value remains unchanged in
> function. It is used only as return value.So remove ret and replace
> return ret with return 0.

"it's" -> "its".  And please always put a space after a period, when there 
is another following sentence.

Otherwise, the change looks fine.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
> index 0ae2180..b10fdce 100644
> --- a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
> +++ b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
> @@ -242,7 +242,6 @@ rtw_cfg80211_default_mgmt_stypes[NUM_NL80211_IFTYPES] = {
>  static int rtw_cfg80211_inform_bss(struct rtw_adapter *padapter,
>  				   struct wlan_network *pnetwork)
>  {
> -	int ret = 0;
>  	struct ieee80211_channel *notify_channel;
>  	struct cfg80211_bss *bss;
>  	u16 channel;
> @@ -295,7 +294,7 @@ static int rtw_cfg80211_inform_bss(struct rtw_adapter *padapter,
>  
>  	cfg80211_put_bss(wiphy, bss);
>  
> -	return ret;
> +	return 0;
>  }
>  
>  void rtw_cfg80211_indicate_connect(struct rtw_adapter *padapter)
> @@ -1300,7 +1299,6 @@ void rtw_cfg80211_surveydone_event_callback(struct rtw_adapter *padapter)
>  static int rtw_cfg80211_set_probe_req_wpsp2pie(struct rtw_adapter *padapter,
>  					       char *buf, int len)
>  {
> -	int ret = 0;
>  	const u8 *wps_ie;
>  	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
>  
> @@ -1330,7 +1328,7 @@ static int rtw_cfg80211_set_probe_req_wpsp2pie(struct rtw_adapter *padapter,
>  		}
>  	}
>  
> -	return ret;
> +	return 0;
>  }
>  
>  static int cfg80211_rtw_scan(struct wiphy *wiphy,
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455044948-1425-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

