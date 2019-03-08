X-GM-THRID: 6666119040327483392
X-Received: by 2002:a1c:358a:: with SMTP id c132mr1460632wma.23.1552078191935;
        Fri, 08 Mar 2019 12:49:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:63d6:: with SMTP id x205ls132284wmb.11.gmail; Fri, 08
 Mar 2019 12:49:51 -0800 (PST)
X-Google-Smtp-Source: APXvYqwqSUF0RWCnRbCR6qFNvbrWLaStUrEYSUDnEOIvzSx4pwjYPi8xGEkK7W9ctwPVo5vG6Gjg
X-Received: by 2002:a1c:a846:: with SMTP id r67mr1612610wme.18.1552078191156;
        Fri, 08 Mar 2019 12:49:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552078191; cv=none;
        d=google.com; s=arc-20160816;
        b=vcZ963VWCwNAIBwVyQcqmpJ5mztOGZHj8VoTGZL5fUVYMEutEstkKGjB+zYy6FMfYK
         pHsyw9kpMkPzfq6jUzrdND3VP8AoYIAQLbThHq29fkoZX8h+WWJKD1EnGA9V5Tr/GuPs
         /tlYK9LFlBO5hUjbFZomkqjjw6MOFSCvgQfWJDGosxz2++l7foz+he83lgE4sHREXkJP
         CIc4IVkubt+JCzmCwiHyGhgN6UgKoROHJ8QPdwIvfw5sNGxO9XwEffaBnnU9J66HZTEE
         XpUqmkiEvsk5eU2/WaPnKHlJxaotfjh4BhoD+bvh+mIqsWPYZG8ra8wDmtkyukWETI2x
         wBoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=S0FM+/MCNpJKbNtjUk8XquHOfyl5wTPwiimaoIg80vc=;
        b=hhab71AejXfWCLOcEBe1hXeXxSdZ6ajeKYZcfv/jUb+7V+lNlDsv32vmnqi3ccvUMz
         u+oXn+dZQVHXBvRlKCVrS0BARq5lTw+xoIdyTWRLcZhE6kWQfRlO4Lm/QhYujo5UzeNP
         OqyPQbGzImlw3p2AutFDVsOo1iS2nVVAooGSwmyNLTCUKqZIw5pRmgbwzVLB38m/nfim
         Iod0E8QPt5lxzRDWRYvJF1PAEHHQJVrgT6T508eaVR6aC+O+DVHaTZk50E0ue5UrlHvC
         SxsOzPiQlQwGaojgrJAe3Zl1BPAXhORbm7yr3cnVtMfZtZ0/Wn5lcNbg0eg+PfYYMBjz
         lQ4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q192si452539wme.3.2019.03.08.12.49.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 12:49:51 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,456,1544482800"; 
   d="scan'208";a="298617609"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2019 21:49:50 +0100
Date: Fri, 8 Mar 2019 21:49:49 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, sudipm.mukherjee@gmail.com, 
    teddy.wang@siliconmotion.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: sm750fb: Edit CamelCase
 variable names
In-Reply-To: <20190308202605.4061-1-nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903082148280.2518@hadrien>
References: <20190308202605.4061-1-nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject lines in these patches are too similar, ie two are the same,
and a third only differs in capitalization.  Either add more to the driver
name part, or merge the all into a single patch.

julia

On Sat, 9 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Edit variable names that were in CamelCase to make code more readable.
> Issue found with Checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 4c1f00f551da..90f5480304f4 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -15,14 +15,14 @@ enum logical_chip_type sm750_get_chip_type(void)
>  	return chip;
>  }
>
> -void sm750_set_chip_type(unsigned short devId, u8 revId)
> +void sm750_set_chip_type(unsigned short dev_id, u8 rev_id)
>  {
> -	if (devId == 0x718) {
> +	if (dev_id == 0x718) {
>  		chip = SM718;
> -	} else if (devId == 0x750) {
> +	} else if (dev_id == 0x750) {
>  		chip = SM750;
>  		/* SM750 and SM750LE are different in their revision ID only. */
> -		if (revId == SM750LE_REVISION_ID) {
> +		if (rev_id == SM750LE_REVISION_ID) {
>  			chip = SM750LE;
>  			pr_info("found sm750le\n");
>  		}
> @@ -321,7 +321,7 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig,
>  	int mini_diff;
>  	unsigned int RN, quo, rem, fl_quo;
>  	unsigned int input, request;
> -	unsigned int tmpClock, ret;
> +	unsigned int tmp_clock, ret;
>  	const int max_OD = 3;
>  	int max_d = 6;
>
> @@ -365,8 +365,8 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig,
>  			if (M < 256 && M > 0) {
>  				unsigned int diff;
>
> -				tmpClock = pll->inputFreq * M / N / X;
> -				diff = abs(tmpClock - request_orig);
> +				tmp_clock = pll->inputFreq * M / N / X;
> +				diff = abs(tmp_clock - request_orig);
>  				if (diff < mini_diff) {
>  					pll->M = M;
>  					pll->N = N;
> @@ -375,7 +375,7 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig,
>  						pll->POD = d - max_OD;
>  					pll->OD = d - pll->POD;
>  					mini_diff = diff;
> -					ret = tmpClock;
> +					ret = tmp_clock;
>  				}
>  			}
>  		}
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190308202605.4061-1-nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

