X-GM-THRID: 6329788419736076288
X-Received: by 10.46.0.14 with SMTP id 14mr3559609lja.8.1473768977802;
        Tue, 13 Sep 2016 05:16:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.166 with SMTP id f38ls50791lji.31.gmail; Tue, 13 Sep 2016
 05:16:17 -0700 (PDT)
X-Received: by 10.46.33.96 with SMTP id h93mr3557952ljh.4.1473768977239;
        Tue, 13 Sep 2016 05:16:17 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id y7si1508307wmd.0.2016.09.13.05.16.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 05:16:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id s29so7078249lfg.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 05:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=qkjKjMGxH4BVHt81RUE6wsyLqRwAZmJ4CMdGa7dkRpU=;
        b=bmBJzig1Bhsdl1FT2T9T5MGmb66y8/3jO68c+j7XkcwXl7eoX6Z/4aEMqKsUL2XlXc
         Z+IqobKttULxaqswcI50/BJnWJrUc/U6/01ajMr6euGoC0cO2PqBlLNds+DXHxd92PiD
         n1Avzy6X0FLdw24xdTQ9uRYt8FYFiRz+oq7MmJtGwucY3yRuuKLMOmYGQwGA6FDbtGRX
         SR5Yu0yOA0P3Vk/oHRipjtwC8XSdvFyUfMiH98KTZzOtzEx4bXCBg7zU/gRkDWhIqlK+
         yAAbTyQj6sklUHPU6tiA4iMLUMUvsanDMdTNG9KQqg6wK3Y3zGui0TNgPjOweRIJF+AA
         s9Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=qkjKjMGxH4BVHt81RUE6wsyLqRwAZmJ4CMdGa7dkRpU=;
        b=GJe38TzFocL/450++uxRCso6GY0E55B5NcjesbZz34MkgZZtKBMwKz9Vll5BeE+cpr
         xEUxXDTtRiy8PXPomt2xUZwfzVsKvkEloHrVuELBgccVlY9Rhem/Y2yLBJPMHjAN+jhD
         eqB2grPz1KjPafx4BrHpVOFbVPOfpOsm8aeWK2lbMQmrM7sBOGGB+T9RG31lOuDNl2+8
         6WCOiOEIOwzn0Nn+l5hbD+Vf//UDIsQaK8wNs84/QDhioHcE5pMSsw5QkIENv2pOEoGd
         /JkTv36ltCW8uYu2YGvPOqHdvejZIBIikOoDxZDMvccSqSBDquAYRQJvazzXzayF0PH8
         /L6A==
X-Gm-Message-State: AE9vXwOs/2tF02+Wyo3KtLRi90IPPR0jcVu/A/cQy7WjQ2e14o7DP3a0ECSkL6/vR5CancjMnKVHfpz698C+Ug==
X-Received: by 10.25.147.193 with SMTP id v184mr7986857lfd.43.1473768976571;
 Tue, 13 Sep 2016 05:16:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Tue, 13 Sep 2016 05:16:15 -0700 (PDT)
In-Reply-To: <1473768686-2025-1-git-send-email-bhumirks@gmail.com>
References: <1473768686-2025-1-git-send-email-bhumirks@gmail.com>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Tue, 13 Sep 2016 17:46:15 +0530
Message-ID: <CAOH+1jExFn-UUq3xudSiwdm=Rm4PP5oa19w675Dx8dMB3+VCoQ@mail.gmail.com>
Subject: Re: [PATCH] Staging: wilc1000: Remove struct typedef
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com, 
	ganesh.krishna@microchip.com, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Cc: Bhumika Goyal <bhumirks@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 13, 2016 at 5:41 PM, Bhumika Goyal <bhumirks@gmail.com> wrote:
> Remove typedef from structure tstrRSSI as using typedef for
> structures is not preferred.
> Found using coccinelle:
>
> @r1@
> type T;
> @@
>
> typedef struct { ... } T;
>
> @script:python c1@
> T2;
> T << r1.T;
> @@
> if T[-2:] =="_t":
>   coccinelle.T2 = T[:-2];
>   print T
> else:
>   coccinelle.T2=T;
>
> @r2@
> type r1.T;
> identifier c1.T2;
> @@
> -typedef
> struct
> + T2
> { ... }
> -T
> ;
>
> @r3@
> type r1.T;
> identifier c1.T2;
> @@
> - T
> + struct T2
>

I would like to add a note here: The above script also removes '_t'
from typedefs if any occurrence found.
Also, for running the script I used --all-includes for getting
information from header files as structure definition and its object
declaration  might be in different files.
So this option removes typedefs from both places.

> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index 076e06a..cff1698 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -70,11 +70,11 @@ enum connect_status {
>         CONNECT_STS_FORCE_16_BIT = 0xFFFF
>  };
>
> -typedef struct {
> +struct tstrRSSI {
>         u8 u8Full;
>         u8 u8Index;
>         s8 as8RSSI[NUM_RSSI];
> -} tstrRSSI;
> +};
>
>  struct network_info {
>         s8 rssi;
> @@ -93,7 +93,7 @@ struct network_info {
>         u8 *ies;
>         u16 ies_len;
>         void *join_params;
> -       tstrRSSI str_rssi;
> +       struct tstrRSSI str_rssi;
>         u64 tsf_hi;
>  };
>
> --
> 1.9.1
>

