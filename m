X-GM-THRID: 7024064041486123008
X-Received: by 2002:aa7:d2cc:: with SMTP id k12mr2760453edr.243.1635424622731;
        Thu, 28 Oct 2021 05:37:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:c944:: with SMTP id h4ls171359edt.1.gmail; Thu, 28 Oct
 2021 05:37:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyfDWtIg963GwtZ9jERMNX+MZm/pv/Wt5txWWF2CQVsnJQV1CAwPZOkKMKhYJ9cA7jZrn0p
X-Received: by 2002:a50:ef07:: with SMTP id m7mr5590146eds.263.1635424621269;
        Thu, 28 Oct 2021 05:37:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635424621; cv=none;
        d=google.com; s=arc-20160816;
        b=K9bArJbBDepwty8G2Ivsa/aq1Z0WJHKsV4EQapYmtGCh87D4M3jTnhyKZNs4HWfMma
         3p79lqq5a6xHYQPFgd9NCp5JYDAp3m6lWJvog1QlaeRT17dm8JNRk7GpRsUjn7TvfLmO
         hg+JibDQ3z8oZn1F6Xc4wN2TY0HjrOLyqJvKQ2cJmnSV/WnQTU4eldjVTqYBbo6+KWkC
         OCwcIXoa2agnPWjMrdLyQoKkI45f3WxrDQX2xVlKVdMnYAEl6BdzrRj6CIevgiAScpyi
         +/UWBx0InL/lvBUYUQRxdO6cvqtZOz/HBxWzLjPzUJLvHNDrSIN185kcr7FxiEUJ1X/8
         6bfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SLr4/TnuHibe67bj8qgu1HXsYDnjQOeI4kUtFicodUM=;
        b=MiHwH3z+1Mr1kH/S/fZcYHijWKrETw/bsPcITw1MQvyY5mCKvaG7iD1AUvqQqke4T9
         cMlZmd2UJyq8V7G6Sy8jn0Zi+J65nRQr0nD2MTfM/kCLe6loLFm2ScjlRhFDggRGh1UT
         q0H7EmWiiQB1fTj1afsdSIVtcx+SBDMMNoj18Ty2BOeq82HKeqH96NmxXUn0/5UsXaVE
         Joa0xDLRfcL0orLBA3aLfU8r7LD0WDMffS+/+BK2aok3q2rTr+o3GjQoCywn/D8P5TxO
         pqraMTtj94pW/E2CZMHpP9T9llopTqJtKUZL2QgYL3UmwCzkqg7wAV8lRySvSfGA9sMb
         6SUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="Vp13/kU1";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com. [2a00:1450:4864:20::536])
        by gmr-mx.google.com with ESMTPS id bi21si208957edb.0.2021.10.28.05.37.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 05:37:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) client-ip=2a00:1450:4864:20::536;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="Vp13/kU1";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x536.google.com with SMTP id j21so1116183edt.11
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Oct 2021 05:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SLr4/TnuHibe67bj8qgu1HXsYDnjQOeI4kUtFicodUM=;
        b=Vp13/kU1uMF7hIYXyF+K5W5teumj+0JSIXryVIwzTjc7QMOkHfZOyFTGG9JLL2sNDJ
         rK6JlS7HtH/dNA+K5Rf7x5mQjYGR6S+M0xWfadOGZk/y59dWVoEdTWWaDXstuMl3MrKi
         VqN7qvNLRpWzn9CX2+VhZFr2olh8w73R3QQcZk3KQl2gXHvxUWXiInAQHvRPWEW+/9lP
         gEcDvZb5NxFB79tbwUoIEFOQGjUbrZA1Op2WFuZhBp+CXTmax2VVcrt/6weUuWsm717p
         fw0/S/Mnc0Z8PkQweaIRp9DZCxfLQSkAWXtnt2ckcatpuIt76BM3AkbXtTBbZ5V2HEwU
         Kj+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SLr4/TnuHibe67bj8qgu1HXsYDnjQOeI4kUtFicodUM=;
        b=KPhE/08a7PUjjDQWWX7vSE6Tn961kIjmPFAtDkg11LxzO1FWOxVDjRf2WJYDlg06Q9
         CSAUdOynTZ2O1OARPXI3x+y118vCDqanr3Buet6vmsCLxam/e4OvzZl6g/AvYulRWZzH
         q0pEj+SDvMq14r7t6bPwzuvPd2yhNLy8bA+thjPW+sxPiaxe/CWRa9uCzsw9GfTs5tuQ
         KXD3WcHbovDixxTYxw/VZKUkAEk1dTk93ZI0Ac5SXb+DwWFpQTOjZ8W2qGsN6ckyvJXW
         nsvXeWeanU55mTZYyVo5hzAHTiSAS4PJu/ikueqXtgvyKgrKf2T51lwgvMo61qzZ3Peq
         FuDA==
