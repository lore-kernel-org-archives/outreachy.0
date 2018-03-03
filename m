X-GM-THRID: 6528797740675104768
X-Received: by 10.46.17.17 with SMTP id f17mr659856lje.29.1520105423171;
        Sat, 03 Mar 2018 11:30:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.72.82 with SMTP id v79ls1365955lfa.11.gmail; Sat, 03 Mar
 2018 11:30:20 -0800 (PST)
X-Google-Smtp-Source: AG47ELvMqtHNFR/OFlbww1HI9SuJ6LnD1ImT/SCt51gAEjZtItJWPNtDgQHshy6gEMReWRLqPbNG
X-Received: by 10.25.157.141 with SMTP id g135mr753785lfe.36.1520105420879;
        Sat, 03 Mar 2018 11:30:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520105420; cv=none;
        d=google.com; s=arc-20160816;
        b=XKMQFPkQGFgjCHKlpasvT9CFFi36c23vkhGtqhWGVEEQCDDCUWBJmrK5XgTVWy46t7
         sYB4hdxH8WXHhzilWrg53FRYyR0rRp6SDTdsQ9dp/8xyOHjIxAOq7+TCNTzyCMj8dx66
         lYRg6oe0PQfGFlRKj+YJzThEME42A6NHr7ghFwQx8Wq8uIJkKgs1En8eXSTYxT0zz82m
         4KDjyH5fa3fEg7EqEzh3sm3Lkb7nZbN/Wzw7Eq/+A5JO6uglO+zM3DoTOgBFrOpahXD5
         /DbYMz4IOBJBP92fwVpx0XZ5a4KER/eS8lJbrcfc5mlSS8/Eo4s6bqxNQwBw+Rhfw6yY
         9FtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=xAKOFJb3UCHqSkUxT6ctwp3EpXozvdmMERv12bvWtRY=;
        b=eklqsf2uYIV+qGY98LLVefKd30l4ndd8Pg3/KcWYBkGzcgnLzc2+PjCV4mbDbFaEfG
         Pq/NT7uFMb1tqMy1Mbf+1eMZpT3iIerWw/7646HFUWRlgypciuDLz2MaFBXgXVgFOgg8
         c5Al9ElURKO6dvOu7YfdqTWeMvo7Q4oVnbsm5iAGq3Q5uEV0A59ZHE4EFmAjF4vODM2p
         tkqtbFiucQf7sI6bbA8HqWvPXeTj/UwD2Eb8WUX7aEHoNEGb3/UF4kik/oz6CKkdeaoI
         qum+UnkWb/3qeEzNhcaUZ3LbzSGQhqQIQCM3nXcEvuV/xQ1i+geswgukuL1wX0UbpD7/
         k3Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s26si301471lfi.1.2018.03.03.11.30.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 11:30:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,419,1515452400"; 
   d="scan'208";a="316234643"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 20:30:19 +0100
Date: Sat, 3 Mar 2018 20:30:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: Remove nonessential
 semicolon
In-Reply-To: <20180303190913.GA4555@seema-Inspiron-15-3567>
Message-ID: <alpine.DEB.2.20.1803032029530.9544@hadrien>
References: <20180303190913.GA4555@seema-Inspiron-15-3567>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Mar 2018, Arushi Singhal wrote:

> Remove non-essential semicolon after 'else' and 'switch' statements. Issue
> found using semicolon.cocci Coccinelle script.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

It seems strange that someone would write code like that...

julia

> ---
>  drivers/staging/rtlwifi/base.c               | 6 +++---
>  drivers/staging/rtlwifi/phydm/phydm_rainfo.c | 1 -
>  2 files changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/base.c
> index c947def..eea0003 100644
> --- a/drivers/staging/rtlwifi/base.c
> +++ b/drivers/staging/rtlwifi/base.c
> @@ -710,20 +710,20 @@ u8 rtl_mrate_idx_to_arfr_id(
>  			ret = RATEID_IDX_BGN_40M_1SS;
>  		else
>  			ret = RATEID_IDX_BGN_40M_2SS;
> -		; break;
> +		break;
>  	case RATR_INX_WIRELESS_N:
>  	case RATR_INX_WIRELESS_NG:
>  		if (rtlphy->rf_type == RF_1T1R)
>  			ret = RATEID_IDX_GN_N1SS;
>  		else
>  			ret = RATEID_IDX_GN_N2SS;
> -		; break;
> +		break;
>  	case RATR_INX_WIRELESS_NB:
>  		if (rtlphy->rf_type == RF_1T1R)
>  			ret = RATEID_IDX_BGN_20M_1SS_BN;
>  		else
>  			ret = RATEID_IDX_BGN_20M_2SS_BN;
> -		; break;
> +		break;
>  	case RATR_INX_WIRELESS_GB:
>  		ret = RATEID_IDX_BG;
>  		break;
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_rainfo.c b/drivers/staging/rtlwifi/phydm/phydm_rainfo.c
> index 8c08c76..e10a91a 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_rainfo.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_rainfo.c
> @@ -142,7 +142,6 @@ void odm_c2h_ra_para_report_handler(void *dm_void, u8 *cmd_buf, u8 cmd_len)
>  				     "SGI_support =", cmd_buf[7]);
>  			ODM_RT_TRACE(dm, ODM_FW_DEBUG_TRACE, "%5s  %d\n",
>  				     "Rate_ID =", cmd_buf[8]);
> -			;
>  		}
>  		ODM_RT_TRACE(dm, ODM_FW_DEBUG_TRACE,
>  			     "-------------------------------\n");
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180303190913.GA4555%40seema-Inspiron-15-3567.
> For more options, visit https://groups.google.com/d/optout.
>

