X-GM-THRID: 6613205640541110272
X-Received: by 2002:ac8:3432:: with SMTP id u47-v6mr25020996qtb.39.1539888750726;
        Thu, 18 Oct 2018 11:52:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:4408:: with SMTP id j8-v6ls11109867qtn.15.gmail; Thu, 18
 Oct 2018 11:52:29 -0700 (PDT)
X-Received: by 2002:ac8:35fa:: with SMTP id l55-v6mr25404978qtb.35.1539888749805;
        Thu, 18 Oct 2018 11:52:29 -0700 (PDT)
Received: by 2002:a37:97c7:0:0:0:0:0 with SMTP id z190-v6msqkd;
        Thu, 18 Oct 2018 11:38:45 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62goI3IpZIPnsTW2xQsBT8t3i38RDUXrABdE9+h0g32QHu93fEY3CGBxSqxbVtx9GVfP+my
X-Received: by 2002:a1c:b606:: with SMTP id g6-v6mr44410wmf.13.1539887925225;
        Thu, 18 Oct 2018 11:38:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539887925; cv=none;
        d=google.com; s=arc-20160816;
        b=O/7tBGgzPUCMPpGF4ULpef1ksmue19jyofPLN5hbl68vCBTZwyCDfvh1FvcBmFVzyl
         2pZsdR1P84mNj5iM+gS+2alfpLBkfb8pYOuHeF03brG/z3gY7SIscRpQNZJAGGUI5ty6
         3oOG0Ez99g8IcoYTaR/Jkd7ED10QS/26sSbC+FrzJ0Jx/esBMAE2nlKh7xx2wdLLJRvb
         04WudEvV06WwFBcnn17ndUZAiIDyDtwkPftm3f59Np0NgxyYKFjWSPq1/VZUWKC59VDY
         onyXteb9nMe/ij8db7dUcW17cmQR36oLqGhf1RSTGzd8F5G2L4/wYznV1LxgNQT3VcWx
         x8PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vXnVhm4qQQP+OlCjdMklIrnj58Hb7/NEuWGjRieHX18=;
        b=kV611H3LSi//1YhNiJksMBGgzddooRRNBtLtVjAGfQuT9mZ5C7Ie7Jz94tRJeod7b4
         94MQniIbrEbO3MuTx9mpvSVjOqlRl65tz6xN7UsJV8HBRoCfzzdlIYq/8Bv9V4u0mR8r
         OVe+OscZt4EgnHyAw0deg+GQQr2BGTTkmy+sk+36sZ36BNQeAD2SJLiEPOy+W3Z8WcLt
         wYhA6Pp5l4pmQ5lD5MkrrHBt0blefgRydnwfaz0LfwWugUVD0c0HK7SwAMknpq1kKBX7
         4e9TaRMqsndN69Xt+JtyzJS+NucqkPa8ghIz8Kfqsyo7UJxFA60yCezN8iSidE7rkHPr
         nMqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BmIlXILd;
       spf=pass (google.com: domain of toddpoynor@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=toddpoynor@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Return-Path: <toddpoynor@google.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 191-v6si131109wmv.0.2018.10.18.11.38.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Oct 2018 11:38:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of toddpoynor@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BmIlXILd;
       spf=pass (google.com: domain of toddpoynor@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=toddpoynor@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: by mail-wr1-x441.google.com with SMTP id e4-v6so34792026wrs.0
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Oct 2018 11:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vXnVhm4qQQP+OlCjdMklIrnj58Hb7/NEuWGjRieHX18=;
        b=BmIlXILdvE+LmSTHrcL8+USdGvxaSUR3BUP4oSWp9ma8ZQZO+FwXNUV592HY0xxSko
         BluskP/iBsZ+rrIr6Otr6648G0kJ6iAlzyigziBuRR9kEleNmWW3J5wX5OwaPidsLLUZ
         AvSpcyOJSp4q9fg2G644f3cE4gFHiwi3nAMAsCifLfV56Getg91rLv5ZCh4I8gSc+3As
         UjJQmXfXOW1vvIu3gnss5/h8xD8YRNj8YUH7iNF45WUxABXPHaNB5UysOi7FzSdP9dDm
         m/0BucKzOnanv7wEZGqd5wpSUqF0eA2LB/3wVQK/a6fNVffrc3DQVbcgOP8k6P6kq6Dw
         XPMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vXnVhm4qQQP+OlCjdMklIrnj58Hb7/NEuWGjRieHX18=;
        b=nRMHg0ipEfpMTdX1iShvyfeB52bM+xHZiissxZFcWegOsY9XJOxJJvAlhdVHIq7zih
         7ObY/j7krrY9s9p4Ric74790J1Y54JVoR5rgAQGkJcKnh/x/QPzCYDG8wjtkk+Jxy5bE
         qprAtxuVbi9i2Hny+Mc4b+4J2SfDmfp4GJ7ELqZ8isp2QCqNNVJkb8l556dmdd9GKSFV
         ChIe6HxKugDU9A9HgMsvRmnQq7cdJHt7bnAieDX4ScO3fVgJ0jViOvInNs/9xZFzvcef
         EU/ASsiyr8gOHpuCmfCKre4P3n0OLHzuSuHYogpcBw+Di6Nm/pt44uJlWB/922Ihi0cZ
         GsdQ==
X-Gm-Message-State: ABuFfojG6NmcQ6kb2v7UYVefvLhCfLb7wrGesa3JkqCa/W+QHRMIEZ3Z
	myUcCDhI+21U6v6TCc3GTVZrI5Kjs7DqY/q7UcA9TQ==
X-Received: by 2002:a5d:6883:: with SMTP id h3-v6mr30305332wru.108.1539887924565;
 Thu, 18 Oct 2018 11:38:44 -0700 (PDT)
MIME-Version: 1.0
References: <20181017061519.GA3289@k-vBox>
In-Reply-To: <20181017061519.GA3289@k-vBox>
From: Todd Poynor <toddpoynor@google.com>
Date: Thu, 18 Oct 2018 11:38:32 -0700
Message-ID: <CAAW3Ypa7Dh7rS6YtgLxCOT1UrCyrPLwe0fAOND=fJuLek+Bc0A@mail.gmail.com>
Subject: Re: [PATCH] staging: gasket: Remove extra blank line
To: m.maya.nakamura@gmail.com
Cc: Rob Springer <rspringer@google.com>, benchan@chromium.org, 
	Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 16, 2018 at 11:15 PM Maya Nakamura
<m.maya.nakamura@gmail.com> wrote:
>
> Remove extra blank line. Issue found by checkpatch.pl.
>
> Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> ---
>  drivers/staging/gasket/apex_driver.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
> index 3c7a13a4798e..0578bf1ba1e9 100644
> --- a/drivers/staging/gasket/apex_driver.c
> +++ b/drivers/staging/gasket/apex_driver.c
> @@ -225,7 +225,6 @@ static struct gasket_interrupt_desc apex_interrupts[] = {
>         },
>  };
>
> -
>  /* Allows device to enter power save upon driver close(). */
>  static int allow_power_save = 1;
>
> --
> 2.17.1
>

Acked-by: Todd Poynor <toddpoynor@google.com>


Thanks!

