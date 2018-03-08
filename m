X-GM-THRID: 6530656197776769024
X-Received: by 10.28.22.136 with SMTP id 130mr19908wmw.21.1520542273641;
        Thu, 08 Mar 2018 12:51:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.161.20 with SMTP id o20ls1541155wro.6.gmail; Thu, 08 Mar
 2018 12:51:12 -0800 (PST)
X-Google-Smtp-Source: AG47ELsXbi9pz0fVoKOPnm52ud2avuW3uo80fG6nYwHLuax9QTD1APZpJyN7oJMxOB8JioMoVPol
X-Received: by 10.223.157.196 with SMTP id q4mr2601906wre.23.1520542272849;
        Thu, 08 Mar 2018 12:51:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520542272; cv=none;
        d=google.com; s=arc-20160816;
        b=k4PKOgkEeAdH/Yt9eAb/pXjLcH+qTWXNGN5BtYfsAeNFToBGGooGnKpuMWagH4pd3E
         7bd9z4hO8+36gDukKosT2wA3PK7BUFX++13X9hZQwrREfVQ07rzbJyfV2zSaN8EAW5rW
         j3pWRF9k2kvIOf69FnQdw1BK1PyNsdR/H3r+v4E+SZZ+ZD/orjpnfP/yD91FJ+ojvLqE
         V2ona3Mey5rGlNEZa8oW6dB7AIS0Z2zPDDfn0ih05ZYsm5WyxUGWMHN8zAkGMDxQf0ed
         CldWVkxn5iKdS3TbiUxv0ZpBMoZI2OhEfgv2n1kinIyjYj6OZBQ5o7u2GnX6o2wHQmjL
         mglA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=bvMZsihwaSUwbYSn/rqt33UYnjUBrfuzu38Op7WOoHA=;
        b=nS4bKVQiEYZg/AgeCa2tvnis/UGLYbzhGtfwkeiMpF6xWad1nhTm5M7dnnemZMgyL/
         Q6UBqnp80gI1myouEtiagaS3cQDm1z0YzX6x7HW71oVkBH1YvVzzANVuRZ4TmapWxxRs
         PY/se3PpNSD3SJvenNus4Asdi1/CcdWjtmX2aO1NqeXCSA5PZ8M+FaEDbafA5BGnu9WK
         R0Fqzxy0DSAlzeBgNi5TrKwlO9C1c573LPaplW4qA4sykGR31aHH9yo9/WBn/jL3RS3F
         oyNH4IYCjkeO404agnTVTyCmIwJQ3Q62hA0FzecdfgplUL50PexNQSVCJDCA20LmL+6v
         24SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m29si881164wrb.1.2018.03.08.12.51.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Mar 2018 12:51:12 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,442,1515452400"; 
   d="scan'208";a="317112917"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2018 21:51:12 +0100
Date: Thu, 8 Mar 2018 21:51:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: gregkh@linuxfoundation.org, w.d.hubbs@gmail.com, chris@the-brannons.com, 
    kirk@reisers.ca, samuel.thibault@ens-lyon.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Replace simple_strtoul
 with kstrtoul
In-Reply-To: <1520538226-15590-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803082150310.2245@hadrien>
References: <1520538226-15590-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 9 Mar 2018, Nishka Dasgupta wrote:

> Replace simple_strtoul with kstrtoul. Issue found with checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
>  drivers/staging/speakup/main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index af30b70..9db7160 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -1973,7 +1973,7 @@ static int handle_goto(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  		return 1;
>  	}
>
> -	goto_pos = simple_strtoul(goto_buf, &cp, 10);
> +	kstrtoul(goto_buf, 10, &goto_pos);

I haven't looked at this case in detail, but typically the cases that
still use simple_strtoul really need the simple_strtoul functionality.

julia

>
>  	if (*cp == 'x') {
>  		if (*goto_buf < '0')
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1520538226-15590-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

