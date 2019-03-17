X-GM-THRID: 6668974051336126464
X-Received: by 2002:adf:9f42:: with SMTP id f2mr461127wrg.25.1552804172923;
        Sat, 16 Mar 2019 23:29:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:400e:: with SMTP id n14ls2558035wrp.16.gmail; Sat, 16
 Mar 2019 23:29:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzSgiociVyKzkhwdqryQSMpBlSI+2a49mKzYU8JFCJuV0/JAwolvzcBdY45Vxfnph/6+y1r
X-Received: by 2002:adf:ea4d:: with SMTP id j13mr282741wrn.18.1552804172098;
        Sat, 16 Mar 2019 23:29:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552804172; cv=none;
        d=google.com; s=arc-20160816;
        b=gKSl1WxGe1T8fwHM9ubun5Q8TrmqLqAy5NctXPPEECvuyhXz/d7b/f2BtZs/6aURWi
         nXJFeU8Pa6GEuH23PAitZaFH2V+cBoy+eWRACOS2ufejzIG5GW8QyFTwvlQ0EkbRRj9B
         4cAHQ1Y3oLd6XW4Ml/V/oHmWizAqdz5ckZla1/hondApIVHEPL4nvYdfq4zwu1vlNHKv
         Os4LQTjM4HmVrlOARTIqzTF3P/4LUMTxMMBj/6Qi7gwbKd9GaQ1YTgaXEVanJq2+/wBi
         N+QOmoeprO5wq9k4BJb5uCQiFgOCzNSZtzK6NFzG0L2leHIFcCP7oLlLG0ai1GcWlA7q
         NW1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=tsBlSVP/mt0LoQVU82XHkOTccRix+kBeF9YWVQ/4KiU=;
        b=ZmLlrRJOXNdmZjPGRGwmDTqpIm/UAxLmboIXRFcY0jcsSTeV0tT+aYPVNwKUFXqFhU
         RmZmzORboZBy+ehIhDX+ImjcenrfcE5YeW7yH9oQIT7jddlRiodwnF5qgAOblaAgU1dc
         rkNBnNeag/pDoPWr1pQ6PtBCw+NIxmOMh4fW6MjeaKr2Ywe9zik3SXsGhY1l0T831EOV
         xUHqcLl0E10YnAsQnqgomEaXTkmopnv9kMPNmmPPOIwVBYxlO+9f0mg+rgj3bw6KwaLk
         ubQ0IpFXujKdYjchky59x+Uzf9Nhh1gswUbi6x0zk0hhpWRaIDPV1huDNo5EOSjSlomV
         5SFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r18si196893wmc.2.2019.03.16.23.29.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:29:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,488,1544482800"; 
   d="scan'208";a="299664198"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 07:29:31 +0100
Date: Sun, 17 Mar 2019 07:29:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/7] Staging: rtl8723bs: Remove extern
 and change return type
In-Reply-To: <9e0b79cfee9a1bb0feba12741bfed92170d49af3.1552782299.git.madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903170724560.2588@hadrien>
References: <cover.1552782299.git.madhumithabiw@gmail.com> <9e0b79cfee9a1bb0feba12741bfed92170d49af3.1552782299.git.madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Madhumitha Prabakaran wrote:

> - Remove externs and change return types in function declarations, to
> compensate change made in function definitions.

Why did you drop extern?

> - Remove space after functions and before ( in function declarations.

You should mention that this is to follow Linux kernel coding style.

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

The freeing functions also have the pattern of a function that just calls
another function that has a name that starts with an _.  There are also
double debug prints, one of which could go.

julia

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

