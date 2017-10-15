X-GM-THRID: 6477098943281889280
X-Received: by 10.31.147.196 with SMTP id v187mr3410997vkd.56.1508069318324;
        Sun, 15 Oct 2017 05:08:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.61.3 with SMTP id k3ls1109746vka.3.gmail; Sun, 15 Oct 2017
 05:08:37 -0700 (PDT)
X-Received: by 10.31.146.207 with SMTP id u198mr3567426vkd.84.1508069317466;
        Sun, 15 Oct 2017 05:08:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508069317; cv=none;
        d=google.com; s=arc-20160816;
        b=r6kU8XkuOQiz/spLdjXaV0TGzbGTXfhLrUMeg9ZTznwasGHwoyFxzDzWZu9NqXODc6
         bs2Z9qsR2KRtdIGiY69OxwoMqk6tEUl0a/9orAEEHV64ZeKPmWU5RkgkcnNklQWneVKH
         v9mKN7MATtDfAO+6Jd35ShH6aVe410xWbnG1O/ubmKR+sRMu+A3VYQKG1Us6OkJvAwUr
         bJ6gAdroPQ6ciB5JHwCT1MQEDBPti3jaV5ywugny1MtFBrecNbQ/v2H9tn5+uCn9FasV
         ge9zx6oM39r56tDppAFdu8fB3vqS866RzbMAi9tr/ZzT2CJYLiHZrPRdLlGZiJkNMc/M
         tmgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=LR1jokTPNfZdaQx4RsVd5kNVB3iuwIFLiQ16gG4Njr0=;
        b=T1EJtdzs2tz/1GPUZ3ugsDU1JX1RZxGJPjh4XCeZnW6EI640YFbKITuHp5E8Rkwnq5
         O/sbNzoBK7a5YiPD1GYOQvH/vjlN5C8v1gLD1S/YRhul6SItLrjaczI9tqbRODUmGKnt
         Nm9potGJufA99SOL5/P/u5CVU/7uEgVNEYeiizfohk5TcteCIrxD+y36Ftta+MiAOvmG
         iBbr/FYSE3lME/XdoPM0Ak0HV5XnUkumY047BZ/fb5ICbc+giPFHhl0caY/pLVryg0Lw
         KL52w38AotDKYprxewbOTmUpodiqYfCqtYUSmh3ZzBZw8dW5NUfQzdCSKvfLQhXy7ie6
         E5Fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rMX4udpo;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::22e as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-ua0-x22e.google.com (mail-ua0-x22e.google.com. [2607:f8b0:400c:c08::22e])
        by gmr-mx.google.com with ESMTPS id 91si286737uau.2.2017.10.15.05.08.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Oct 2017 05:08:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::22e as permitted sender) client-ip=2607:f8b0:400c:c08::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rMX4udpo;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::22e as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x22e.google.com with SMTP id u32so8023288uau.0
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Oct 2017 05:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=LR1jokTPNfZdaQx4RsVd5kNVB3iuwIFLiQ16gG4Njr0=;
        b=rMX4udpou87/dMyYtxuBEITN16hHA/Zo8o2TlhTPlIygbZl6z7KernsLRVpJZE30os
         nxWVDy4F5itGeEg6TRTz+Ebl47BIi6WLneB5zYOu+TNNhvuP05eHGOq7j+J3y8gAhysC
         hkQOthsmZyFmZ5VGlgNGnUax+nMzbuUSBNeDh11YRTt94HGVY26tsbOE+ueSRXpoYWH8
         cDmHePVUeO+ciKXWUwjYJuP7GJvT3+vKCutuVuGrFI49KDDaPVblzV7wYgaTBIqE3unl
         aNt+syzBfxXZFvuNuUjCVslK5TjEW33Mr/NsqRhcveIrRtmCeWPTSMFELqVq3E8Kx8LY
         wu5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=LR1jokTPNfZdaQx4RsVd5kNVB3iuwIFLiQ16gG4Njr0=;
        b=phoVA7kK78n13ixcP67PW/kHk2wUYPaPUnPQGlQX67w28BQ+Gt1N1+VZo71GMcmMdA
         EX+fdNNfb/8PO2hQZHuDOeD/BBuAVFOER96OpLhALgNdjuPmm7fVjmCfsToC3dZp37sk
         GxFq+1Or442N950sODKzalPE7W4w0KXoJ7vtm6gb7pAz8X6vrU0h6j/9y8KCzzftB9sO
         G6neQJc3CW44g/Q8dmyucPbP0BSjDB6YoCxZn2kyOm1f8ZNWXGUc4Ok5zwvxeMmExgkI
         HIcbAAfuucpziYdpxhOz5VywVJ8IgZioNLcfM8NnTK1HvKes1TzO0WFhk1i22UYiZzdJ
         2x5Q==
X-Gm-Message-State: AMCzsaVyeazKx0S+vCffbneTcq+4T2DrFfpEb88Eigg2L9zdrYZn91/S
	u2nQxkwKWo+fMnVl/p//1sR421LL4Oupup7j/mnrfQ==
X-Google-Smtp-Source: AOwi7QC0uo6hA6cj7y2j3WMuGzI7rCzk26X4XpzwXQnPCD4WSbvFqsrWjXJ6b4r3fJLDVnsAJ8OzU0GqG+51fnQwK6E=
X-Received: by 10.176.80.3 with SMTP id b3mr5529670uaa.1.1508069317138; Sun,
 15 Oct 2017 05:08:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Sun, 15 Oct 2017 05:08:36 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1710151334180.2089@hadrien>
References: <1508067107-13649-1-git-send-email-aastha.gupta4104@gmail.com> <alpine.DEB.2.20.1710151334180.2089@hadrien>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Sun, 15 Oct 2017 17:38:36 +0530
Message-ID: <CAHXiS59YOCeCxGEHjvU9Ej4C8opDJt4+coYORjZibuGPQ6iSsA@mail.gmail.com>
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

I don't know why the alignment gets like this when I send it.
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

