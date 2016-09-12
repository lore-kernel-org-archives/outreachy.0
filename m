X-GM-THRID: 6329444787310034944
X-Received: by 10.67.6.5 with SMTP id cq5mr16219367pad.5.1473691456816;
        Mon, 12 Sep 2016 07:44:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.17 with SMTP id e17ls3170186ite.21.canary; Mon, 12 Sep
 2016 07:44:15 -0700 (PDT)
X-Received: by 10.66.8.66 with SMTP id p2mr2779711paa.11.1473691455032;
        Mon, 12 Sep 2016 07:44:15 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-yb0-x241.google.com (mail-yb0-x241.google.com. [2607:f8b0:4002:c09::241])
        by gmr-mx.google.com with ESMTPS id c75si990283ywh.0.2016.09.12.07.44.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 07:44:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:4002:c09::241 as permitted sender) client-ip=2607:f8b0:4002:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:4002:c09::241 as permitted sender) smtp.mailfrom=jes.sorensen@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x241.google.com with SMTP id u125so2973994ybg.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 07:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=vErcTOwKpo8GK6Nv92cBIQr6DO1mLIF/T8i2wytwuRQ=;
        b=bbGpNe0bDvjBRFpIV9e9L7DMPicSF557T8Sb6/S3Oji1zD1UakmSfd75lJaoYDKbqC
         WLQJiYEHcNcKZxyJonbVg6+u9y+foEGc46qGp4dHRFyrQiKYe5TZ8sFa0mIypY6twbW6
         nzygjvKhl4EkGH8ek8wsNwdagSFmZgDsWaBa2ycHCcrqTk6O6wJ59ZInRZ1ilYnf4s7g
         hEkY0yRu+vLG/EpufeJajfZWnI2+OVvRLbiszXv0D/CLmlZwcBsxxgdwiRYjbLdc9OvH
         HmeACCgG0CJfMxYuywqZ62laC/T89XlESWk8j8b6hWr4eDkCScTDzjwQsyRBsaKnn1e+
         tOoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=vErcTOwKpo8GK6Nv92cBIQr6DO1mLIF/T8i2wytwuRQ=;
        b=E0BFsL6MpvgkVOowocAZcwwRFKgZN1RSQgL08vAcC33GqT4m55J8gMaU7hj+zctOkb
         tiKC6jubglzWkfoNFZliH5R2JscJs+k+F+y3+KfJjGW40QcBVVpPD+h9KVhVma8oVGBZ
         gzEgm1gLeKukFfU6OINr0TO9GxKivEVjYBYu1fjjSOo105DVR9cVF8v1eMQA+e13M+ZG
         GbVZfprdjzWDKKoHcDhGDnzmOls9PxiAZJdqnyzdgnhfisGsRVBrnUvdIpbPKs0z0778
         hkuhZIiU/93U2E+p4ntKxA1dRObFh0xvY7a2hvKe1Gh+tylhvamn9Vc9XoeypzP66BM4
         MaIQ==
X-Gm-Message-State: AE9vXwP+5LduC2JRU1md75WBw8n/89eFg5alksyv4R4tE84vmeU/bOjL47yY2/r2t5ewQQ==
X-Received: by 10.37.160.99 with SMTP id x90mr17849977ybh.130.1473691454780;
        Mon, 12 Sep 2016 07:44:14 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from ?IPv6:2604:2000:1281:a0:250:b6ff:fec0:39f5? ([2604:2000:1281:a0:250:b6ff:fec0:39f5])
        by smtp.gmail.com with ESMTPSA id i9sm6781691ywc.5.2016.09.12.07.44.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 07:44:14 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove ternary
 operator
To: Bhumika Goyal <bhumirks@gmail.com>, outreachy-kernel@googlegroups.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <1473688681-14479-1-git-send-email-bhumirks@gmail.com>
Message-ID: <32230433-289b-b787-9a7a-9a897bf2f93c@gmail.com>
Date: Mon, 12 Sep 2016 10:44:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <1473688681-14479-1-git-send-email-bhumirks@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 09/12/16 09:58, Bhumika Goyal wrote:
> Relational and logical operators evaluate to either true or false.
> Explicit conversion is not needed so remove the ternary operator.
> Done using coccinelle:
> 
> @r@
> expression A,B;
> symbol true,false;
> binary operator b = {==,!=,&&,||,>=,<=,>,<};
> @@
> - (A b B) ? true : false
> + A b B
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 8 ++++----
>  drivers/staging/rtl8188eu/hal/phy.c           | 2 +-
>  drivers/staging/rtl8188eu/hal/rtl8188e_dm.c   | 3 ++-
>  3 files changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> index 9544e55..b43f57be 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> @@ -705,7 +705,7 @@ static int issue_probereq_ex(struct adapter *padapter,
>  	unsigned long start = jiffies;
>  
>  	do {
> -		ret = issue_probereq(padapter, pssid, da, wait_ms > 0 ? true : false);
> +		ret = issue_probereq(padapter, pssid, da, wait_ms > 0);
>  
>  		i++;
>  
> @@ -1293,7 +1293,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
>  		da = pnetwork->MacAddress;
>  
>  	do {
> -		ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0 ? true : false);
> +		ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0);
>  
>  		i++;
>  
> @@ -1420,7 +1420,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
>  		da = pnetwork->MacAddress;
>  
>  	do {
> -		ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0 ? true : false);
> +		ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0);
>  
>  		i++;
>  
> @@ -1527,7 +1527,7 @@ static int issue_deauth_ex(struct adapter *padapter, u8 *da,
>  	unsigned long start = jiffies;
>  
>  	do {
> -		ret = _issue_deauth(padapter, da, reason, wait_ms > 0 ? true : false);
> +		ret = _issue_deauth(padapter, da, reason, wait_ms > 0);
>  
>  		i++;

While this part of the patch is technically correct, I would argue it
doesn't improve the code. It would make the code more readable to pass
in the wait_ms value and then have the decision made based on that in
the called function.

Cheers,
Jes


