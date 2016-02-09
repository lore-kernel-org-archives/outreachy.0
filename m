X-GM-THRID: 6249320187876605952
X-Received: by 10.28.226.132 with SMTP id z126mr678461wmg.2.1455033358401;
        Tue, 09 Feb 2016 07:55:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.148.206 with SMTP id w197ls757526lfd.26.gmail; Tue, 09 Feb
 2016 07:55:57 -0800 (PST)
X-Received: by 10.112.204.97 with SMTP id kx1mr257104lbc.0.1455033357807;
        Tue, 09 Feb 2016 07:55:57 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id e130si416409wme.2.2016.02.09.07.55.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:55:57 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x232.google.com with SMTP id p63so29080082wmp.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 07:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=04Dewr1+YWIFQRzkmde5XdP7y4qPDMa2b15iZjdThvc=;
        b=Z8600uKBMJytaGB912XaWw1NSbm2mQZDn9DFMcWTcQyCwp58vglGCmAcPmttdQQsQY
         rrXg4hbUGlUIv8cwmca1tEUt6dZAZTYVNewzgwc6eCLdUaJmVKdRzdvHRaXH2A5eai0M
         6gz3nEUKC3vQ1clqA8zkXnw2f1MncEQjv5InKxc/sktVLrNZLxzj0hTYsWd4urtCmbdI
         MsDtVP94l0Pf6AR4qEU2IxDetnV05eJBJ2JFz7J2e6ROzWhXkSThmdnjQdMgxOuZNeqf
         9Uk24lelNfI/0zBvGogHo/N/AH0ooflAKyRUs82DKFxtumF1wssF8C3F6MVo2fYq3ucS
         zmjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=04Dewr1+YWIFQRzkmde5XdP7y4qPDMa2b15iZjdThvc=;
        b=UncQe1JGvOctuKHQxhL0X3KAD2qdxB2KyvT9+Pz4fE4dw/cuEQ7oRcMWVNnIjhsbxd
         f3+e36yo3gjjgKmyiMYDiuNNU7XqFXOlCH4IkNysGNCK89careunEawBFf2CD7nNkmdR
         QvgxVWdv3IPr13gBSxV/9W2z6DTcMB2n/tOowujNKnF8g0N+q7iRKLHxw1hyWAVHI9MK
         ueH2DBijCYSLAlaN4x5HmQ3wm/gvEBVj28eVBTg1810sXBRzMWBmyr40GCqk2aWnJsp/
         +vT7usK5ckun34JNxLDoILWnyusLkBU5wCKs9GNk8uDVHhRre3FQ4Z7dHjdwiZ4dKdL/
         4/cg==
X-Gm-Message-State: AG10YOSvsKJ53bHPF1uWCBhjp4qI+a8CC3+DqjMK6Dup9woVq4tS8orT/HOXCoKVW/eRJ9ExYVDoBKROzWAIVQ==
MIME-Version: 1.0
X-Received: by 10.28.139.205 with SMTP id n196mr6133638wmd.0.1455033357670;
 Tue, 09 Feb 2016 07:55:57 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Tue, 9 Feb 2016 07:55:57 -0800 (PST)
In-Reply-To: <1455033212-16140-1-git-send-email-rakhish1994@gmail.com>
References: <1455033212-16140-1-git-send-email-rakhish1994@gmail.com>
Date: Tue, 9 Feb 2016 17:55:57 +0200
Message-ID: <CAEnQRZDfqzRmAxwsMFehNOdBx6813BNncTC_x-jq-JhEUtKtjQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] drivers: staging: lustre: lustre: lov:
 lov_request: Fixed a coding style warning.
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Rakhi Sharma <rakhish1994@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Julia Lawall <Julia.Lawall@lip6.fr>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 9, 2016 at 5:53 PM, Rakhi Sharma <rakhish1994@gmail.com> wrote:
> Fixed a coding style warning.
> WARNING: braces {} are not necessary for single statement blocks
>
> Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> ---

Better not touch this. At some point someone will implement the FIXME.


>  drivers/staging/lustre/lustre/lov/lov_request.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/lov/lov_request.c b/drivers/staging/lustre/lustre/lov/lov_request.c
> index 42deda7..c77b987 100644
> --- a/drivers/staging/lustre/lustre/lov/lov_request.c
> +++ b/drivers/staging/lustre/lustre/lov/lov_request.c
> @@ -340,9 +340,8 @@ int lov_fini_destroy_set(struct lov_request_set *set)
>         if (set == NULL)
>                 return 0;
>         LASSERT(set->set_exp);
> -       if (atomic_read(&set->set_completes)) {
> +       if (atomic_read(&set->set_completes))
>                 /* FIXME update qos data here */
> -       }
>
>         lov_put_reqset(set);
>

