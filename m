X-GM-THRID: 6477098943281889280
X-Received: by 10.107.114.17 with SMTP id n17mr5323097ioc.28.1508068788420;
        Sun, 15 Oct 2017 04:59:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.225.14 with SMTP id n14ls1167215ith.0.canary-gmail; Sun, 15
 Oct 2017 04:59:47 -0700 (PDT)
X-Received: by 10.36.47.76 with SMTP id j73mr5902347itj.35.1508068787770;
        Sun, 15 Oct 2017 04:59:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508068787; cv=none;
        d=google.com; s=arc-20160816;
        b=FqAA14p87ljqONV/CVBjGD3nmuMmvBnZNXRH1DI/B05tM+UDCcSW5XpkFtAaqwEFJN
         k6yXw9g+0fopQEBX5rhN5wMCqZN3+t7n0zowyJAqx3hR35DYkZt9Qta4PWtgozB3Y84b
         DlIkLFfJB2ukrULt1w54D2bNk+/hswQeHD3Kmfqxa2FuUQLkDkU4CsAFYUGW+mdZsNGC
         hrcBh/MRGSBKLiqLUv+6lTpbp0dox/YZ3yu1oas6NeD0+/WeWN0sKEY3RS+LLLxwiT7/
         ccqQVDa/tCqcPgmjLPVSLdM6i+AA+2yAXMvui9dCgyKlSn75JBVxC5mR6a+m71S89c49
         gMlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=AY7lo930I9AbrZOPMzH0q1Mjxv5hzGhrnL+xN6DiTGQ=;
        b=IS3SoDcsD2/f+yXJjiaMmivVitBAmzv1TC9o9miptAAQPr21YhTCapODSDI8jxtTr5
         A8FFgAE4NM6l1jAAOOaHnvwisbj64n28sCcSWNUhPiySXN5PGq/TWhJJvZJ9mXvKkXJE
         hCERsiYG8ShLTg0kCju7IIw9rzmZGJ0Bg8nx2mEvYLSSBbkk06aeNLgF19r1aDRnI5xC
         drCFbs7gf7f2iZoKQ3KdSRPussndDxqVSUzi27A6rKYBIaN4huTUEL4QtMANcGmnrS/x
         EWPVA4ShHXOq/dIx9Bd6bhsOUAN5xt39Jt5ocRL0QEVYpVZ2YgRgJnK5MwwFQTkuAsjy
         Knkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xz2ua2/s;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id r66si479763itc.0.2017.10.15.04.59.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Oct 2017 04:59:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xz2ua2/s;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id k123so3273757vkb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Oct 2017 04:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=AY7lo930I9AbrZOPMzH0q1Mjxv5hzGhrnL+xN6DiTGQ=;
        b=Xz2ua2/sAuxx72LibyuPfc5BMblDyLPP09iHn+dCT/ljnnIi1G0CoQKn6ZSKRGPkBU
         VNY8azfwdK5isNSaycA87L+BK1TeqT0GLRDuq8aZG2mCo/1w5FWU3HipfNctZr+vvnSO
         LRmgMnGtpowAW6XFtW9qIng0AgSxEGCNgP3y6Je+hlbtDCNxgXcaqeBQ4HuTqR7Lskxe
         FUt4MiREA75x8Tmct+LP4qhY4ubK7jA9LI0K8JcnHDSrT/Un6ogHRP7nno3L8SSI5IfY
         ae2c4uP/ARrn+X9frVWBCE4YEQiXOxgQOPnMZBz9JhZx06Hq7b9BV0Mztf+JAf4x/EKd
         kXHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=AY7lo930I9AbrZOPMzH0q1Mjxv5hzGhrnL+xN6DiTGQ=;
        b=iCJhIXiwJAF8oafSavYVqr5mqODrg9o3Zriv0RlpC+7VVvlHYfcYEopJarDpeJgFK0
         9rXT+MaD51zcvFg1r7IRDFMkSJTfiB+uWhjXjXnEleitDUXPdQ1tBTnvl7wzwsc/UDGs
         rvOUGss4woDVTfOla2HVKVqg963Cq2PhCOZ3c8l2YJAr4vTy+GdA0z8y1aji0RUHoCAp
         zTzXgFgWn+gyNr7ZTqK/1hToQDAVziEsXKagKFbYq7cguDmOGPqRglnjiAIkyLtqTNok
         tZItKlJ/XjcNHAXdlASIisvx6XbQBftu7hK/rABHAHaB84kERp/g48ctJgpEnq2CP1Q2
         IYUA==