X-Gm-Message-State: AOAM532sgvB6xQptfj3JHUOnLum2tBkd/lZxkXJ2LQeZd8aOVQhx51M+
	KSm/73QgWA+iZ/WKIgwQZBbT9NNaV9g=
X-Received: by 2002:a17:906:3a0e:: with SMTP id z14mr5245835eje.55.1635424620813;
        Thu, 28 Oct 2021 05:37:00 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-56-54-101.retail.telecomitalia.it. [79.56.54.101])
        by smtp.gmail.com with ESMTPSA id s16sm1675021edd.32.2021.10.28.05.36.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 05:37:00 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Karolina Drobnik <karolinadrobnik@gmail.com>, Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 5/7] staging: vt6655: Rewrite conditional in AL7320 initialization
Date: Thu, 28 Oct 2021 14:36:59 +0200
Message-ID: <1683328.aCfAWUeHFl@localhost.localdomain>
In-Reply-To: <948406a3e7d23f1cdf866aa4448d9428bdd32512.1635415820.git.karolinadrobnik@gmail.com>
References: <cover.1635415820.git.karolinadrobnik@gmail.com> <948406a3e7d23f1cdf866aa4448d9428bdd32512.1635415820.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"

On Thursday, October 28, 2021 12:35:35 PM CEST Karolina Drobnik wrote:
> Use conditional operator to determine which table for AL7320
> initialization should be used. Use `data` temporary value to
> store this value.
> 
> Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> ---
>  drivers/staging/vt6655/rf.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index afd202ea3356..af4eb7eb8e7d 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -716,13 +716,10 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, 
unsigned char rf_type,
>  		if (init_count > (MISCFIFO_SYNDATASIZE - sleep_count))
>  			return false;
>  
> -		if (channel <= CB_MAX_CHANNEL_24G) {
> -			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
> -				MACvSetMISCFifo(priv, idx++, 
al7230_init_table[i]);
> -		} else {
> -			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
> -				MACvSetMISCFifo(priv, idx++, 
al7230_init_table_a_mode[i]);
> -		}
> +		data = (channel <= CB_MAX_CHANNEL_24G) ?
> +			al7230_init_table : 
al7230_init_table_a_mode;

As far as I know by reading some Greg K-H's replies to other developers, this 
"<test> ? <true> : <false>" style is not well accepted here.

I'd prefer to see an explicit "if-else" statement because with that style you 
sacrifice readability and gain nothing here.

> +		for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
> +			MACvSetMISCFifo(priv, idx++, *(data++));

Again, as Julia pointed out, "*data++" and "*(data++)" are syntactically 
correct instructions but are not required here. I'm also pretty sure that, by 
not reusing that index, you're adding additional unnecessary instructions to 
the resulting assembly code (unless the compiler is able to optimize it).

"*foo++" and the like are powerful and compact instructions, but you should 
use them in other, more suitable contexts.

Thanks,

Fabio


>  
>  		MACvSetMISCFifo(priv, idx++, 
al7230_channel_table0[channel - 1]);
>  		MACvSetMISCFifo(priv, idx++, 
al7230_channel_table1[channel - 1]);
> -- 
> 2.30.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
"outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/
outreachy-kernel/
948406a3e7d23f1cdf866aa4448d9428bdd32512.1635415820.git.karolinadrobnik%40gmail.com.
> 





