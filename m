X-GM-THRID: 6388474275498557440
X-Received: by 10.46.22.3 with SMTP id w3mr1214190ljd.8.1487434499296;
        Sat, 18 Feb 2017 08:14:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.20 with SMTP id m20ls336910ljb.27.gmail; Sat, 18 Feb
 2017 08:14:58 -0800 (PST)
X-Received: by 10.25.18.35 with SMTP id h35mr1460384lfi.11.1487434498396;
        Sat, 18 Feb 2017 08:14:58 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 14si355988wmn.2.2017.02.18.08.14.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 08:14:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,174,1484002800"; 
   d="scan'208";a="261094578"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2017 17:14:58 +0100
Date: Sat, 18 Feb 2017 17:14:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/6] staging: rtl8192e: Remove blank
 line after '{'
In-Reply-To: <20170218154254.GA16661@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1702181714340.3112@hadrien>
References: <20170218154254.GA16661@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 18 Feb 2017, simran singhal wrote:

> Remove blank line after opening brace to fix the
> checkpatch issue blank lines aren't necessary after
> a open brace '{'.
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtl8192e/rtl819x_HT.h | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
> index 48d101a..f53903e 100644
> --- a/drivers/staging/rtl8192e/rtl819x_HT.h
> +++ b/drivers/staging/rtl8192e/rtl819x_HT.h
> @@ -32,7 +32,6 @@ enum ht_extchnl_offset {
>  };
>
>  struct ht_capab_ele {
> -
>  	u8	AdvCoding:1;
>  	u8	ChlWidth:1;
>  	u8	MimoPwrSave:2;
> @@ -187,7 +186,6 @@ struct rt_hi_throughput {
>  } __packed;
>
>  struct bss_ht {
> -
>  	u8				bdSupportHT;
>
>  	u8					bdHTCapBuf[32];
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170218154254.GA16661%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

