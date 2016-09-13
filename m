X-GM-THRID: 6329536989610639360
X-Received: by 10.129.39.134 with SMTP id n128mr17916374ywn.17.1473739900800;
        Mon, 12 Sep 2016 21:11:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.234 with SMTP id e97ls396517otb.40.gmail; Mon, 12 Sep
 2016 21:11:40 -0700 (PDT)
X-Received: by 10.237.40.5 with SMTP id r5mr18882337qtd.20.1473739900431;
        Mon, 12 Sep 2016 21:11:40 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-ua0-x243.google.com (mail-ua0-x243.google.com. [2607:f8b0:400c:c08::243])
        by gmr-mx.google.com with ESMTPS id v141si1446307vke.1.2016.09.12.21.11.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 21:11:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) client-ip=2607:f8b0:400c:c08::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x243.google.com with SMTP id v13so244410uav.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 21:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=tQK+Ig02LTeb2fJIrScOg+abW9hBH17fbnoJ5/u/i7E=;
        b=rPI9iI/8zisGZKPjfUBLtqnaqk+RCtWsgxIAy2DPDVHnA3kUx9XkxapVzcmBweGWwU
         04IgOJnFgFNCPK/okK1mA5CZn4Zpl/WmF00SJoWHkYER5qBZF0ZTdg+96iFtkT3w7Sdy
         w8G9W/E72VXXo+oIdWKrt0skDKV1j38yyTyx5cD9KLFV4EfRJRr/RAezCFD+lsM5b3JP
         4RdVNQNUovkRQg+gPtH7eBihuCdYAxl5LDLCwcnpDc2r9xLq+xJQVGBkFVrInZIFCkqm
         vtW3DW6y8ZP2MIdYfpCSa6RST9ZSc4cMMEkgcHedtwY8xUpTah+e+vC2wHQNYeM9288P
         SKhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=tQK+Ig02LTeb2fJIrScOg+abW9hBH17fbnoJ5/u/i7E=;
        b=OyEQFfOJnc4+yEIfCLowH1lxEWJxbfMyr7JnJQCkbwtpE0jFCTOLLoD5z0bemButll
         sejmoKIFnuIflqHjRn5O7wuORV5Dj65OPSUPaBOo9wJ4eGpRpI/Y5SVU1+zXGFOGEY+T
         U8vgbcIrKIiNTbDmseAgqi7Cl+MFoyvCCXi/rU2X1/dZLOXgKphxvp579sbCoTEZ67dE
         h5ERrLk0mQEp6NuLX/0sMoFHcWfAneRXL0+pd6gPpMUR65Uq0HqPPj6bxZnFIjUvIF9E
         U3N8/7zE+jlitfc1RE47VZ2IWjxXW9QL3x9wW4DWKn9f42iQqtjpqrydDrvdhnzYXqr8
         fIgA==
X-Gm-Message-State: AE9vXwNwy6AhpuxL/jOy3/b/g2f3XSRhx/+3o9ez5pt8+/ePFE0gnhvK6cym5lOxTzGMhfLZ9AM6mCcEfQ1s8A==
X-Received: by 10.176.4.16 with SMTP id 16mr1184541uav.92.1473739900159; Mon,
 12 Sep 2016 21:11:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.81.3 with HTTP; Mon, 12 Sep 2016 21:11:39 -0700 (PDT)
In-Reply-To: <20160912195642.GA2775@sandhya>
References: <20160912195642.GA2775@sandhya>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Tue, 13 Sep 2016 09:41:39 +0530
Message-ID: <CAK-LDbLo8usgPkJsEEii6wb8BnfBn_NSv5s+sqNmx9SXOcvKVQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: bus: Space required before
 the open parenthesis '('.
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 13, 2016 at 1:26 AM, Sandhya Bankar
<bankarsandhya512@gmail.com> wrote:
> Space required before the open parenthesis '('.This patch is found by checkpatch.pl script.

Commit log contains more than 80 characters in the single line. Usually we
follow 80 characters rule for the commit log, subject as well.

Normally is useful to run checkpatch.pl on your patch. You can do that with
following command after creating patch:

scripts/checkpatch.pl <file.patch>

> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/bus/arm-cci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/bus/arm-cci.c b/drivers/bus/arm-cci.c
> index 9e1020f..99513f7 100644
> --- a/drivers/bus/arm-cci.c
> +++ b/drivers/bus/arm-cci.c
> @@ -2271,7 +2271,7 @@ static int cci_probe(void)
>         struct resource res;
>
>         np = of_find_matching_node(NULL, arm_cci_matches);
> -       if(!np || !of_device_is_available(np))
> +       if (!np || !of_device_is_available(np))
>                 return -ENODEV;
>
>         ret = of_address_to_resource(np, 0, &res);
> --
> 1.8.2.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160912195642.GA2775%40sandhya.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

