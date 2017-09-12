X-GM-THRID: 6464167912849539072
X-Received: by 10.223.136.141 with SMTP id f13mr837390wrf.0.1505211770963;
        Tue, 12 Sep 2017 03:22:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.174.129 with SMTP id x123ls278292wme.3.gmail; Tue, 12 Sep
 2017 03:22:49 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDcQ6HUIqZOjGSCKsxaoAUNQW60Hv7vrI6R2NWoC1+tdP19qNWHJIz7wUzCt0ddLXBUK14x
X-Received: by 10.28.133.68 with SMTP id h65mr1178557wmd.1.1505211769887;
        Tue, 12 Sep 2017 03:22:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505211769; cv=none;
        d=google.com; s=arc-20160816;
        b=YjYF6oMKnjT+0o9t17lMMqj+M3M1Ozrans2I/PeAeuPZ5Pd62uA/fIJUVXvrzxu2EN
         gkhhLdhD+qR/yZ0XP1EG3aIsfrUQVOGQAoGNLk457YSMONnjCdV++iDlpvnjYJlS5lji
         pyTmzf9Ebcrf3TJwYSTJsmQeLaqUh2fzZen9+dB4eEbMvjxVzERIU+nyJIc8RjrYEwzl
         GE8k8k7xREPRUFujZTCvTwZTuvXKVBhlnEZWniwyU5Wd7Ln0azYq+sWC2Gci4BkF1EXL
         lv9xLULGvu7nq72aajZAsWuEumJiWZFn8puVur+BTlv+IGTR2yV7pmCzjoWbzMOaoiVS
         cgSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=pScP63MSOVv9Q7RzQr44HRYauUXBlu7C3+vBcZOowDs=;
        b=RerVTpXeA3yIbtPGv8tOyBmgxGlBt4qJ1lGfBRg2NBQcWgYvMl1Co02Y2UyxcMW0vy
         nfLVsrdSgpbM3TMZyX6lTWFZVTzY84we9YLuIf+KGWitqgkxvtPtjoOYJH1XvLavL6DS
         1Wzw5NMnAaZZOpXE6RR/+AxVQ5fser6zN8izY6mYjCDv8hxFsSL+RxQxg+/gNIFuUXmp
         Slka51ejog2JeG4nuQH+eSk0CxFkmRfyyGdgrrzvKS9EiTHcUkd6I0IF73r2z16oQzCm
         EvvpQMV75hlOx1HefL3SLIiLKgiU4gYuSikxs3OqtFKXBBxP2sf0YZlFM9ryzDtzqekr
         QK8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 74si827917wmf.8.2017.09.12.03.22.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 03:22:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,382,1500933600"; 
   d="scan'208";a="290657415"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Sep 2017 12:22:49 +0200
Date: Tue, 12 Sep 2017 12:22:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 07/10] staging: rtl8723bs: Remove
 unneccesary space
In-Reply-To: <1505210936-24971-1-git-send-email-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709121221390.3149@hadrien>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com> <1505210936-24971-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

It'sa small detail, but perhaps you could fix the spelling of unnecessary
(1 c and 2 s's).

julia

On Tue, 12 Sep 2017, Harsha Sharma wrote:

> Remove space between function name and open parenthesis '('
> Remove space before ';', '++', ','
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
> Change in v2:
>  -Merge patches 07/10 and 08/10
>
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> index eb21821..61be2b8 100644
> --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> @@ -235,8 +235,8 @@
>  MODULE_PARM_DESC(rtw_decrypt_phy_file, "Enable Decrypt PHY File");
>
>  int _netdev_open(struct net_device *pnetdev);
> -int netdev_open (struct net_device *pnetdev);
> -static int netdev_close (struct net_device *pnetdev);
> +int netdev_open(struct net_device *pnetdev);
> +static int netdev_close(struct net_device *pnetdev);
>
>  static uint loadparam(struct adapter *padapter, _nic_hdl pnetdev)
>  {
> @@ -258,7 +258,7 @@ static uint loadparam(struct adapter *padapter, _nic_hdl pnetdev)
>  	if (registry_par->channel > 14)
>  		registry_par->channel = 1;
>
> -	registry_par->vrtl_carrier_sense = (u8)rtw_vrtl_carrier_sense ;
> +	registry_par->vrtl_carrier_sense = (u8)rtw_vrtl_carrier_sense;
>  	registry_par->vcs_type = (u8)rtw_vcs_type;
>  	registry_par->rts_thresh = (u16)rtw_rts_thresh;
>  	registry_par->frag_thresh = (u16)rtw_frag_thresh;
> @@ -607,7 +607,7 @@ u32 rtw_start_drv_threads(struct adapter *padapter)
>  	return _status;
>  }
>
> -void rtw_stop_drv_threads (struct adapter *padapter)
> +void rtw_stop_drv_threads(struct adapter *padapter)
>  {
>  	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_stop_drv_threads\n"));
>
> @@ -1228,7 +1228,7 @@ void rtw_dev_unload(struct adapter *padapter)
>  				DBG_871X("stop cmdthd timeout\n");
>  				break;
>  			} else {
> -				cnt ++;
> +				cnt++;
>  				DBG_871X("cmdthd is running(%d)\n", cnt);
>  				msleep(10);
>  			}
> @@ -1879,7 +1879,7 @@ int rtw_resume_common(struct adapter *padapter)
>  		pwrpriv->pno_in_resume = false;
>  	#endif
>  	}
> -	DBG_871X_LEVEL(_drv_always_, "%s:%d in %d ms\n", __func__ , ret,
> +	DBG_871X_LEVEL(_drv_always_, "%s:%d in %d ms\n", __func__, ret,
>  		jiffies_to_msecs(jiffies - start_time));
>
>  	return ret;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505210936-24971-1-git-send-email-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

