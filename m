X-GM-THRID: 7018941118564794368
X-Received: by 2002:a1c:7212:: with SMTP id n18mr21191895wmc.87.1634233535471;
        Thu, 14 Oct 2021 10:45:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:8b92:: with SMTP id o18ls4171730wra.0.gmail; Thu, 14 Oct
 2021 10:45:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzycSMBgtAgNCDYaUYNXubhVOvT7oG48cRjo4ptHMC+TaX7S1/q/XW1CmjNBSExPrHAXzdo
X-Received: by 2002:a5d:6e8d:: with SMTP id k13mr8464131wrz.295.1634233534002;
        Thu, 14 Oct 2021 10:45:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634233534; cv=none;
        d=google.com; s=arc-20160816;
        b=i2G6l3u35o340//Xw4gsaJoa5Mowt404qcrFP9eMv0FpnSPDo88e8EUVvLMGnTvjXs
         hEBCPoJq9lctS7Ir2UbyW8lPsgCvD3qrXCzNrPii5JKMaXewB+2RDoCrqwe5xqcJwCBc
         HOh1ee9gyjTRWpF6qDsDJB4EAm8BHQ6dPXb+Zh4fGnek2DAngc4pYWe5FcPITMy632Rn
         QXlUbvgJI2OpgicMc/93b8BkvuD5vh7LL9nT4AWkzKp/9IV+4AR+yCiSD+Z9i3EVtE8A
         PLlhpadOJLRfX9UzEBZrfD8ElfFyyWEbqpo82kihqOXzFz3fz8zBl7I5uk4RczSswUrN
         CA4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=s0eXMFrHX9GW+3TO28xLIfhrusJlXUMZDDqTGh80YbQ=;
        b=pTh72aJB7+/dJatXGaNno3ibZfciEd0vTgIUmJ3i7ZYdOGfsCMsGh/VPdVjqu/AIz5
         dGEy3hgYhF/DcLWUKw5LH6WUABC3r1dbNV6MHrLUGYI+TZl09Pwvq4BuO72sTbK+Ghp1
         9edr8LANxybRZ/yWgcE4H6fZrqYFg0tBwVx/domm4Y5OlQuLQgYQrAmQ6cVK8FgknL38
         umtkwKfjO7bu0kcJZnHf9TKZWYzBEnaIVjSuiceiKHCFdtZ3bRB1avIQe64kxt7E2BaN
         hc8BPQKyNg2Vdz+bm2EghdwSmTCdCOZDbuJlr4g+XWf7ThOcqaAA1lDc33ZxCHlM2v6a
         iGrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=dNDN9MT2;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com. [2a00:1450:4864:20::330])
        by gmr-mx.google.com with ESMTPS id f9si868630wmg.2.2021.10.14.10.45.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Oct 2021 10:45:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) client-ip=2a00:1450:4864:20::330;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=dNDN9MT2;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x330.google.com with SMTP id g193-20020a1c20ca000000b0030d55f1d984so163462wmg.3
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Oct 2021 10:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=s0eXMFrHX9GW+3TO28xLIfhrusJlXUMZDDqTGh80YbQ=;
        b=dNDN9MT2u1Bux5Vn+DuDG4HAHqwQm9XwQDfbfo8xzVzCLMGn4i+Az8qUi2NPburc6d
         sgigRrXcD/+Tgsqhnq/1WXog/iEDFaq+toKBL4lpcMIDg+bSAlxuzyFaO6X+x3hTZx3O
         diyQKleM5cEK6qvtoWBQRnlMW8mZaIPhJ4QEDcUqYopjvcmTTBzmb1d3d/JlI5hD1MyJ
         36cu3thLWs7x+ND2DW69wnJkcb6oNTrpxaPEkLNuz14IOUT6C36VsfA+6yN4jaEvduDB
         i4GAxcIva+dK/rExoGxsZnHfBoZx0bybkMkacOXX1c39MjOyNB/7oDVa9Ml2ksgZQJsc
         s6Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=s0eXMFrHX9GW+3TO28xLIfhrusJlXUMZDDqTGh80YbQ=;
        b=dO55ltK2lAQyZ2mEM9us4js+5zngju6SHIlCNaKGYLgtoLs33l2oLayNMgvUw2ge5d
         YPTBZqoMINueQc94vtat/kaJf5vTherscTcr1T/OE3HF0vQL8O/XUAe/A93Sph14xC5F
         SnSl9ZXzMkNBC/YybKx1aNjgD4TTM15xjKosJhMsO0r+WyNyEIMUr6GLczmw3utnA2Gv
         Jg5et+DMPCgV+rPLPysGzDns6zz8fdtLMw9o0a+E+gorGhBsidu1u7A8UJA5oor0bJ/2
         gInyBVj4joMQqxKIS8Js7RoL9Ot8uos4Q66tW/eXO+ENBdKInIBRgQVwzsJPC0uWQtnc
         vcOA==
X-Gm-Message-State: AOAM5310sfxGSNwWkv6QMXKOW8C5L5pZMqUvlADW6gzcMKZf8xTEdys+
	ob+bpligRECB2wjh3XhyWW8=
X-Received: by 2002:a1c:f310:: with SMTP id q16mr21651005wmq.145.1634233533738;
        Thu, 14 Oct 2021 10:45:33 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id r4sm4059764wrz.58.2021.10.14.10.45.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 10:45:33 -0700 (PDT)
Message-ID: <08596422a73e37833b431fd5b922e7a02f6e4c0e.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Rename
 byPreambleType field
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
	forest@alittletooquiet.net
Date: Thu, 14 Oct 2021 18:45:31 +0100
In-Reply-To: <alpine.DEB.2.22.394.2110141724560.3289@hadrien>
References: <20211014151543.46764-1-karolinadrobnik@gmail.com>
	 <alpine.DEB.2.22.394.2110141724560.3289@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Hi,

On Thu, 2021-10-14 at 17:26 +0200, Julia Lawall wrote:
> On Thu, 14 Oct 2021, Karolina Drobnik wrote:
>
> > Drop Hungarian notation prefix in `byPreambleType` member of
> > struct vnt_private. Change it to use snake case.
>
> Are you sure that it is an instance of Hungarian notation?  Could it
> be that "by" is meant to be the word "by"?

I saw that functions and parameters use it[1] so I deduced that "by"
might stand for byte. If this is not a case, I can revert that change
and leave `by_preamble_type` name. What do you think?

> I have the imrepssion from a
> quick look through the code that it should be a boolean. 

Hmm, it really looks like it. In `vnt_bss_info_changed` definition we
use true/false values but in `bb_get_frame_time` we have such a line:

```
if (byPreambleType == 1)     /* Short */
```

I'm not quite sure to what this "short" might refer to.

> Maybe it  would be helpful to give it boolean value, 
> eg true instead of 1.

This is a good idea but I'm not sure if it's only used as a boolean. 
I could add this change but I'd like to test it more than just by
loading/unloading the module. Is there any way of testing drivers
without an actual hardware?


Thanks,
Karolina

----------------------------------------
[1] - For example in rxtx.c, lines 154-161:
```
static
unsigned int
s_uGetTxRsvTime(                     /* s - static, u - unsigned */
        struct vnt_private *pDevice, /* p - pointer */
        unsigned char byPktType,     /* by - byte */
        unsigned int cbFrameLength,  /* not sure */
        unsigned short wRate,        /* w - word */
        bool bNeedAck                /* b - boolean */
)
```


