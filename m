X-GM-THRID: 6670256423573651456
X-Received: by 2002:a17:906:1959:: with SMTP id b25mr2852179eje.16.1553063189732;
        Tue, 19 Mar 2019 23:26:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:f182:: with SMTP id gs2ls205044ejb.5.gmail; Tue, 19
 Mar 2019 23:26:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwM2IDmGX4J8xcVFCsfokGxOPNjJ6X6yGdsd/YqG1yTAWdnjkYtxV3i874KxISpNIgWEMKQ
X-Received: by 2002:a17:906:4757:: with SMTP id j23mr1849151ejs.15.1553063188667;
        Tue, 19 Mar 2019 23:26:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553063188; cv=none;
        d=google.com; s=arc-20160816;
        b=axGi/A+T5bzGZGHd5LcgkHJXvj8NfTYYlNamufT10CPAYuhDLHt9ZHVFbSb1l8CljY
         M8aQccb9W5k+VyyZJpH651QV+ApU7oikJ2jCsA0i/mlnh0rGUc1G93qZcUOD/DwmJy7o
         BsEW1HQ4udcGRvX8tMf40Xjv1j0roVtCHK1i4vVNNC4TZkueJX0A8MeLBj/8qJ4hWiQX
         8omueNjv9w+Y60f/zACTqlS09Si0LvYLupE9x5jh4bgCitw7ScoWQxlSD0pGLue/LYoV
         PPQF9JhpITgiLUluRJ51033pZnbaFQfcQodHg3+f6jjZilH7RbM8HDkqnTxC0+6TDVHq
         ZyNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=A0x5RG7EcdNOGmv7qGA5ODXMYssNta2y32gpqBOehQ4=;
        b=PE0YqIH+2L+t8xV8Xe+tW4PaShL7ZT1Dbo3P7Fgjmu6tRGZBvW8K/eJdKEfif9HFqH
         wTwpWWM06NlOvOESPyGr4iL1Fxl2v+l2lL06B85/eM1rDB1jhwZyiTaW0TbDR3280Ht6
         LXSwRvrEUb16f7xcEJRwADnjFWgnS5/46XgsKPzf7BtsYJspwPDBDJur5xrXAlG+z1T5
         cf5u4yvT+pijYZ5vWgOMsY6zZ6sRyeIdSonP97gPdVyMSJeH85ST3ZlXnsMmTNtWKGak
         4e9xgtat43xd8jiQxnMgv+XmqiRgEjPwQKUwhZ4iFYJoSxnEoEKOQGAzgb0jlE+yK2e1
         qQ2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r37si54725edd.2.2019.03.19.23.26.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 23:26:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,247,1549926000"; 
   d="scan'208";a="374821266"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Mar 2019 07:26:21 +0100
Date: Wed, 20 Mar 2019 07:26:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Change return
 type and type of local variable
In-Reply-To: <20190320000125.8930-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903200719560.2593@hadrien>
References: <20190320000125.8930-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 19 Mar 2019, Madhumitha Prabakaran wrote:

> Change type of local variable and return type of function rtw_startbss_cmd,
> as function's return type are defined for standard error codes. Change
> corresponding function declarations and call sites. Along with
> modifications, remove extern from the function declaration to maintain
> Linux kernel coding style.

The changes look good, but the log message isn't really ideal to
understand what is going on.

You could start by stating what happens:

rtw_startbss_cmd can return the result of calling rtw_enqueue_cmd, which
can return the result of calling _rtw_enqueue_cmd, but they all have
different return types (u8, u32, and sint, respectively).

As all of these functions return error codes, change all the return types
to int, in preparation for converting these functions to use standard
kernel error codes.

In checking these changes, I also saw nearby the function rtw_cmd_filter.
Currently that returns int and _SUCCESS and _FAIL.  Given the name, it
might make more sense for this function to return true in the _SUCCESS
case and false in the _FAIL case, and thus to have a bool return type.
The function also has a local variable called bAllow of type u8 that would
be better off with the name allow and type bool.  There is also a strange
prototype of the function that is right above the definition of the
function itself.  This is not needed.

julia


> Issue suggested by Coccinelle.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c      | 8 ++++----
>  drivers/staging/rtl8723bs/include/cmd_osdep.h | 2 +-
>  drivers/staging/rtl8723bs/include/rtw_cmd.h   | 4 ++--
>  3 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index bd3a5a23a418..04c6927dab8b 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -256,7 +256,7 @@ ISR/Call-Back functions can't call this sub-function.
>
>  */
>
> -sint	_rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
> +int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
>  {
>  	_irqL irqL;
>
> @@ -331,7 +331,7 @@ int rtw_cmd_filter(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
>
>
>
> -u32 rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
> +int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
>  {
>  	int res = _FAIL;
>  	struct adapter *padapter = pcmdpriv->padapter;
> @@ -719,12 +719,12 @@ u8 rtw_createbss_cmd(struct adapter  *padapter)
>  	return res;
>  }
>
> -u8 rtw_startbss_cmd(struct adapter  *padapter, int flags)
> +int rtw_startbss_cmd(struct adapter  *padapter, int flags)
>  {
>  	struct cmd_obj *pcmd;
>  	struct cmd_priv  *pcmdpriv = &padapter->cmdpriv;
>  	struct submit_ctx sctx;
> -	u8 res = _SUCCESS;
> +	int res = _SUCCESS;
>
>  	if (flags & RTW_CMDF_DIRECTLY) {
>  		/* no need to enqueue, do the cmd hdl directly and free cmd parameter */
> diff --git a/drivers/staging/rtl8723bs/include/cmd_osdep.h b/drivers/staging/rtl8723bs/include/cmd_osdep.h
> index 06ab48263757..d3af9f44ad59 100644
> --- a/drivers/staging/rtl8723bs/include/cmd_osdep.h
> +++ b/drivers/staging/rtl8723bs/include/cmd_osdep.h
> @@ -12,7 +12,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv);
>  int rtw_init_evt_priv(struct evt_priv *pevtpriv);
>  extern void _rtw_free_evt_priv (struct	evt_priv *pevtpriv);
>  extern void _rtw_free_cmd_priv (struct	cmd_priv *pcmdpriv);
> -extern sint _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
> +int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
>  extern struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue);
>
>  #endif
> diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
> index fa4ebc3d7539..b83824ca2e31 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
> @@ -122,7 +122,7 @@ struct P2P_PS_CTWPeriod_t {
>  	u8 CTWPeriod;	/* TU */
>  };
>
> -extern u32 rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
> +int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
>  extern struct cmd_obj *rtw_dequeue_cmd(struct cmd_priv *pcmdpriv);
>  extern void rtw_free_cmd_obj(struct cmd_obj *pcmd);
>
> @@ -827,7 +827,7 @@ struct RunInThread_param
>
>  u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid, int ssid_num, struct rtw_ieee80211_channel *ch, int ch_num);
>  extern u8 rtw_createbss_cmd(struct adapter  *padapter);
> -u8 rtw_startbss_cmd(struct adapter  *padapter, int flags);
> +int rtw_startbss_cmd(struct adapter  *padapter, int flags);
>
>  struct sta_info;
>  extern u8 rtw_setstakey_cmd(struct adapter  *padapter, struct sta_info *sta, u8 unicast_key, bool enqueue);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190320000125.8930-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

