X-GM-THRID: 6528739356252831744
X-Received: by 10.46.87.24 with SMTP id l24mr751389ljb.7.1520168618147;
        Sun, 04 Mar 2018 05:03:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.72.82 with SMTP id v79ls1450688lfa.11.gmail; Sun, 04 Mar
 2018 05:03:36 -0800 (PST)
X-Google-Smtp-Source: AG47ELtOQJugPL7bsaiElWl7z78ysyjNM/8JqgGUgJjzAxgHxovqrwbrKKud0jDf2eOqU+erIwVj
X-Received: by 10.25.235.140 with SMTP id f12mr819838lfk.19.1520168616228;
        Sun, 04 Mar 2018 05:03:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520168616; cv=none;
        d=google.com; s=arc-20160816;
        b=HdDr+iGNMZN3pSTHvvwgk+YUp5kVGnl103mDMjPLdvtK00rTe3bgOeVtrgvJvDuqlV
         oC1o4JeThsTWe8YatP8+dQ5mAoDVXemJUixaWgaAmEXG+1G/CZ0KYqlsygFzsHqZHtNc
         ZpAEbMlV+7hlVLtdI8zYoCBqU1K/pfHhzzB+kb8NB3E7bOq5hfguLnPMDaLaq7l6GOwf
         YAL3yx59AWzEUMWqMp0KZ4Ri3KeCzmBY5/f+vT+nORCuS7Bg7iX4PUQknTbiNMQLrTcM
         +TxEw5OtFf56F0Q+WX1VV8fE+UHL1nCiVZ8gEEbu4o3tM8v8qVdGSj7QcBF70V8kBq9k
         FYFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=0utvAMtMJkahPctvWuVDjC481+Xvf9PFtPpbM9tHmnQ=;
        b=HSJEOXI/Y26KhbI3yVH9pEOl+y7CYj8jgLBFwVLuV0JSvi1m1b8lbhJM5rsu92rY4k
         P/OAlTKfXIKTSI8qdTdSyvdudPemTyK9eHO+MQ6Iusi2NAPzONZ4C+nEEqraPeKO1Lbn
         X345bqDpQORpkYysQuGLVkpZypvFiCyYSJXUEhdX2DEaqZiJ5I4wJeJmfNE0b4ng9yZp
         OkTIAuJVUUIN3L3WVt99bx2NOww85wcC8C0lTxiC0xvP/p1JiwISODx/BljRH9ApmnWx
         NIj3vADqFZX+APyfrGo5OHhZPcNMF4snwGewNgTVdVK5pwLY2vYbqT5Tki8SdzBtGsKf
         67qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u72si391736lfi.4.2018.03.04.05.03.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 05:03:36 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,423,1515452400"; 
   d="scan'208";a="256900664"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2018 14:03:35 +0100
Date: Sun, 4 Mar 2018 14:03:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Rinkle Jain <rinklejain96@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    forest@alittletooquiet.net
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vt6655: Fix style violation
 for line ending in '('
In-Reply-To: <20180304072225.GA17701@tic-tac>
Message-ID: <alpine.DEB.2.20.1803041403140.2223@hadrien>
References: <20180304072225.GA17701@tic-tac>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Mar 2018, Rinkle Jain wrote:

> Replace line ending with '(' with function parameters to resolve
> style issue found by checkpath.
>
> Signed-off-by: Rinkle Jain <rinklejain96@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
> Changes in v2:
> 	- Make better use of the available horizontal space.
> 	- Remove use of a line for ');' in function declarartion.
>
>  drivers/staging/vt6655/baseband.h | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
> index b8ee33dcb352..30d9e9d20a39 100644
> --- a/drivers/staging/vt6655/baseband.h
> +++ b/drivers/staging/vt6655/baseband.h
> @@ -46,13 +46,10 @@
>  #define TOP_RATE_2M         0x00200000
>  #define TOP_RATE_1M         0x00100000
>
> -unsigned int
> -BBuGetFrameTime(
> -	unsigned char byPreambleType,
> -	unsigned char byPktType,
> -	unsigned int cbFrameLength,
> -	unsigned short wRate
> -);
> +unsigned int BBuGetFrameTime(unsigned char byPreambleType,
> +			     unsigned char byPktType,
> +			     unsigned int cbFrameLength,
> +			     unsigned short wRate);
>
>  void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
>  		       u16 tx_rate, u8 pkt_type, struct vnt_phy_field *phy);
> --
> 2.14.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180304072225.GA17701%40tic-tac.
> For more options, visit https://groups.google.com/d/optout.
>

