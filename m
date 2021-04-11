X-GM-THRID: 6949836539406843904
X-Received: by 2002:adf:f64f:: with SMTP id x15mr10273821wrp.266.1618135663003;
        Sun, 11 Apr 2021 03:07:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:3511:: with SMTP id h17ls5052250wmq.1.gmail; Sun,
 11 Apr 2021 03:07:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwx0zQI3Oe0A9UeWTIhdxzLcnDtpvuscYEBzRAlAI+wfYyFfeywunFFZgPhdAeFPL/PbPdZ
X-Received: by 2002:a7b:c012:: with SMTP id c18mr19714351wmb.94.1618135661361;
        Sun, 11 Apr 2021 03:07:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618135661; cv=none;
        d=google.com; s=arc-20160816;
        b=o50DX5QFx6Ra3M06gzX2o+RUMIXWhin6K5T5fbM7w5gdHdzDcWeuYKIJ99XlW+jJaa
         SP4/kz5TDTV/9WLF6RydTxcYZc7n323f/C6QppMjTVX6OdeTYXiEM56FjYZjTLDl75sb
         vt8LPWZSZPrwH8LBJzHIqv//3aj+1b81oIbqIMxgjqp2lDJlVFmZnhj9xOyE3cmNRn9T
         1jeVDww9UZoEWKQUz6ZnEeIgdFqzOJhEdfbpS26wjr2BMO1ryjOpZht+PnEZ7i1B9mgs
         KS8j9ONp6svQ9g7PxeTaotvan0PSQQ7bHFuqxjbBZVKB6SBUAUn/wCL19fS3ExSLbbil
         YmqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=S2SoZBUBcM83+Ol2BVV6og0rUCQ7X0hwG6C1Erir01g=;
        b=k7gR7j8AilsM9vb4PgsC2yVEkqD0+UkmJe5I/ULYWWWNlmz9S7nhCbLznjpKyu9QMJ
         NPdZH8Zk1OJvh2HCO91KJ6poqHyk5EsbwTP/YMbSRgC1ITRJjF8N7cRrJxUYE5D/Y80a
         dLSJt/9w9HA0eoBVVgx2e4roOEv/C2/0HtXxb8DN06lQ/wDMLbV+oNYGT2BBqFmhYCqQ
         1W8GnumETXswa5lUcyJt48Bi9J/rnJ56V9LXynzsCzyv0C91i2n1/jIJ5ORqBlTo3W3w
         24gMAO3ypD+Fw61eaKYNywoBbTjeLEiBVHSEaoIj5al+tHR+uu54Pi1dryKKf94EoCbc
         ibPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s8si977549wrn.5.2021.04.11.03.07.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Apr 2021 03:07:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.82,214,1613430000"; 
   d="scan'208";a="502615109"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Apr 2021 12:07:41 +0200
Date: Sun, 11 Apr 2021 12:07:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mitali Borkar <mitaliborkar810@gmail.com>
cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
    mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH v3 1/3] staging: rtl8192e: remove
 parentheses around boolean expression
In-Reply-To: <30a330377667aa5043a60ed3cdf1bbb37099631c.1618133351.git.mitaliborkar810@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104111207000.2854@hadrien>
References: <cover.1618133351.git.mitaliborkar810@gmail.com> <30a330377667aa5043a60ed3cdf1bbb37099631c.1618133351.git.mitaliborkar810@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 11 Apr 2021, Mitali Borkar wrote:

> Removed unnecessary parentheses around '!xyz' boolean expression as '!' has higher
> precedance than '||'

The log message is too wide.  It should be at most around 70 characters
wide, because git will indent it a little.

julia


>
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>
> Changes from v2:- Modified subject description.
> Changes from v1:- Removed unnecessary parentheses around boolean expression.
> Changes has been made in v2.
>
>  drivers/staging/rtl8192e/rtl819x_HTProc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> index b1fa8e9a4f28..431202927036 100644
> --- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> @@ -276,7 +276,7 @@ void HTConstructCapabilityElement(struct rtllib_device *ieee, u8 *posHTCap,
>  	struct rt_hi_throughput *pHT = ieee->pHTInfo;
>  	struct ht_capab_ele *pCapELE = NULL;
>
> -	if ((!posHTCap) || (!pHT)) {
> +	if (!posHTCap || !pHT) {
>  		netdev_warn(ieee->dev,
>  			    "%s(): posHTCap and pHTInfo are null\n", __func__);
>  		return;
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/30a330377667aa5043a60ed3cdf1bbb37099631c.1618133351.git.mitaliborkar810%40gmail.com.
>

