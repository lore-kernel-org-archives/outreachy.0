X-GM-THRID: 6949513279876104192
X-Received: by 2002:a7b:c401:: with SMTP id k1mr13011270wmi.48.1618061017443;
        Sat, 10 Apr 2021 06:23:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6c6a:: with SMTP id r10ls877634wrz.0.gmail; Sat, 10 Apr
 2021 06:23:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw6+GSK07l55q7GDxWBEfoe4cW5mbdmP1Z9NoFLFVIrCcPTybpgqRHqnqDPGdeqtQbmfO2p
X-Received: by 2002:a5d:4579:: with SMTP id a25mr14200031wrc.160.1618061016081;
        Sat, 10 Apr 2021 06:23:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618061016; cv=none;
        d=google.com; s=arc-20160816;
        b=w+NYzqxqF+2KTX1iEJIzV6cXRtZrEwEIF/Xj5NS8n3IT2/3tDPItwCILE8sQWKzBZN
         uugEUVxoliDQp1k49obAkW4xZfhaTCW9kZMiwnxeLdgzXI/KhdLGGlaLkA7nls4T98LD
         ZxVqQDPh/scBIg7T8fHVpLu3ZzUfETeuUf0c2gTIybKTpFQJP3X7q9j1wp1GvWoQuf9O
         KoSUrCo6F8QvhePgLiff6ZiW9VFkdnqBhUcjZidn24BqMzmQnoVffq9GihnZkcu8+rzO
         6dZ6tfPQGYmQzBbWQk/t9eWc3t2Ds0+Vz6uKefHI6rAZdgj5exnkBKtIdAdm90VGRJP0
         1rrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=sp+XKAZbiXJwtjvbGija5OgyNiTy2keibvVldPMgma4=;
        b=vKSJOYJqRoeIG6y+cFIS50kRZAkl+JwvtfdMPhBnQykcNFT4GJCCq1kgsIA/ajONQb
         Zkk5UzNT2Kj8qwmVag8TMCL/+FHlQf1INcnXohbuiQq+kUoM+/JJWjdWJ9GItCZYhsom
         FY62ttLT3jrp4B6HMWJ0KxMZ4yYlTdTYyHpmSFlFg2QFfjY85NPvcvajPTMO+eBcyezm
         0r30nqu5Mpe3Clmk4CjQQYgnxxlfnW9s49ciIrIqhPbA/u0xol6GF7yXFDFYG246fM/5
         Ev1QWyTcszi5/3m6mKGQMY/pfTz9pcHc0UoDX7BQmXGZO8LxEBjdVeMfbayVr9obCIr+
         DU9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i16si369530wmq.2.2021.04.10.06.23.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 06:23:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ADBKhgKOpgYxShcBcTiCjsMiAIKoaSvp033AA?=
 =?us-ascii?q?0UdtRRtJNvGJjszGpoV+6TbYgCscMUtKpfmuI6+FKEm3ybdU5s0rMa6mTE3avg?=
 =?us-ascii?q?KTTb1KyavH73neFzbl9uhbvJ0QFpRWLNHrF1B1gYLbzWCDc+oI+9WM/KC2ieq2?=
 =?us-ascii?q?9R4EcShQZ65t9At/AAqAe3cGJzVuP4YzF5aX+6N8yQaIRHJ/VKiGL0UeU/OGj9?=
 =?us-ascii?q?PGk4+OW29lOzcXrDjLtz+u5bLgeiL04j4VWVp0rosfzQ=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.82,210,1613430000"; 
   d="scan'208";a="378286927"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Apr 2021 15:23:35 +0200
Date: Sat, 10 Apr 2021 15:23:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mitali Borkar <mitaliborkar810@gmail.com>
cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
    mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192e: fixed pointer
 error by adding '*'
In-Reply-To: <YHGhdtldqAlRsPHT@kali>
Message-ID: <alpine.DEB.2.22.394.2104101523140.2975@hadrien>
References: <YHGhdtldqAlRsPHT@kali>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 10 Apr 2021, Mitali Borkar wrote:

> Fixed Comparison to NULL can be written as '!...' by replacing it with
> simpler form i.e. boolean expression. This makes code more readable
> alternative.
> Reported by checkpatch.
>
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
> Changes from v1:- added pointer to the function, which was missed during
> fixing v1.
>
>  drivers/staging/rtl8192e/rtl819x_TSProc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> index 4457c1acfbf6..78b5b4eaec5f 100644
> --- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> @@ -327,7 +327,7 @@ bool GetTs(struct rtllib_device *ieee, struct ts_common_info **ppTS,
>  	}
>
>  	*ppTS = SearchAdmitTRStream(ieee, Addr, UP, TxRxSelect);
> -	if (ppTS)
> +	if (*ppTS)

This looks like a patch against your previous patch, and not against the
original code.

julia

>  		return true;
>
>  	if (!bAddNewTs) {
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/YHGhdtldqAlRsPHT%40kali.
>

