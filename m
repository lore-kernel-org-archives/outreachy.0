X-GM-THRID: 6948085452987432960
X-Received: by 2002:a05:6512:b81:: with SMTP id b1mr22846691lfv.345.1617727989279;
        Tue, 06 Apr 2021 09:53:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:58f8:: with SMTP id v24ls907289lfo.2.gmail; Tue, 06 Apr
 2021 09:53:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyyC6Sl6fkbMj5TSQET8x2C7eeC6t/7+7MPPQ7MnEbnpW9UOsjbQY3VwWdmIHd6GamOPXCz
X-Received: by 2002:ac2:5687:: with SMTP id 7mr22629808lfr.407.1617727987448;
        Tue, 06 Apr 2021 09:53:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617727987; cv=none;
        d=google.com; s=arc-20160816;
        b=InlmvEmdTsJQ3hTf0nIH0uvEQrs64NFBVX7l1qj0D7tVMOFmYTDJmfLX+uyFCHMJ7N
         S9XVOibh3bto8WJxnQXFcaXdU6lzrTrkzrxRphq5qgJJva5lsDImGD8y+gheVDn3MKLo
         g9FJU6kFIxfZ11g3AnNzjmE/3k09EOr7WQvb2GKqeFG6uSEGegIlQ9Pj4gU2our7Fg/Z
         xJ5xyt4IfbQu622jQWF25/omEGeVr9+lG68QN45uu6IDoVKWnWVSWi3u/e6WMBEgFeOd
         0rHwvVeOin4AzV0mONbW09AjcJIFrTILMFxQc6AJA6qL8090C4UYuLrk8wluDCAH69VE
         SSMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SfccbbW2+MpYwGGhGg11TDLfugRMxSMOVQP6jp7h2U8=;
        b=bOyqkPEWTr//OihXPZ6OqlVsi55ytx7mrbiGDgLmDG3nZkHYRU2MFGAGMnQ2qvsckW
         ie1mM9cWFq2GLetU8di7VN9miqjUKoO4t9Pt0I6HsAMKjUympQ/2MgSqU3tDVc3bE+oN
         NCbGzN9mJNFnB99igcP9SL3OAJJbPj2i8YGsb3MKOpSKvxxDWwwqb/L3dTjWxh1lEPQi
         rwuu0WySVDG64PMUlmzdLvyJxE0L5tTJp5kDZSno4gltad0+QlFqWCZ/TcYrtnbqgueH
         SAws22zuH0LXBX5pxlGCw2jbv5zM6IJDVHQN1MVFfRlH6qxF88RCI6gSpgJtBv9M1gYH
         uyRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pQ0ViWyz;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id z5si1616354ljj.5.2021.04.06.09.53.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 09:53:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pQ0ViWyz;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52f.google.com with SMTP id e7so17387027edu.10
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 09:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SfccbbW2+MpYwGGhGg11TDLfugRMxSMOVQP6jp7h2U8=;
        b=pQ0ViWyzRs0o24zDGEqtCMMH69JRP424QVOZcXH/CCKrZ97GZiY0ULQcAHxkZ5/WAL
         yMnt8tDc66eO8JUcJ2MdsAfdurONW1iBpLxuNcXNtW9renL+asEb3f5y72g5N5dES0NF
         lF75oyb83LxmBGbU55xLsbM49rCpqTQgxnKIjtQ0rJ7iNmp98n10HH3BzzpXbfpucJyb
         7zRXWBGN4qjQkNuGKpmoEs9ix3Og3SOh0burWSTX1pMNWqiFPjcebb9wkpeEbjsiV2YS
         kNb2Fg9AFBvwWmGtAbYktIXCDG0lUP3n4ip4FsXmjHeVfKRCAJYEr2VdOg8bxi0O5hU9
         2AaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SfccbbW2+MpYwGGhGg11TDLfugRMxSMOVQP6jp7h2U8=;
        b=HvSJ1yZUv8RebSDWTk2oIGKJq1ExdyU5q1tdaSI9EPW7azjKw5PAdjHk5F7wNnKLkU
         pY2Gfa8dY1jf+l1ydp55So4e1xYP4uMWClVfbvyIc4dlHOy/Go180T1MApjoOrC2aQUY
         yB/+N7zxu4lnNIpM24DKLeLmEiskS8YEbiSYSY9cicA0fatTgbF3+Vxm9z5KJLITCEVB
         LN68evgTnupfJTQmVZzi9WY4OVRHmH4dzVyk7awWCWWQeWH7WQKpbIQI0AeTqnkZClkU
         DDYCVD4Q2I7rkhywBeyi6Fs5jEQnjj+e9Qqvc0SVEXBkdqrMq4DE2FSGo4kCtFeGbqCo
         yG8Q==
X-Gm-Message-State: AOAM532hSAdUam06ulS/q7Rle91LpQSuDitiLgMJoG3rBX7LcQrsaUgM
	C3vYN2eUhD09mYJRuXMk9Hk3rjkQDfhEiqXl
X-Received: by 2002:aa7:cb97:: with SMTP id r23mr38335517edt.106.1617727986971;
        Tue, 06 Apr 2021 09:53:06 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id c19sm14255587edu.20.2021.04.06.09.53.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 09:53:06 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Add spaces around operator in HalBtc8723b1Ant.h
Date: Tue, 06 Apr 2021 18:53:05 +0200
Message-ID: <6130008.QCNOj3hcS5@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2104061843260.16390@hadrien>
References: <20210406164001.13646-1-fmdefrancesco@gmail.com> <alpine.DEB.2.22.394.2104061843260.16390@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Tuesday, April 6, 2021 6:44:00 PM CEST Julia Lawall wrote:
> 
> On Tue, 6 Apr 2021, Fabio M. De Francesco wrote:
> 
> > Added spaces around operators in file HalBtc8723b1Ant.h. Issue detected
> > by checkpatch.pl. Spaces are preferred to improve readibility.
> >
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h
> > index 59e8c68cdc20..719e19420a3b 100644
> > --- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h
> > +++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h
> > @@ -15,7 +15,7 @@
> >  #define	BT_INFO_8723B_1ANT_B_CONNECTION		BIT0
> >
> >  #define	BT_INFO_8723B_1ANT_A2DP_BASIC_RATE(_BT_INFO_EXT_)	\
> > -		(((_BT_INFO_EXT_&BIT0)) ? true : false)
> > +		(((_BT_INFO_EXT_ & BIT0)) ? true : false)
> 
> There seem to be a lot of parentheses in this code (( )).  Maybe you can
> make a series and fix that problem too.
> 
> julia

OK, good idea. Tomorrow I will also work on this problem.

Fabio

> 
> >
> >  #define	BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT 2
> >
> > --
> > 2.30.2
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210406164001.13646-1-fmdefrancesco%40gmail.com.
> >
> 





