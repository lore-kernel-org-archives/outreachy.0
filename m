X-GM-THRID: 6949552680450654208
X-Received: by 2002:a1c:6587:: with SMTP id z129mr441384wmb.106.1618326152742;
        Tue, 13 Apr 2021 08:02:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6804:: with SMTP id w4ls3208093wru.2.gmail; Tue, 13 Apr
 2021 08:02:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwjIUwTCvkhYPtxdQxPtuPti9/13PGyU9iwGM39tP3mb07D9JhwjRXWseDdnb13X06cpMkX
X-Received: by 2002:adf:f38e:: with SMTP id m14mr16569075wro.34.1618326150753;
        Tue, 13 Apr 2021 08:02:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618326150; cv=none;
        d=google.com; s=arc-20160816;
        b=QMvYlK8R0xVBqPem219D3eLiGNQ2XM73ybmQPV+bMqRmH9g4ZktsMDU8ojVEgMAVKa
         /fgNTzwCWW2lUMsOJ5OPfTrlNzR8a8KHQB04seK9qrZExg6wiJ2UJhsez8lt78ygQPnO
         RcHa97zbzremsvc16BkhYI6BMVuksFaCmueG9GiBV+BF3n0Wj9MyywNJGCaCrnpDSwgt
         HywMBfkbrZSMgWK/ITGt4WbFnIM0xWyF8n7xeeFkuXPjP0srMc1r15WRgBLBeRlsgM1o
         a2NRd/ty9hu8/OMd/KA7BuBnr9kryph22K50LuW2k2A+99CrNvfJot5MqEX7pcyesjGo
         P5lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=IDKasFqgZQXyRzPPd8mvlQ7HH6pYthpdVRPFi2j8brk=;
        b=VArOuxsL44xAqy+s+g7VI3OTUXK0Q66reNsDp1UQWnqTq1CEl8UqnEJ0kL6Ttlz9ab
         Dj5D3ipUGwgU1Wn8qVnxz6WSYk6EXmJIGYle1GV0br9L2Gg4ySbPrYoLOQJDTQK28JA9
         Fb3lH5OR/muIlsCCz+qMtYVS0lUZdqAQfAbPGm3KlTZcO2rZauI658CmJONhb9RhDswA
         BIqmnLBA70OeIySmL87wJFnTzYrhDnAsqgoBRPd7Z0WkPNsjyHG/YgXtEvETMxJBM2mV
         hwB3frMbgyy1zlRqIdeZLTEKED0EbXObuaeL66F1yfeMPcT1EyLO0jf5v6DJvEoDEMou
         11Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=m+9KtqUr;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.24 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb1-smtp-cloud7.xs4all.net (lb1-smtp-cloud7.xs4all.net. [194.109.24.24])
        by gmr-mx.google.com with ESMTPS id 187si112452wmb.0.2021.04.13.08.02.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:02:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.24 as permitted sender) client-ip=194.109.24.24;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=m+9KtqUr;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.24 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud7.xs4all.net with ESMTPA
	id WKYclFiBNMxedWKYglj7fF; Tue, 13 Apr 2021 17:02:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1618326150; bh=IDKasFqgZQXyRzPPd8mvlQ7HH6pYthpdVRPFi2j8brk=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=m+9KtqUrym5RH2Ct0yC59jWTznQCxXhAcOOb4wusDJbrLjOZ3ROSjr0m16UgfxQgc
	 uu/OoEvPY1oQFvtMM2Tgtco/Pzy/BNWT2YRIb07ZRmKL3itqS2XeZIFGe1zLJVLI0h
	 1cs/BjKYTXitacN/xTf1Qpxse/P/TuaEX0wbHRz1el4JOjtcT3TtDqgOIkkr0jdeWV
	 ibKJN5I49MfmSVf0PVERX4aBxKiB9vRkupEFW7THNRODh6QpQtHOwkz6eWjE+HdF/C
	 m3w23zWzMOK/7iAC1RloSd1SxF9wyskULWJLhffkmshuz4MYLY1YGsCSWBLmkebZsH
	 rraX0L+0fFuJA==
