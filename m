X-GM-THRID: 6203986156822986752
X-Received: by 10.112.145.3 with SMTP id sq3mr5950964lbb.7.1444670830646;
        Mon, 12 Oct 2015 10:27:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.231 with SMTP id p7ls861262wif.5.canary; Mon, 12 Oct
 2015 10:27:10 -0700 (PDT)
X-Received: by 10.180.107.167 with SMTP id hd7mr3162256wib.6.1444670830132;
        Mon, 12 Oct 2015 10:27:10 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id bh7si547709wib.1.2015.10.12.10.27.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 10:27:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id q8so67823905wij.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 10:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=fCzcdpKUoNHhxTY2k0Tx3fer3a+zbQGJhsBkW0sEf7Q=;
        b=S6VE34J1xhFrQiYo2+pVJcIZNeTTIkfVLSq77LHeTQ+7U2VDwZIXRhQpkgJxx85Pf9
         QTmvDyDv1ajbCRrTg68pu7Nc0INlvwrkorMMRoaTxXH41wPfvlYeg+V1mvbu28Fj8Slp
         2qvyjBbfsGoy+JJNcFqs4Z53vPmob/JOPVSfeKlu5nNkJkONrJdfafTLEAABm4INwQId
         lBM2kiin5hW+K+qFvobtdzByrjOq93/uXXzi73mPVNioXmZ68rZFKJGjrJ924GKCvpgc
         X3A3zqDXr8e/jDlPAUCeinW0pMdTxuGL/R1NtCYZSYCa6nKfJSWgI9TlfVnvIuSsBSAm
         5DXQ==
MIME-Version: 1.0
X-Received: by 10.194.175.104 with SMTP id bz8mr31728526wjc.42.1444670829987;
 Mon, 12 Oct 2015 10:27:09 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Mon, 12 Oct 2015 10:27:09 -0700 (PDT)
In-Reply-To: <1444540283-9605-3-git-send-email-shraddha.6596@gmail.com>
References: <1444540283-9605-1-git-send-email-shraddha.6596@gmail.com>
	<1444540283-9605-3-git-send-email-shraddha.6596@gmail.com>
Date: Mon, 12 Oct 2015 20:27:09 +0300
Message-ID: <CAEnQRZAWyXfHzx55=jnUNGkitTMysawHhhPU90n5eBRMYA=8nA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4 2/3] Staging: rtl8192u: ieee80211:
 ieee80211_wx: Remove commented printk messages
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 11, 2015 at 8:11 AM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
> Remove commented out printk messages since they are not needed
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

I think we should raise the bar when accepting things into staging,
the amount of garbage
here is too high :).

> ---
> Changes in v4-
>  No change
> Changes in v3-
>  No change
> Changes in v2-
>  Fixed subject line.
>
>  drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c | 8 --------
>  1 file changed, 8 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
> index ae1b3cf..208be5f 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
> @@ -522,7 +522,6 @@ int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
>         struct ieee80211_security sec = {
>                 .flags = 0,
>         };
> -       //printk("======>encoding flag:%x,ext flag:%x, ext alg:%d\n", encoding->flags,ext->ext_flags, ext->alg);
>         idx = encoding->flags & IW_ENCODE_INDEX;
>         if (idx) {
>                 if (idx < 1 || idx > WEP_KEYS)
> @@ -538,7 +537,6 @@ int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
>                 group_key = 1;
>         } else {
>                 /* some Cisco APs use idx>0 for unicast in dynamic WEP */
> -               //printk("not group key, flags:%x, ext->alg:%d\n", ext->ext_flags, ext->alg);
>                 if (idx != 0 && ext->alg != IW_ENCODE_ALG_WEP)
>                         return -EINVAL;
>                 if (ieee->iw_mode == IW_MODE_INFRA)
> @@ -567,7 +565,6 @@ int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
>                         sec.level = SEC_LEVEL_0;
>                         sec.flags |= SEC_LEVEL;
>                 }
> -               //printk("disabled: flag:%x\n", encoding->flags);
>                 goto done;
>         }
>
> @@ -638,7 +635,6 @@ int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
>                 goto done;
>         }
>   //skip_host_crypt:
> -       //printk("skip_host_crypt:ext_flags:%x\n", ext->ext_flags);
>         if (ext->ext_flags & IW_ENCODE_EXT_SET_TX_KEY) {
>                 ieee->tx_keyidx = idx;
>                 sec.active_key = idx;
> @@ -760,7 +756,6 @@ int ieee80211_wx_set_auth(struct ieee80211_device *ieee,
>         switch (data->flags & IW_AUTH_INDEX) {
>         case IW_AUTH_WPA_VERSION:
>              /*need to support wpa2 here*/
> -               //printk("wpa version:%x\n", data->value);
>                 break;
>         case IW_AUTH_CIPHER_PAIRWISE:
>         case IW_AUTH_CIPHER_GROUP:
> @@ -791,16 +786,13 @@ int ieee80211_wx_set_auth(struct ieee80211_device *ieee,
>                 else if(data->value & IW_AUTH_ALG_LEAP){
>                         ieee->open_wep = 1;
>                         ieee->auth_mode = 2;
> -                       //printk("hahahaa:LEAP\n");
>                 }
>                 else
>                         return -EINVAL;
> -               //printk("open_wep:%d\n", ieee->open_wep);
>                 break;
>
>         case IW_AUTH_WPA_ENABLED:
>                 ieee->wpa_enabled = (data->value)?1:0;
> -               //printk("enalbe wpa:%d\n", ieee->wpa_enabled);
>                 break;
>
>         case IW_AUTH_RX_UNENCRYPTED_EAPOL:
> --
> 2.1.4
>
> --

