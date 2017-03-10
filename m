X-GM-THRID: 6395900241087823872
X-Received: by 10.46.84.69 with SMTP id y5mr3555492ljd.21.1489169968302;
        Fri, 10 Mar 2017 10:19:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.82.213 with SMTP id n82ls75414lje.37.gmail; Fri, 10 Mar
 2017 10:19:27 -0800 (PST)
X-Received: by 10.25.17.102 with SMTP id g99mr2751651lfi.6.1489169967802;
        Fri, 10 Mar 2017 10:19:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l138si25365wmg.0.2017.03.10.10.19.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 10:19:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,141,1486422000"; 
   d="scan'208";a="264079330"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 19:19:27 +0100
Date: Fri, 10 Mar 2017 19:19:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/4] staging: rtl8712: Refactor
 conditional in r8711_wx_get_freq
In-Reply-To: <be3d4e4736100b797ab54a73cfbc568d0d389535.1489161001.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703101918430.3356@hadrien>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com> <be3d4e4736100b797ab54a73cfbc568d0d389535.1489161001.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Reduce one level of indentation in r8711_wx_get_freq.
> This was done using the following Coccinelle script:
>
> @disable neg_if@
> expression e,E;
> statement S;
> @@
>
> *if (e)
> S
> else { return -E; }
>
> @disable neg_if@
> expression e,E;
> statement S;
> identifier l;
> @@
>
> *if (e)
> S
> else { rc = -E; goto l; }
>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> index aff3628..add46ff 100644
> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> @@ -698,14 +698,14 @@ static int r8711_wx_get_freq(struct net_device *dev,
>  	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
>  	struct wlan_bssid_ex *pcur_bss = &pmlmepriv->cur_network.network;
>
> -	if (check_fwstate(pmlmepriv, _FW_LINKED)) {
> -		wrqu->freq.m = ieee80211_wlan_frequencies[
> -			       pcur_bss->Configuration.DSConfig - 1] * 100000;
> -		wrqu->freq.e = 1;
> -		wrqu->freq.i = pcur_bss->Configuration.DSConfig;
> -	} else {
> +	if (!check_fwstate(pmlmepriv, _FW_LINKED))

Off topic, but check_fwstate could have return type bool - currently it's
u8.

julia


>  		return -ENOLINK;
> -	}
> +
> +	wrqu->freq.m = ieee80211_wlan_frequencies[
> +		       pcur_bss->Configuration.DSConfig - 1] * 100000;
> +	wrqu->freq.e = 1;
> +	wrqu->freq.i = pcur_bss->Configuration.DSConfig;
> +
>  	return 0;
>  }
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/be3d4e4736100b797ab54a73cfbc568d0d389535.1489161001.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

