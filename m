X-GM-THRID: 6536210357179908096
X-Received: by 2002:a24:80d3:: with SMTP id g202-v6mr1164132itd.43.1521837213987;
        Fri, 23 Mar 2018 13:33:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.80.10 with SMTP id e10ls2184811iob.10.gmail; Fri, 23 Mar
 2018 13:33:33 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvf6mk6jff+S8xw0Jf96A32t20+5/KEeCEcTS6LR+dYXp1xttPlZcBCZyEqRpWSXjVY6qtC
X-Received: by 10.107.134.98 with SMTP id i95mr13611666iod.122.1521837213082;
        Fri, 23 Mar 2018 13:33:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521837213; cv=none;
        d=google.com; s=arc-20160816;
        b=xF+G5DQ85ApTmYXxW+8TjqZXoNILCF0/mhKmwt2bwdzEFBaFAtyCdVYS+708KfSKGi
         5d3cmn8LJsC9bk+E8ZDaJ0e6r4gyjXb/WfNA/V8pveRgtvBIUedp6l+DfGV1bB8Qk+Kj
         qCR7HCqsAkK6OFvvSz0cidCa08J3M3FK/4bZUXjoTBA8mr9rGyWEt9KSm8/HMtC0LbHV
         +q4uiPpFEIGEXb18tTOa8kQX2PfIUG0MjtyzOqVHOOXghVvcjKwb1S1pZ7Yvf8lnRKdm
         E2aRlhVe41gmj3/QHPo7qynw1QVnHy/EisssnyjTrmcTzWqSWERGAfA572jZX+PRFGTG
         0Qsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=z8EcGmRtuRN4KcxyxoIc7lcQLKOutzqvXJdEzXwFh5A=;
        b=gv7RucD9B5K1ertS4pENlR5HcE8JE6g4hSSCDcu9jbJmiPeVCdrX2ncGaePdM/pHYz
         ggc8XesNVLMlL+6yrAyoCD4VxstWfyurDPPM7DG4YLOul3gCiiE7nPOfOgxZq8w7Cuom
         0TcIOV2ON/G5pthtfP/lGhQys97RD31Dql1zhfimPMEcFafJAtM7rBdKhtd7XP3/kzN6
         2ZQp4rCAPk2CH6KiFhOcFzkuN0AH0490BWSwNGZoMi47wLOMzRavQQkxi39xlXF6SFSE
         5p3MWjvJWd4j2w+gmaABoPuCkssPHixPZymmer5LRFhDmtlVzIDYdk6QpaN/0UbG0AnQ
         M8ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ALAYQhFM;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id t11-v6si811500iti.1.2018.03.23.13.33.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Mar 2018 13:33:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ALAYQhFM;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-it0-x242.google.com with SMTP id c1-v6so4148789itj.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Mar 2018 13:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=z8EcGmRtuRN4KcxyxoIc7lcQLKOutzqvXJdEzXwFh5A=;
        b=ALAYQhFMkuWCXJ3/+h0/xhopppZionaLSJr7x6wpzuFCkx1XME2IivZlssC5K4SKyx
         dCTVDkvglsTr8WGdg6LnbZ3uURqxQDltpGdYD9KOAIqFP3Q2vbhX6v87lRBYn6tGz/gp
         vCQIbiOX2BSiqJQL60l6BOLE1bx8lFDR5ca3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=z8EcGmRtuRN4KcxyxoIc7lcQLKOutzqvXJdEzXwFh5A=;
        b=ZC9l/KKGLiMGeG4akJEF7PlAc1qkuPhfMMovqVUwgbp3AukSh39T1GkDXyiGWc9Kbu
         xRvqy23at462+87vhyHZMSSZxSnoiSDJBik1OlBYejMfxfnJmXmnn/sBEABUnCQKBgXC
         UVYnU0WHttV0srogrElqgxcybgiPMe+vsw40Nr8jYkbAutphtY2Z0jrpoUc2deCXcXHv
         iwgYpRaJ1BcsRgpwP7cB06P6KYpeJ9OlE9bkHZpB45u+0+H7Cokz3LK+iEXCmk2gOgEf
         Ikh9y5gRjDF1EPuE60dfPdpiboTZ62cuOACxJxM7NBwFCKD0EhPEiAVihNN2vVLBqzjs
         0AKw==
X-Gm-Message-State: AElRT7HU1jjGzIC+paoVYmr0mjqL13GdiN5UjMxRnvArSpdK4b7ftn15
	HWBtE70JPe46qAlNjsoqsKLfYeHsQcv5t8NZbEvOmg==
X-Received: by 2002:a24:9b8a:: with SMTP id o132-v6mr15392830itd.82.1521837212331;
 Fri, 23 Mar 2018 13:33:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.128.23 with HTTP; Fri, 23 Mar 2018 13:33:31 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1803231435550.2450@hadrien>
References: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <alpine.DEB.2.20.1803231435550.2450@hadrien>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Sat, 24 Mar 2018 02:03:31 +0530
Message-ID: <CAC4++KDR0oqq6HVRU5NEJx5U_GUZ1-mb8PRP2nXTn1KpTEXkMA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/5] staging: vt6655: Change
 CARD_PKT_TYPE from typedef to enum
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: forest@alittletooquiet.net, Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 24, 2018 at 12:06 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Fri, 23 Mar 2018, Nishka Dasgupta wrote:
>
>> Change CARD_PKT_TYPE from typedef enum to enum. Issue found with checkpatch.
>>
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
>> ---
>> Changes in v2:
>>  - Clarify subject and commit message.
>>
>>  drivers/staging/vt6655/card.h | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
>> index 487039a..be5254a 100644
>> --- a/drivers/staging/vt6655/card.h
>> +++ b/drivers/staging/vt6655/card.h
>> @@ -39,12 +39,12 @@
>>  #define CB_MAX_CHANNEL_5G       42
>>  #define CB_MAX_CHANNEL          (CB_MAX_CHANNEL_24G + CB_MAX_CHANNEL_5G)
>>
>> -typedef enum _CARD_PKT_TYPE {
>> +enum CARD_PKT_TYPE {
>>       PKT_TYPE_802_11_BCN,
>>       PKT_TYPE_802_11_MNG,
>>       PKT_TYPE_802_11_DATA,
>>       PKT_TYPE_802_11_ALL
>> -} CARD_PKT_TYPE, *PCARD_PKT_TYPE;
>> +};
>
> Were the typedefs never use?  If they were used, then this should result
> in a kernel that doesn't compile.

This particular driver is compiling at my end; if I remember
correctly, all of drivers/staging/ also compiled with the changes in
this patchset.
Just to be sure, I also searched within this driver for this (and
other) typedefs being used after the definition, and I couldn't find
any occurrences, which confused me a little. Am I doing something
wrong?

> julia
>
>>
>>  typedef enum _CARD_STATUS_TYPE {
>>       CARD_STATUS_MEDIA_CONNECT,
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521830040-7138-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
>> For more options, visit https://groups.google.com/d/optout.
>>

Thanking you,
Nishka Dasgupta

