X-GM-THRID: 6951097380954439680
X-Received: by 2002:adf:a294:: with SMTP id s20mr28328213wra.54.1618434078406;
        Wed, 14 Apr 2021 14:01:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c1c3:: with SMTP id a3ls1730391wmj.0.gmail; Wed, 14 Apr
 2021 14:01:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwBEgbz/aE1bQNUbHSyaZDGEREcqtCqqhqf8NM3pP4fM1/Ye+C0l7at0Ke8EDSOYI7AMrVU
X-Received: by 2002:a05:600c:410c:: with SMTP id j12mr4681534wmi.112.1618434076889;
        Wed, 14 Apr 2021 14:01:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618434076; cv=none;
        d=google.com; s=arc-20160816;
        b=e0EeBYJzJa3EowhHJ13+BEbkQIX/MOWyeU9ic2+USWifdg5hRa5+qUBUSY7QIQvBo3
         VQ+nxXtBjM/duQ4JS1mo1pEMDnDd8RGMoeE/quu/La+lLGTECafIAwJ3TeY0X8N+pgLS
         mck0pVEa6QI3H8wRK6GJS9PyxVh4psqJiJBfhCMgRI/65t6kuR33dfXq+nmPnpumUHLY
         UUHD9hpt2qzGy6TxSykLyyAh3cztbFf2SLbS3TGupWqP/tPcmkVR2hM7Rw65ZABBRNL4
         Fa6Bv5z0n0+CX4SgKgndADAvGvTNo1NYTtI9S2lkjlYPdzFflAz6ryYiozri9pKmGutP
         AL+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=6s1bOyRihy2sOPvVMW+ex+5icrAdsxpSyaEy1W+ohw8=;
        b=TssmecWJt+ro9dKNUBiig2RN/4XYztazFrMQIVCEin19P1XXgJkZ0VFmk+P5MfbIBM
         83UYDSMLU9yY2HbaE2c+QDL6ESpdnVV3RVpgMKRy//PqcinfWrSqNmE7U6wphzpheFU7
         zzx84G8iZkfmCDOrtln/o5xmG2q1EKgHXrF4lc6XAtU/MDVpoCgx+PQHdRL5zHmg9jDK
         5hHk/W5pOvk5tqECsYCkUo2tGzv9yYOWG0UEpllEB5hg2mKZI6MaAU6/3AlU8R6IehNv
         IrH0TfaOwqX2yIvwNZJXyc2Sz6QUlsN2dsb61Zfc8l3t2ED3/FJkv1DJjG8WoXrPZQEN
         7Y8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a4si41355wrc.0.2021.04.14.14.01.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 14:01:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A91hWm6CpwVf2e03lHejDsseALOonbusQ8zAX?=
 =?us-ascii?q?/mhrQx1UbcCU0+iy9c5rlSPcojAXRX0mhJSkMK6PXXvT+fdOkPcsFJ2lWxTrv3?=
 =?us-ascii?q?btEZF64eLZskLdMgD36+I179YaT4FSBNjxElRggcu/3Q/QKbod6fWd66ayn6Pi?=
 =?us-ascii?q?yR5WPHVXQo566QMRMHf8LmRXQ018CYM9BN6g4KN81kadUFEWdNn+LmIOXujdq7?=
 =?us-ascii?q?Tw5dPbSDsHHQNiyQWKlFqTmfTHOj2ZxApbcz4n+8ZozUHhkxblooO8tP2hoyWs?=
 =?us-ascii?q?mVP7ypRNhZ/ZzMFfbfb8xfQ9DzX3l0KTeI96UaaDtzxdmpDj1H8OkMPQ5ysmJd?=
 =?us-ascii?q?h58XnLfmq4yCGdlzXI9BYLxzvcxUSDgX3lyPaJOQ4SL8Zan4pWfl/4xiMbzalB?=
 =?us-ascii?q?+ZtR02iUupZRBx+oplWLlq71fipnnEa1vnYu+NR75xc0PuV/GdwhyLA3x09bHI?=
 =?us-ascii?q?wNGyj38ukcYY1TJfrR/fNHNW6dBkqpzVVH+tCqU3gpdy32C3QqgNCf0DRdgRlC?=
 =?us-ascii?q?vjsl7fEY901wk64Vd4NJ/KDtPKhuidh1P7UrRJM4K+EbX8OtB2DBBTbBKnibL1?=
 =?us-ascii?q?iiNKxvAQO1l7fHpJAy4vjCQu178LIC3LLbUF1ZsmY2P3/pYPfi4LR7tjbXQGu8?=
 =?us-ascii?q?WjzxysZRo7hB04eMJobDAGm4REgzn8yrr5wkc7jmcsf2B5pSA/LqMGvpHsJDz2?=
 =?us-ascii?q?TFKuhvAEhbb80Ppsx+YViHpcXGJ+TR19DzQbLVIv7kCjwkWnzya0FzFATOGA?=
 =?us-ascii?q?=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.82,223,1613430000"; 
   d="scan'208";a="378682693"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Apr 2021 23:01:16 +0200
Date: Wed, 14 Apr 2021 23:01:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
    Matthew Wilcox <willy@infradead.org>, Julia Lawall <julia.lawall@inria.fr>, 
    Fabio Aiuto <fabioaiuto83@gmail.com>, 
    Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Outreachy patch] [PATCH v3 1/2] staging: rtl8723bs: Remove
 useless led_blink_hdl()
In-Reply-To: <20210414192750.4974-2-fmdefrancesco@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104142300550.33347@hadrien>
References: <20210414192750.4974-1-fmdefrancesco@gmail.com> <20210414192750.4974-2-fmdefrancesco@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 14 Apr 2021, Fabio M. De Francesco wrote:

> Removed useless led_blink_hdl() prototype and definition. In wlancmds[]
> the slot #60 is now set to NULL using the macro GEN_MLME_EXT_HANDLER. This
> change has not unwanted side effects because the code in rtw_cmd.c checks
> if the function pointer is valid before using it.

When you send the series again, you can change not to no in the above.

julia

