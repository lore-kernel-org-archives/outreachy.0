X-GM-THRID: 6668974051336126464
X-Received: by 2002:a17:906:1c46:: with SMTP id l6mr1161359ejg.9.1552804233519;
        Sat, 16 Mar 2019 23:30:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:ee8a:: with SMTP id f10ls3501201edr.6.gmail; Sat, 16 Mar
 2019 23:30:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyQjxit6/hbs565tCBP6TXayBhiIkmkSiBu6NrJeAVVvwPZDDeoazCb+o1ry3s7riW/iS10
X-Received: by 2002:a05:6402:1659:: with SMTP id s25mr1311793edx.2.1552804232811;
        Sat, 16 Mar 2019 23:30:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552804232; cv=none;
        d=google.com; s=arc-20160816;
        b=Q6pqQqltJsQP+0PUxmBgwSgI67cUmbTYgXcwApWR64EyxriWgFqDkh+w3PwaBu3ynB
         ONHW3ElqkValHOSel4ha2hDT7Rqb27WBeEgleCH6ibYaf522ndcrqU11wBRX6jVoIMjc
         1NVdayeyDuxoRijrrXzvA5a3ZshK3YETAfGUuoVTcChhENURqVevD4WpZJBl7qyNi52G
         Aan3QSlegiIkc8HrsQWtHAJKKT6AHkgUnfhKKL4sDkxByu2M90+3OPExU+VBGmuk0E1P
         MSBHNZk27C/yxk28UbSiwysc1D/xMkP5XO/OsfsClD3scFjQAL7Aq8FmPGJWfyADnP8l
         BJNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=KshEhIm63GdPSsQu7nS+6BaAwO8t+dmkLuyD1FWdtEk=;
        b=wh8URTTsQHdzEAx7IAIE/pfHR7NCr0R9phRiRmjOB3z749nRSEe1dVpi4/hQOkOSAC
         v9wZz79swIoFTjb8an2Mqh+KLD0FXPB4rA0Ia1Hrs9pfZc7KuEH0kCiYl8xb5MBc+J1Z
         2Qns0xS6M4i7gSfD/QxrxSpwq8ca2yi0vuRarvVeTBOfqembMSw1YKFRG+tDq6m51RbW
         l0eF7P8VJi/AR5QQW45g41aOaPPNrh9dPOFTfAcIeAyh3AedelQ2ZvPutNP0cH3GQv/r
         CX/ebpIAGw+MwjHkvN9NPgoVLEaeE20KMznrdwhkwWaTkzm4UqITfPcylXF00QkzJkmP
         l3IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h5si264076ejq.0.2019.03.16.23.30.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:30:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,488,1544482800"; 
   d="scan'208";a="299664309"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 07:30:31 +0100
Date: Sun, 17 Mar 2019 07:30:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/7] Staging: rtl8723bs: Remove extern
 and change return type
In-Reply-To: <9e0b79cfee9a1bb0feba12741bfed92170d49af3.1552782299.git.madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903170729410.2588@hadrien>
References: <cover.1552782299.git.madhumithabiw@gmail.com> <9e0b79cfee9a1bb0feba12741bfed92170d49af3.1552782299.git.madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Madhumitha Prabakaran wrote:

> - Remove externs and change return types in function declarations, to
> compensate change made in function definitions.
> - Remove space after functions and before ( in function declarations.

You also should never have a patch that affects only the prototypes of
functions.  Change the prototypes in the same patch where you change the
function definitions.  The kernel needs to compile after every patch.

julia

>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/include/rtw_cmd.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
> index 299b55538788..96d71b70f476 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
> @@ -129,10 +129,10 @@ extern void rtw_free_cmd_obj(struct cmd_obj *pcmd);
>  void rtw_stop_cmd_thread(struct adapter *adapter);
>  int rtw_cmd_thread(void *context);
>
> -extern u32 rtw_init_cmd_priv (struct cmd_priv *pcmdpriv);
> +int rtw_init_cmd_priv(struct cmd_priv *pcmdpriv);
>  extern void rtw_free_cmd_priv (struct cmd_priv *pcmdpriv);
>
> -extern u32 rtw_init_evt_priv (struct evt_priv *pevtpriv);
> +int rtw_init_evt_priv(struct evt_priv *pevtpriv);
>  extern void rtw_free_evt_priv (struct evt_priv *pevtpriv);
>  extern void rtw_evt_notify_isr(struct evt_priv *pevtpriv);
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9e0b79cfee9a1bb0feba12741bfed92170d49af3.1552782299.git.madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