X-Gm-Message-State: AMCzsaVLdMddAHJlJsfMZrErQdvIqCJm7WQM/YPxx8UBFoIyekvCdjM4
	zOzeTNBJ9WghcWpepwCfg93g712PD+PNZ46n7sN6uA==
X-Google-Smtp-Source: AOwi7QD1kqMHqUDuiJiJtg9q9fE4fPU92xNaWZ81o7nYFP85ApJLIMY0webxxaDiyrNYSUkpUe2sGd5THvwzaRMTE0M=
X-Received: by 10.31.59.73 with SMTP id i70mr4856442vka.87.1508068787083; Sun,
 15 Oct 2017 04:59:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Sun, 15 Oct 2017 04:59:46 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1710151334180.2089@hadrien>
References: <1508067107-13649-1-git-send-email-aastha.gupta4104@gmail.com> <alpine.DEB.2.20.1710151334180.2089@hadrien>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Sun, 15 Oct 2017 17:29:46 +0530
Message-ID: <CAHXiS59CHUHHMn8W1xUDGfeTYe7cTqwM+3e3H89hCR3Xdn9qkA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] iptables: iptables-compat translation
 for TCPMSS
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Pablo Neira Ayuso <pablo@netfilter.org>
Content-Type: text/plain; charset="UTF-8"

On Sun, Oct 15, 2017 at 5:06 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 15 Oct 2017, Aastha Gupta wrote:
>
>> Since path mtu support was added, we can now add
>> iptables-compat translation for TCPMSS extension.
>>
>> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>> ---
>>  extensions/libxt_TCPMSS.c | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>>
>> diff --git a/extensions/libxt_TCPMSS.c b/extensions/libxt_TCPMSS.c
>> index 4b71e44..7f65298 100644
>> --- a/extensions/libxt_TCPMSS.c
>> +++ b/extensions/libxt_TCPMSS.c
>> @@ -91,6 +91,17 @@ static void TCPMSS_save(const void *ip, const struct xt_entry_target *target)
>>               printf(" --set-mss %u", mssinfo->mss);
>>  }
>>
>> +static int TCPMSS_xlate(struct xt_xlate *xl,
>> +                                              const struct xt_xlate_tg_params *params)
>
> The argument list seems to be quite oddly formatted.  Line the second line
> up with the right side of the (
>
>> +{
>> +     const struct xt_tcpmss_info *mssinfo =
>> +             (const struct xt_tcpmss_info *)params->target->data;
>
> Is the cast really necessary?  It should not be necessary if the data
> field has type void *.

Data field is not type void but unsigned char.
>
>> +     if(mssinfo->mss == XT_TCPMSS_CLAMP_PMTU)
>
> Kernel code requires a space after if
>
>> +             xt_xlate_add(xl, "tcp option maxseg size set rt mtu");
>> +
>> +     return 1;
>> +}
>> +
>>  static struct xtables_target tcpmss_tg_reg[] = {
>>       {
>>               .family        = NFPROTO_IPV4,
>> @@ -104,6 +115,7 @@ static struct xtables_target tcpmss_tg_reg[] = {
>>               .x6_parse      = TCPMSS_parse,
>>               .x6_fcheck     = TCPMSS_check,
>>               .x6_options    = TCPMSS4_opts,
>> +             .xlate             = TCPMSS_xlate,
>
> Follow the same alignment strategy as for the other fields.
>
> julia
>
>>       },
>>       {
>>               .family        = NFPROTO_IPV6,
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1508067107-13649-1-git-send-email-aastha.gupta4104%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

