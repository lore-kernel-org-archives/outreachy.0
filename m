X-GM-THRID: 6670387249152
X-Received: by 10.42.80.133 with SMTP id v5mr687091ick.8.1425519608947;
        Wed, 04 Mar 2015 17:40:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.164 with SMTP id c33ls984866qgf.66.gmail; Wed, 04 Mar
 2015 17:40:08 -0800 (PST)
X-Received: by 10.52.166.77 with SMTP id ze13mr7789221vdb.9.1425519608792;
        Wed, 04 Mar 2015 17:40:08 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x229.google.com (mail-qc0-x229.google.com. [2607:f8b0:400d:c01::229])
        by gmr-mx.google.com with ESMTPS id ba9si959938qcb.0.2015.03.04.17.40.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 17:40:08 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::229 as permitted sender) client-ip=2607:f8b0:400d:c01::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::229 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by qcxn11 with SMTP id n11so12672901qcx.11
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 17:40:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=p39bI7ApUMMqkM/euI5PLTLA6imyb/e4Q4a4CghgGuo=;
        b=vBhlfFw8/xRz+uucxtes0O9mSSNANo+C9JNBlvCgzhULoAi3wzLfGFPKZQPvW2azFi
         Xv/XxgCxrZho2anzT3OQAFh014WT6OGetyDXbjiAUvj5q2SFw7KiOUH3xfRJWmv9NV4E
         pVXqNodLZS93fvODhrejdqPyAhqvirCdffkm1a8T+ZZqVEx2vFDw/xpOkXunXiyBETeF
         lafErpq24qftQjOuJnBSEGkPovEUIfPC7HA9ViI5ZF7623Co4kNFR3d+sqZEjdydz5Yk
         6wfjTu4AZPXCkHg76jHywxtrl5QJXs3ojdufBttNOyZwgxiua0WaiMixiQVb7j+05FVO
         569Q==
X-Received: by 10.140.39.179 with SMTP id v48mr9176362qgv.77.1425519608701;
        Wed, 04 Mar 2015 17:40:08 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-72-68-159-94.nycmny.fios.verizon.net. [72.68.159.94])
        by mx.google.com with ESMTPSA id x204sm737965qha.2.2015.03.04.17.40.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 17:40:08 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54F7B3F6.7070803@gmail.com>
Date: Wed, 04 Mar 2015 20:40:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Fixed error 'else
 should follow close brace '}".
References: <1425503716-13317-1-git-send-email-yeliztaneroglu@gmail.com>
In-Reply-To: <1425503716-13317-1-git-send-email-yeliztaneroglu@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/04/15 16:15, Yeliz Taneroglu wrote:
> This patch fixes error 'else should follow close brace '}"
> found by checkpatch in driver rtl8723au.
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_efuse.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Hi Yeliz,

Your patch is fine, calling it an error is maybe a little much, but I
think this is fine for this case.

Cheers
Jes



> diff --git a/drivers/staging/rtl8723au/core/rtw_efuse.c b/drivers/staging/rtl8723au/core/rtw_efuse.c
> index a6deddc..29fc25b 100644
> --- a/drivers/staging/rtl8723au/core/rtw_efuse.c
> +++ b/drivers/staging/rtl8723au/core/rtw_efuse.c
> @@ -304,8 +304,7 @@ EFUSE_Read1Byte23a(struct rtw_adapter *Adapter, u16 Address)
>  		}
>  		data = rtl8723au_read8(Adapter, EFUSE_CTRL);
>  		return data;
> -	}
> -	else
> +	} else
>  		return 0xFF;
>  }/* EFUSE_Read1Byte23a */
>  
> 


