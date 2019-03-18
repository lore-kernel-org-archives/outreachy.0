X-GM-THRID: 6669720602377453568
X-Received: by 2002:a17:906:3744:: with SMTP id e4mr1838271ejc.3.1552915881057;
        Mon, 18 Mar 2019 06:31:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:e08f:: with SMTP id f15ls4439614edl.0.gmail; Mon, 18 Mar
 2019 06:31:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwdQ/uFR+XzQ6nguNgRo4Qc+KeVVJ+tNlpEdYecHNfA5wlEZ0gJvP/r6L7TYW8bPLjhixQL
X-Received: by 2002:a50:ba2b:: with SMTP id g40mr2056792edc.1.1552915880415;
        Mon, 18 Mar 2019 06:31:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552915880; cv=none;
        d=google.com; s=arc-20160816;
        b=OwuL7MmrabR5s0Jw8qrJi0p/ne662w2OxaQOS+r0eiiN6TIncjN+39YoaD+hsabhez
         Fmnvguyvh97dcDUwS7NvZqiBlY+x3A5hLI2ai5/ptKQpI9NPJwX140xBrQ1SLwfymtQu
         dUQdaqCyLEd933kQ7SXRfQx3g5dnzRT35OQ1sW1CxalbQAa9D4WIatSLOuhMGanu6AXt
         UMD/rCnzX/wLAnwUuI/RKJ+znll6M4RsmStlECIEPAL5OOLl9IcQ1VPtqzUEEi4FTdDR
         HHLorESzqZ7q6acb3nu8NEND6Zf8ifDCf290zpxE05S2rdIDX0cY2d4ot9fUADd4pTq6
         BPpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-data;
        bh=hWMADQ6O6SZk+Ygpx7YwjzYYld9TTrFWYyDPea6UO+E=;
        b=FUFHMosyLNVBz5UeFGaSroLZ5qPvtk3mrr+4r6nZsyCEdH56EHDS2Dl8ceJAJXuL1J
         4jSPAhLKM9CMSuApP+hIXLrGcxW9TiBtq3spQFwmEUjuSqg7yMBsZ3ecXFqGSGy5YRWa
         BrPViix5+vJMK6E5Cl/uQbwzFwa2hM933cHhhtg2qdt3cEPAwozCuJbIEJCSnaoffEiD
         ncBOdQm7y90NpF8+HIeadIF1lm0HWiqOzt5A1zWuNgEo+8GFa9eSzgqMofixEqL3MMLv
         CjwPQgwx3gI2gKViNGEwky87+zf1OX5kCFaqc6iyWeDBrh7qqg0VLPqfkk+395EbPywS
         tAwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r37si366923edd.2.2019.03.18.06.31.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 06:31:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
IronPort-Data: A9a23:BhpK364Q1ATehkoKxiwIRQxR2vbMJbvA6Rkv297NfqZqxAYutvk7Bk
 F3nBTOzgcMaEr5Q07VYUBOdMFRuMmTFqX6LBjz0UcC+IMDBLOKE8RtxqV6EJQRNyFtXY1zWM
 QJuYQFqG/iP7evm3Sfh3S7fSumc/ZwfKzNetoY1vcYgiXHmklgb/TOzmtTroiCSp6Lvr458T
 /D7cKowD6eX9oMD1c17lzG1KfmJJHYucZjj7xFS2DNunvtSkasGq307qsIRNnKwru1HSuS+w
 j9EwGwEOo/i9RmPKisO9kzDAWGu3U3A3jsvIuoBZQY2kMIwNKGCMi3hc7Mm2glmj6OyksSrq
 rtQcsLeiZdvrLUfOA1D54g5QrOIx86MKjI7wJPSAgkZhqk0l0OTXrx9hXQ+hb7qjB7UQzEOB
 rIAHRZB9e2XOEFNTN8roToeK+qCxdPTbdOm8/XiZddOrro6bBQb3vqUWJ5ZexQ8BXjTTozak
 OH4QwL1uSxSef1biPZqx1AJNpZnATn9v8Bi8z/ntcV3VJN8btM8iF4yd5n2JmP/A5dGzh3D4
 SXusB4qnGclzEH0JDFKbqDR7LcWSCHRMyf9TpeiS+pXSeXkFkdEOsTL5PmsMna5//PQUvkBo
 MJlK0Zn78WZ4hJkVF3oxRqByrIuLkFFFHOJq6U1qPV49TaEzFmVeRkxzVjab5+ORPzmVeyUE
 MqoyBcHUR+bIi237XhJTAB2Mwn16yJheW/a/iPZ3DcO0dczvKrT6PwtoMF/frdGrRWYnoPG1
 vixA==
X-IronPort-AV: E=Sophos;i="5.58,494,1544482800"; 
   d="scan'208";a="299819643"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Mar 2019 14:31:19 +0100
Date: Mon, 18 Mar 2019 14:31:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: rtw_mlme.c:
 Replace NULL comparision.
In-Reply-To: <20190318132203.13505-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.20.1903181431040.3832@hadrien>
References: <20190318132203.13505-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 18 Mar 2019, Sanjana Sanikommu wrote:

> Replace NULL comparison with '!' in the file rtw_mlme.c
> Issue found by checkpatch.pl semantic patch results for rtw_mlme.c

You don't need to add the parentheses.

julia

>
> CHECK:Comparision to NULL could be written "!candidate"
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> index cbee02a86d22..ecac6b428154 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> @@ -1438,7 +1438,7 @@ static int rtw_check_join_candidate(struct mlme_priv *pmlmepriv
>  			goto exit;
>  	}
>
> -	if (*candidate == NULL || (*candidate)->network.Rssi < competitor->network.Rssi) {
> +	if (!(*candidate) || (*candidate)->network.Rssi < competitor->network.Rssi) {
>  		*candidate = competitor;
>  		updated = true;
>  	}
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190318132203.13505-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

