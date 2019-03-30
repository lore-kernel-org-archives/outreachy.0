X-GM-THRID: 6674202395831959552
X-Received: by 2002:a1c:2e58:: with SMTP id u85mr699893wmu.25.1553963887319;
        Sat, 30 Mar 2019 09:38:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:55c5:: with SMTP id j188ls731427wmb.13.canary-gmail;
 Sat, 30 Mar 2019 09:38:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqym1vPFyE2LKrZs5QOgsK6tIxvnGZn+EEYHSmYI0P+WirSq6tS+YTgVya7ppjbS+SM659UQ
X-Received: by 2002:a1c:f514:: with SMTP id t20mr149034wmh.18.1553963886538;
        Sat, 30 Mar 2019 09:38:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553963886; cv=none;
        d=google.com; s=arc-20160816;
        b=gQAXYxQKkK5Hey+pz6c339j2x+qZSkeHVRxWrtmyjcrN3ZJB1Hov9r1Y+nHSsinvBZ
         8F1h7yGMCCLfuW9W/VGVoPlomWmbgs1bpoUFWiqNth2gWMlOy1XmB/WFIYRsqr2i6vt0
         5AZ8tDPpQmtz2AdCdPu5jTinCOVnJiPcf21GQXh4lhWODMhDNKyYScLTcgA+xor56foF
         l7SalhdVoWAz1llu1vTW3rWQ6AlMj6j2uKXXFdmeENU6m53qzxnfufAg3Jt0v43LWLle
         /WOkDio8BYCQNg4IJQIMV//5B6tBKWJumQHaJnq+XVGRSOKuEBQvm2Dqat3plq4ox+X+
         LDow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=9m1zlzg8xgchaQXx9fnzyXXdp+EVw5EsaOIgFd4Rs90=;
        b=OBglBBTmtZMc+9MzS2mep5R5yb/ss0yIwCMo+N0awJHX66Vhfm9v4HH+bCvAAwimRr
         baQ+5DWfqcfCUeb7i4WAtNcNwbpsHnu+GVNmth/hJf7e8p0nZBfQ9w6a8WlL5k4AwhEn
         Kx5PKEEayDIGuezzL3QdpB2M2bBXKs8ad12miSTbE8qxbV3Hc701PHqCGu5PGPAJf8ZN
         EqvYUl1zIm47dZERaiZX+X0iUKQozENYlNlOVbF2Nth6PkxZRYuSekcXbwx2++WaPIXL
         DXuFYHLpEkvtX/noKYcsZ/t0XVPw9JSjU+XuhBf+O/doq735mcK//O7XPR2MY8ToK2p5
         9VWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s8si273786wme.0.2019.03.30.09.38.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 09:38:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,289,1549926000"; 
   d="scan'208";a="376471197"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2019 17:38:06 +0100
Date: Sat, 30 Mar 2019 17:38:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] staging: rtlwifi: phydm: Remove
 parentheses
In-Reply-To: <20190330163603.2532-1-nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903301737500.2608@hadrien>
References: <20190330163603.2532-1-nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Remove parentheses on right hand side of expression. Issue found with
> Coccinelle.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
> Changes in v4:
> - Split the patch into two patches.

If it is split, the subject line should indicate a series.

julia

>
>  drivers/staging/rtlwifi/phydm/phydm_debug.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> index 91f2c054d83b..a113e2b63153 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> @@ -51,20 +51,20 @@ static inline void phydm_check_dmval_txagc(struct phy_dm_struct *dm, u32 used,
>  				      (power_index << 16) | (power_index << 8) |
>  				      (power_index);
>  			for (i = 0; i < ODM_RATEVHTSS2MCS9; i += 4)
> -				status = (status &
> +				status = status &
>  					  phydm_api_set_txagc(
>  						  dm, power_index,
>  						  (enum odm_rf_radio_path)
>  							  dm_value[1],
> -						  i, false));
> +						  i, false);
>  		} else if (dm->support_ic_type & ODM_RTL8197F) {
>  			for (i = 0; i <= ODM_RATEMCS15; i++)
> -				status = (status &
> -					  phydm_api_set_txagc(
> +				status = status &
> +					 phydm_api_set_txagc(
>  						  dm, power_index,
>  						  (enum odm_rf_radio_path)
>  							  dm_value[1],
> -						  i, false));
> +						  i, false);
>  		}
>
>  		if (status)
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190330163603.2532-1-nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

