X-GM-THRID: 6615030775466164224
X-Received: by 2002:a1c:d8a:: with SMTP id 132-v6mr1368312wmn.21.1540192091979;
        Mon, 22 Oct 2018 00:08:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f8c3:: with SMTP id f3-v6ls5462167wrq.3.gmail; Mon, 22
 Oct 2018 00:08:11 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61kcN53no6Y6Yi7MhAIqN58Epog4mBnzxAcYhVN3DeYnLM2xpjkmmTondChzUSOhUyddevJ
X-Received: by 2002:adf:f989:: with SMTP id f9-v6mr4148580wrr.0.1540192091271;
        Mon, 22 Oct 2018 00:08:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540192091; cv=none;
        d=google.com; s=arc-20160816;
        b=vb0FCjy2eUrE3s83J/tAdGrnpYxnmZLd5QkZtt5OL2Nrm/6Bn31RA1tv2h8OJ1eq7s
         VYzXcQ1kBZz0EoNURP3hlTLjp3Td5AbmsWrZMBIUuuZiu4aFmnbzjv+pnlzIkE35VyKY
         FgflwoRgfFrw2TR4dorpZLfiO1Yq0iNC/MkF4fWe+v+qQjTcStH2Aie/cFhRQ5N4AmOS
         1lYPY7Uh6DaGlXoGyzVZZbLLmvBchvLHjituXxW2yHR7Kjwl40tGgHMK6kEMuDe3RzD+
         9+juA9rgyd8gJfHHO6h+SUvJNMurHgKHU3MeHrBHnw+TpJaV2ycnubArmYIGqqUYi6UF
         ncHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=k/EPNQg5X1fLI4bFsaNXWZ8GAbMlWYeHltx/Jo7U8JM=;
        b=WEusuFdAJ6f3ZA8+g91oHjfz4+TgbYKmOQLp8ApwWjjjuGSEt53YjInGli+eV1xaf4
         nervhIXijkUv3ilFDhmvm+hP9Vwa8u9M8kOF6mLANydeYTHs/gHAICNisa4wUNAVEcKw
         vnChDtWVOAZP5TbA7OxdUKGC52N7LrWv6ESG+JArro3oiNNo5NzB5lv6DQ8+QCRRD9TJ
         vjbT8ifEcKTkd7rt9iZf2AogbDucuhkNfVOXC8Ih9icbo2jHCjyedOcfIUpCvTnYQelq
         dwh3RxXIEBq2cMur1JAiPKUs6+Z0JzFExM7TU6gN/nXaKOtc9EO6s8mbe4CWBw8XT/wA
         RL/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v6-v6si1161728wrn.0.2018.10.22.00.08.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 00:08:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,411,1534802400"; 
   d="scan'208";a="352163551"
Received: from 30.9-255-62.static.virginmediabusiness.co.uk (HELO [172.16.7.66]) ([62.255.9.30])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Oct 2018 09:08:10 +0200
Date: Mon, 22 Oct 2018 08:08:10 +0100 (BST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Maya Nakamura <m.maya.nakamura@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: Remove unnecessary
 variable
In-Reply-To: <20181022041747.GA2618@k-vBox>
Message-ID: <alpine.DEB.2.21.1810220805200.2325@hadrien>
References: <20181022041747.GA2618@k-vBox>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 21 Oct 2018, Maya Nakamura wrote:

> Remove an unnecessary variable that is declared and assigned a value only
> to return it. Issue found by Coccinelle's semantic patch results for
> returnvar.cocci.

Just looking around in this code, just above there is a function with
double { { } } that could be cleaned up.

Looking further, in phydm_process_rssi_ofdm there appear to be variables
with parentheses around them.  Maybe you can look around in this file for
other things to clean up.

The following does not look so good either:

	if (entry->rssi_stat.ofdm_pkt ==
	    64) { /* speed up when all packets are OFDM*/

julia

>
> Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> ---
>  drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> index 90a41c64c0c2..fdc9af56e9d7 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> @@ -491,8 +491,7 @@ static u8 odm_sq_process_patch_rt_cid_819x_lenovo(struct phy_dm_struct *dm,
>  						  u8 is_cck_rate, u8 pwdb_all,
>  						  u8 path, u8 RSSI)
>  {
> -	u8 sq = 0;
> -	return sq;
> +	return 0;
>  }
>
>  static u8 odm_evm_db_to_percentage(s8 value)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181022041747.GA2618%40k-vBox.
> For more options, visit https://groups.google.com/d/optout.
>

