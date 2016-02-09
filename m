X-GM-THRID: 6249299693524746240
X-Received: by 10.112.201.104 with SMTP id jz8mr4165457lbc.13.1455028585183;
        Tue, 09 Feb 2016 06:36:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.87.194 with SMTP id l185ls768044lfb.96.gmail; Tue, 09 Feb
 2016 06:36:24 -0800 (PST)
X-Received: by 10.112.219.138 with SMTP id po10mr4065559lbc.5.1455028584584;
        Tue, 09 Feb 2016 06:36:24 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x22a.google.com (mail-wm0-x22a.google.com. [2a00:1450:400c:c09::22a])
        by gmr-mx.google.com with ESMTPS id w128si550733wmd.0.2016.02.09.06.36.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 06:36:24 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) client-ip=2a00:1450:400c:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22a.google.com with SMTP id g62so25638027wme.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 06:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=5Ogg1WilQ+LMcyFT9XLM8Rs4Z7sSOoRuQtpm3FyVzc4=;
        b=UZoRbh5/YSKmJdKNTqjvKIndSwLvI7f6LpVIZGuEXW2CpL+aruPvOAeM7imGTRCfo8
         XuEqZ/lBCpru6Gzp3Ho3yWip886i2gqfoXkvV3ViL2zCJc5t//QBLnXnBzSZTKp2Eu//
         e/6tNuvp6GqCURtqC9cX9p+SJpXaoxjVnAE6i56J0/4MquRxMrvjnwnJX6GztW63ALLw
         d+28MhoAtLR1tq8gCsQ8N56EIpHzkAKNbvD4waar4f1LKs1SO2UGlcgvzbA580ifC/rF
         dRGKpMcSxsh2YCCQhVDeGQ1YGINumvoHBR1CEXkbnhp7kpIL26BchT77+DlNrH+YIQP3
         2xBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=5Ogg1WilQ+LMcyFT9XLM8Rs4Z7sSOoRuQtpm3FyVzc4=;
        b=A7tkJqUFES/jDZ5RsceCqySsol/34o08NPjuQ/3rt/lM+dxD0Tf47n4NEzTEAazW9s
         6NjUz7Iv8/3GW4zXs4j7uIEIxv1x4/rPuaLuKk8kHAcFud2HQah9cW5nwLg+ElYhmAh1
         I+bZ+JhqtMpy+aXhSiHG6iXTl3cdv8H+G/eZTO1RHczehaYGhgYK7HI4PyC6LiqPxlgn
         nGGycW2ucc+4mYaGXxUFHRSQS4p1yCOgy58cMkZGXVGX5Z8Yg8DTt/DSHtXJWEIsOwsM
         kkOFlq7+cwgqoLbw0ovmnlM/gvrvU740MfrozqDKFt1SgF3SaPaptUGTIfvMmJ5Ae4DB
         7GxA==
X-Gm-Message-State: AG10YOQ9f6u/Go4ocZjlLtlWsb8/GMqFfFTQxgrqKuq6I7nVWxWLg99L/45ExfBC8qTNlQEArAqU4XjThCTvEg==
MIME-Version: 1.0
X-Received: by 10.194.88.195 with SMTP id bi3mr33122311wjb.34.1455028584459;
 Tue, 09 Feb 2016 06:36:24 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Tue, 9 Feb 2016 06:36:24 -0800 (PST)
In-Reply-To: <20160209193352.GA6417@janani-Inspiron-3521>
References: <20160209193352.GA6417@janani-Inspiron-3521>
Date: Tue, 9 Feb 2016 16:36:24 +0200
Message-ID: <CAEnQRZD=hq5UA0D72PkAjDV5Gr9MLuDcGKd7UCu6+071Z5X=cA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: Use kcalloc instead of kzalloc
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 9, 2016 at 9:33 PM, Janani Ravichandran
<janani.rvchndrn@gmail.com> wrote:
> Use kcalloc rather than kzalloc when multiplied with size to prevent
> integer overflows. This change also makes code nicer to read.
>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/rdma/hfi1/efivar.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rdma/hfi1/efivar.c b/drivers/staging/rdma/hfi1/efivar.c
> index 7dc5bae..feef163 100644
> --- a/drivers/staging/rdma/hfi1/efivar.c
> +++ b/drivers/staging/rdma/hfi1/efivar.c
> @@ -83,7 +83,7 @@ static int read_efi_var(const char *name, unsigned long *size,
>         if (!efi_enabled(EFI_RUNTIME_SERVICES))
>                 return -EOPNOTSUPP;
>
> -       uni_name = kzalloc(sizeof(efi_char16_t) * (strlen(name) + 1),
> +       uni_name = kcalloc((strlen(name) + 1), sizeof(efi_char16_t),
>                            GFP_KERNEL);

there is no need for parenthesis around first parameter:
-> (strlen(name) + 1 ).

>         temp_buffer = kzalloc(EFI_DATA_SIZE, GFP_KERNEL);

