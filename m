X-GM-THRID: 6666820090157072384
X-Received: by 2002:a1c:cfc8:: with SMTP id f191mr1855230wmg.17.1552241073574;
        Sun, 10 Mar 2019 11:04:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f106:: with SMTP id p6ls416158wmh.6.gmail; Sun, 10 Mar
 2019 11:04:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzdKXlEfT7caRwBoZiFKShltTPufMtrfV5ZytBvS3X/QB/rtt0qrfo889yI90anEZMmuKtY
X-Received: by 2002:a1c:a741:: with SMTP id q62mr2055171wme.7.1552241072689;
        Sun, 10 Mar 2019 11:04:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552241072; cv=none;
        d=google.com; s=arc-20160816;
        b=vY9n7o2bFnVqTO6MmhJ1Kt+OSK/IB41YLoshziwfueD81J0LPn+kwQMLHgHvyA51tz
         JMTj+08TSAV2VIXyMpCGN/i5jmbRylpfgInhbm0bWRe8L8+GCxoqPpSR9yvhiMtxyCA/
         iVq0+pmerfEUTdV4tDV3+cB6EsB2NYLdhb4j72JbMI7Gkize3ceNhrLF66uvR2gMJkdy
         71V/5uqhykT6Q4bWcHs2ctvUQ30bb9oqa71OYS2CheElVbc2uSV5GVgQQ2/Ciii9VrF6
         SPAfyLmXOM5fKOEU3ojwqvPZGfx2c95vH1rFarvmjDMkEFketrWqnZenhq4mpcshVJuH
         ud/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=SN1bGUbh2tc376ZouwtWdE3K7WZwNSPD01zBHtN1qRg=;
        b=BWgmoNBFzoZbQs+emj46zld6ppjo+FAn3WRNf3oAOHjV2RzVePEmypiWZvo532nni5
         S70uLLpBlb18/X2D5PRiNNRqyRbNnplUcgCKD1wHB/cofYEZZkxsLEOgZYr33lBInV48
         3ZCYeeICzbufC+MKAMJUmbstjbJy9umz55+zS6fjSiJzgbfJxwl9BR6UgZ5G5ValWKNP
         k1i28IlG2H/JRHS4QvURBchXCbAJeYsu01agy0f8CuNcguEehcz+MXT+dnUDV26MXYYX
         HtsgdjA6NoaTP6jH/rKxSRLFszEs0DY0eQCwzGf90uh1yQ35qdaOPYax8K9sYCzf3rbv
         RsnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a7si179272wrw.0.2019.03.10.11.04.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 11:04:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,465,1544482800"; 
   d="scan'208";a="298711751"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2019 19:04:30 +0100
Date: Sun, 10 Mar 2019 19:04:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2 3/5] Staging: rtl8192u: Remove
 typedef for struct _RT_POWER_SAVE_CONTROL
In-Reply-To: <20190310174635.16923-4-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.21.1903101904010.3131@hadrien>
References: <20190310174635.16923-1-bhanusreemahesh@gmail.com> <20190310174635.16923-4-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Mar 2019, Bhanusree Pola wrote:

> -Avoid typedefs for structure types to maintain kernel coding style.
> -Remove typedefs RT_POWER_SAVE_CONTROL and *PRT_POWER_SAVE_CONTROL of struct _RT_POWER_SAVE_CONTROL.
> -Change Structure name _RT_POWER_SAVE_CONTROL to rt_power_save_control to maintain Linux kernel Coding Style.
> -Replace occurences of _RT_POWER_SAVE_CONTROL to struct rt_power_save_control.
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> index 735e86cc6adc..152854fc09f8 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> @@ -1518,7 +1518,7 @@ typedef	enum _RT_RF_POWER_STATE {
>  	eRfOff
>  } RT_RF_POWER_STATE;
>
> -typedef struct _RT_POWER_SAVE_CONTROL {
> +struct rt_power_save_control {
>
>  	//
>  	// Inactive Power Save(IPS) : Disable RF when disconnected
> @@ -1562,7 +1562,7 @@ typedef struct _RT_POWER_SAVE_CONTROL {
>  	//
>  	bool				bLeisurePs;
>
> -} RT_POWER_SAVE_CONTROL, *PRT_POWER_SAVE_CONTROL;
> +};
>
>  typedef u32 RT_RF_CHANGE_SOURCE;
>  #define RF_CHANGE_BY_SW		BIT(31)
> @@ -1878,7 +1878,7 @@ struct ieee80211_device {
>  	//added by amy for AP roaming
>  	RT_LINK_DETECT_T	LinkDetectInfo;
>  	//added by amy for ps
> -	RT_POWER_SAVE_CONTROL	PowerSaveControl;
> +	struct rt_power_save_control	PowerSaveControl;

The fields atr floating all over the place in this structure.  Just put
one space between the type and the field name.

julia

>  //}
>  	/* used if IEEE_SOFTMAC_TX_QUEUE is set */
>  	struct  tx_pending tx_pending;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190310174635.16923-4-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