Subject: Re: [PATCH v3 1/2] media: zoran: add spaces around '<<'
To: Mitali Borkar <mitaliborkar810@gmail.com>, clabbe@baylibre.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 mitali_s@me.iitr.ac.in
References: <cover.1618066787.git.mitaliborkar810@gmail.com>
 <8e8ac690d97478f7cbb9b91d46ef7a95e4444e5f.1618066787.git.mitaliborkar810@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <1b70e00e-383f-17c2-231e-e7e8a11acf90@xs4all.nl>
Date: Tue, 13 Apr 2021 17:02:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <8e8ac690d97478f7cbb9b91d46ef7a95e4444e5f.1618066787.git.mitaliborkar810@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfC4JMNIPm95Mxy3A/xjTotsLqMg61nIii6HL9k+S5EOSb+HzHtqjhne4NdDOE/a5W/DF6BC+VczczhAwfGqSSxkkWtJkHmaEXwjTFzOhEKJrwMBR4d8Q
 sLxQSIqPG04BrMLGhdne74i3Q1wpHj4JfVzESgMJs6pCFl2Rk1irChga1WsdyE7QcGTFii+x/f07IKl2Gp1QMkagoC75EmXdRiOsDyRk/kT8KaPvcQQ9YSYt
 jo6SPSBOUOYaiTxImTTmpDNkD/Q/2mKWEucQ7kuWpZM34un6e/lUTNw5s/949xvb2sWQ9W4ogyV2cI9pW/HvN7lZ3Vfl/521GtFVQ4BwFn95SXp/1wf4gLRG
 Dk/dK0+ukXb4TQ0dSOwEcWXE8tqizZslmeMDGSZejeWcKIbzzRlp365Z5nrzYmdq1spFloQPi16ENVgotCxb9ikWlE0dBb5cOtTieTXQPAX1HaSJwMJz+5sf
 iUe+ueM605rGxBDwWxnQhK5DScauorQmiYGbaw==

Missing commit message.

You used to have one in v1 of this patch!

Regards,

	Hans

On 10/04/2021 17:33, Mitali Borkar wrote:
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
> Changes from v2:- No changes. 
> Changes from v1:- NO changes.
> 
>  drivers/staging/media/zoran/zr36057.h | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
> index 71b651add35a..a2a75fd9f535 100644
> --- a/drivers/staging/media/zoran/zr36057.h
> +++ b/drivers/staging/media/zoran/zr36057.h
> @@ -30,13 +30,13 @@
>  #define ZR36057_VFESPFR_HOR_DCM          14
>  #define ZR36057_VFESPFR_VER_DCM          8
>  #define ZR36057_VFESPFR_DISP_MODE        6
> -#define ZR36057_VFESPFR_YUV422          (0<<3)
> -#define ZR36057_VFESPFR_RGB888          (1<<3)
> -#define ZR36057_VFESPFR_RGB565          (2<<3)
> -#define ZR36057_VFESPFR_RGB555          (3<<3)
> -#define ZR36057_VFESPFR_ERR_DIF          (1<<2)
> -#define ZR36057_VFESPFR_PACK24          (1<<1)
> -#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1<<0)
> +#define ZR36057_VFESPFR_YUV422          (0 << 3)
> +#define ZR36057_VFESPFR_RGB888          (1 << 3)
> +#define ZR36057_VFESPFR_RGB565          (2 << 3)
> +#define ZR36057_VFESPFR_RGB555          (3 << 3)
> +#define ZR36057_VFESPFR_ERR_DIF          (1 << 2)
> +#define ZR36057_VFESPFR_PACK24          (1 << 1)
> +#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1 << 0)
>  
>  #define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
>  
> 


