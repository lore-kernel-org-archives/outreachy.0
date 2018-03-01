X-GM-THRID: 6528054471582285824
X-Received: by 10.80.138.132 with SMTP id j4mr1191093edj.4.1519934668799;
        Thu, 01 Mar 2018 12:04:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.133.197 with SMTP id q5ls4042591edh.1.gmail; Thu, 01 Mar
 2018 12:04:27 -0800 (PST)
X-Google-Smtp-Source: AG47ELv2f08X+QbOyxinsGobzWaetQ4nPQGqChEIMBevEylGB0lA90AINC18mR6m3VtiEf5d24tC
X-Received: by 10.80.244.2 with SMTP id r2mr1193259edm.2.1519934667718;
        Thu, 01 Mar 2018 12:04:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519934667; cv=none;
        d=google.com; s=arc-20160816;
        b=E0YIVwnPcsy1ag/KAXlqPHrDtTYUCYafcjMZQ3EOEG7UzmEct3VWOon/iJk04hUqDl
         U8Omw3pyNp1080IV313+m6rcVv2KzAYY2RqUjajL0JKGJPlxeIc5wrLePfjd4GTYf+N6
         qM90OwRGLhmcyeiwUrneyCHROEwctkehpCWsAaiUiCyHJLaZUGUWKlc/LMz1E6UMI0lw
         J0fJESpl4y/ykYtOny5HPfcr7PSQbctCrd0D/Q/lL2KJmfgsqek9CbfZWKllxP/sJRvy
         5iOAtfaDKud5XlbKCp98PI0Rdb2aAFIm6TMpVN8fXflRcr3fjFggENVzGHlb2hjyLXTU
         d0dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=u2ZeuhKXsMq2A1j3QrBdvM1EKeK5sRgPq2IxdKfmOfQ=;
        b=0rKtmXP9HxuV3U7atGmmOH46GD4mASLgsuEfQlaiyVThZX8lyKz7TKHz8G0tMInoan
         /tlDkQKWZFSOXuQunA9heq5ZdfaGXXF77uHPqyDd5xY+7DM2EIN7mxUtUX2B1RebOwKo
         ssrNmvmTvI1737HHCRZ9r+fMpxx670a5hqKfh8vl5IC0JGUNzYaPf+xCmWBihE1rJtym
         rCtJdeF8nGFTj3c3Yyf1gaGIr7+/JEORks4CO3i4CObM9kYF7GOCxtnvpyPh89tFeido
         B7f4jbhpzp2QFomMVIe3ZTMXZqowiJPzIBkE4eBVyBYDHQsd3gokyk7ejEA+3BG9fXzL
         jNng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f24si277312edc.0.2018.03.01.12.04.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 12:04:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,409,1515452400"; 
   d="scan'208";a="256633726"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2018 21:04:27 +0100
Date: Thu, 1 Mar 2018 21:04:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: ks7010: Remove spaces
 after typecast to int
In-Reply-To: <1519931110-2763-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803012103480.3474@hadrien>
References: <1519931110-2763-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Mar 2018, Nishka Dasgupta wrote:

> Remove spaces after typecast. Issue found with checkpatch.

I don't see any spaces in the staging tree.  Maybe a previous change of
yours added them, or maybe someone else already fixed the issue.

julia

>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
> Changes in v2:
>  - Revert to typecasting after removing in version 1.
>  - Remove space after typecasting.
>
>  drivers/staging/ks7010/ks_wlan_net.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
> index 482af50..91acf87 100644
> --- a/drivers/staging/ks7010/ks_wlan_net.c
> +++ b/drivers/staging/ks7010/ks_wlan_net.c
> @@ -208,7 +208,7 @@ static int ks_wlan_set_freq(struct net_device *dev,
>  	/* for SLEEP MODE */
>  	/* If setting by frequency, convert to a channel */
>  	if ((fwrq->e == 1) &&
> -	    (fwrq->m >= (int) 2.412e8) && (fwrq->m <= (int) 2.487e8)) {
> +	    (fwrq->m >= (int)2.412e8) && (fwrq->m <= (int)2.487e8)) {
>  		int f = fwrq->m / 100000;
>  		int c = 0;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519931110-2763-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

