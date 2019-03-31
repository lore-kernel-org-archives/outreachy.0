X-GM-THRID: 6674542859228545024
X-Received: by 2002:a05:600c:c1:: with SMTP id u1mr964556wmm.2.1554039044134;
        Sun, 31 Mar 2019 06:30:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:495:: with SMTP id 143ls949031wme.10.canary-gmail; Sun,
 31 Mar 2019 06:30:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw0HjnrMHnG6yPJvNkHh4RCpbIBxUsLl+RMz6NWnWRVFleb9E+VFUWof/Nrlcnl6OVIQ2GW
X-Received: by 2002:a1c:2d4c:: with SMTP id t73mr830887wmt.21.1554039043357;
        Sun, 31 Mar 2019 06:30:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554039043; cv=none;
        d=google.com; s=arc-20160816;
        b=TxR125V0wHq49XJs3TbGtLY9wepK7RQ8kIpLbnBlG2wmHEIKmbl+fh2oGBt6v2Qk5l
         yZI7l7iMRIg2BUNhG8U8rxy6ZX7VTgKhrgB13iBYy+Srob2i5/kYgjI8ZvBamw7NchhH
         yQSUvgCAz6zGRzELssNd5GYoL+AbadbSpJj0NmjNgadD0hN/TpQ9mmilrE5fQMxetZU+
         Z1YRB7QaQzlh66YH1AGAorzWUDkflWAOucxhwlE9AhQ5nr5hpneKLe+U+ge3mPwWR1pZ
         6l556LUKD57XPPeHDcXS8qk+h7u/fivGWp5DShtJ4jjG2P4Z6o4TwtCaQDlcCEhPCiPw
         cKaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=70/GyAeM7ZxhVPB7pDC0g85Ln9cSRueCqT79uhOT0Mc=;
        b=WpwY2cOEZKLS7BRPRz2mfXu0GesO01UOWihSjCFzB7ndrCyL6ZmSl9f/bpUEQmD2ld
         SHDasbTdyL3CXKDsDOmMUZFaJXzE1dLpCCgtIt3vhykvxjoqTBHkG/nWH0iVolaMOf0D
         ETc20+RR9/lL4hn2ea57YU7rrZv69QWyvwqI2U0J8S/R4qhz87fPyk92IL+UYY40Rcab
         OuwF63RFSvvjfa8F07153I1rJ6A8g3h4KhFTvrOVTgH7NhyuwwGYe9QovGJSAsokB7zx
         vLPiESD/NluM3oDBzrUO3Ynl2fj4oCmCDCG9/WFVj7qsXGWASftunSH3Dr1FWBgm8BQQ
         Ymmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a9si372708wrp.5.2019.03.31.06.30.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 06:30:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,292,1549926000"; 
   d="scan'208";a="301295391"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2019 15:30:42 +0200
Date: Sun, 31 Mar 2019 15:30:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/7] staging: rtlwifi: phydm: phydm.c:
 Compress two lines into one line
In-Reply-To: <55923ff0f300b54cba51dbb2662efd80c4d882d4.1554037161.git.payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903311530210.2578@hadrien>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com> <55923ff0f300b54cba51dbb2662efd80c4d882d4.1554037161.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 31 Mar 2019, Payal Kshirsagar wrote:

> Challenge suggested by coccinelle.
> Compresses two lines into one line and remove unnecessary variables.
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtlwifi/phydm/phydm.c | 16 ++++------------
>  1 file changed, 4 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/phydm/phydm.c b/drivers/staging/rtlwifi/phydm/phydm.c
> index 473eeb6..09dbb96 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm.c
> @@ -49,7 +49,7 @@ static void odm_update_power_training_state(struct phy_dm_struct *dm);
>  /*Y = 10*log(X)*/
>  s32 odm_pwdb_conversion(s32 X, u32 total_bit, u32 decimal_bit)
>  {
> -	s32 Y, integer = 0, decimal = 0;
> +	s32 integer = 0, decimal = 0;
>  	u32 i;
>
>  	if (X == 0)
> @@ -66,9 +66,7 @@ s32 odm_pwdb_conversion(s32 X, u32 total_bit, u32 decimal_bit)
>  		}
>  	}
>
> -	Y = 3 * (integer - decimal_bit) + decimal; /* 10*log(x)=3*log2(x), */
> -
> -	return Y;
> +	return 3 * (integer - decimal_bit) + decimal; /* 10*log(x)=3*log2(x), */;

Maybe this one would be better left as is, to keep the concepts of X and
Y.

julia

>  }
>
>  s32 odm_sign_conversion(s32 value, u32 total_bit)
> @@ -1240,7 +1238,6 @@ u32 odm_convert_to_db(u32 value)
>  {
>  	u8 i;
>  	u8 j;
> -	u32 dB;
>
>  	value = value & 0xFFFF;
>
> @@ -1257,16 +1254,13 @@ u32 odm_convert_to_db(u32 value)
>  			break;
>  	}
>
> -	dB = (i << 3) + j + 1;
> -
> -	return dB;
> +	return (i << 3) + j + 1;
>  }
>
>  u32 odm_convert_to_linear(u32 value)
>  {
>  	u8 i;
>  	u8 j;
> -	u32 linear;
>
>  	/* 1dB~96dB */
>
> @@ -1275,9 +1269,7 @@ u32 odm_convert_to_linear(u32 value)
>  	i = (u8)((value - 1) >> 3);
>  	j = (u8)(value - 1) - (i << 3);
>
> -	linear = db_invert_table[i][j];
> -
> -	return linear;
> +	return db_invert_table[i][j];
>  }
>
>  /*
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/55923ff0f300b54cba51dbb2662efd80c4d882d4.1554037161.git.payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

