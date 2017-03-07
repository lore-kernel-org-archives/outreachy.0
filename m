X-GM-THRID: 6394809093953945600
X-Received: by 10.129.52.17 with SMTP id b17mr768372ywa.107.1488910764144;
        Tue, 07 Mar 2017 10:19:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.74 with SMTP id b71ls400723iod.32.gmail; Tue, 07 Mar
 2017 10:19:23 -0800 (PST)
X-Received: by 10.99.105.67 with SMTP id e64mr835387pgc.169.1488910763191;
        Tue, 07 Mar 2017 10:19:23 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id n127si229675ita.3.2017.03.07.10.19.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 10:19:23 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id f203so1432689itf.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 10:19:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=IjbSFwwMqTNExWGB1Pj1Yqc7AeiL0G1DFVqSZZP58RQ=;
        b=qQWCC2UGILGjFBm86wUjmV5wHLtjSVS33f/fA3DGLrGE2wK+hpmlHFBclR4ELxuFDK
         X/gn1kxEYgmuoRA7/ZPBSg1A3sr79Vz2dDhxIBiq3BM6dyTI8iVvnlk6Kd0yk4yRmSta
         Rg6ZBrK7DMsf3gwY3L5Cg27DDNkABfZE8FDdPJt+fRHBEE3S2dIXb+Dsdnxck5MxFL25
         Y6XmXbBeZ4z62YN8VrlPZuj8I4u4LDe0qsjIoO/+Wx5koBvseNXS4OvDL7wtlqkEKJ1Y
         07C9necUoZQTXvX4ktUpO64Bkan9fhtGgibXiVCnDc+J5q2rim87m44CfPS8VrebDel0
         37rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=IjbSFwwMqTNExWGB1Pj1Yqc7AeiL0G1DFVqSZZP58RQ=;
        b=evzuLZenEYXu44rXluUGP3U++t6qxvP/ni95ni+Ydt7K7HttxjWS1oVaCU3Rs1zSXz
         1ykx1BVR0akUTfF2d/iEfoBOc/AIdEMAU29P/ZFj7qwouLgTXdxyPCwwwh3RTjnB8XVH
         K83JtSJ9LS4L9m9jPcMX6FEdWp3F+sSI19uitb0JiXQBfFI9Q7Ij4nay3P84JsSsBrBV
         eIxhizECQX/CGa/ZjG2l/xVDwcZGmIsEfMV6YqAVtq2rOZkDXF3jHok/jOQ6kKo2ImTO
         egx0ui8b4GVaAJBjjEbO1IIzYoNXRdPhHDP1oGeqJEbLKjlJ96q1skLVuWviBQ+DAM7V
         wAcg==
X-Gm-Message-State: AMke39lUL7GWr20YQ0VJjt/7jLagyWitPfuNjxomNPutDv66sCIbzAPxSMrVKLP15i6Hi4e3MZphIu31Z0iDzA==
X-Received: by 10.36.129.133 with SMTP id q127mr22856071itd.89.1488910762812;
 Tue, 07 Mar 2017 10:19:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Tue, 7 Mar 2017 10:18:52 -0800 (PST)
In-Reply-To: <1488909854-30857-1-git-send-email-gs051095@gmail.com>
References: <1488909854-30857-1-git-send-email-gs051095@gmail.com>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 7 Mar 2017 23:48:52 +0530
Message-ID: <CAOCi2DHJUzwW+KgVeAJh7dcJvc1QJLhxbm2yh_dp=u4rMvza3g@mail.gmail.com>
Subject: Re: [PATCH v2] staging: gdm724x: Replace ternary operator with min macro
To: outreachy-kernel@googlegroups.com
Cc: Greg KH <gregkh@linuxfoundation.org>, Gargi Sharma <gs051095@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 7, 2017 at 11:34 PM, Gargi Sharma <gs051095@gmail.com> wrote:
> Use macro min() to get the minimum of two values for
> brevity and readability. The macro MUX_TX_MAX_SIZE
> has a value of 2048 which is well within the integer
> limits. This check was done manually.
>
> Found using Coccinelle:
> @@ type T; T x; T y; @@
> (
> - x < y ? x : y
> + min(x,y)
> |
> - x > y ? x : y
> + max(x,y)
> )
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
> Changes in v2:
>         - Made the commit message clearer.
> ---
>  drivers/staging/gdm724x/gdm_tty.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
> index ae39663..fc7682c 100644
> --- a/drivers/staging/gdm724x/gdm_tty.c
> +++ b/drivers/staging/gdm724x/gdm_tty.c
> @@ -190,8 +190,7 @@ static int gdm_tty_write(struct tty_struct *tty, const unsigned char *buf,
>                 return 0;
>
>         while (1) {
> -               sending_len = remain > MUX_TX_MAX_SIZE ? MUX_TX_MAX_SIZE :
> -                                                        remain;
> +               sending_len = min(MUX_TX_MAX_SIZE, remain);
>                 gdm_tty_send(gdm,
>                              (void *)(buf + sent_len),
>                              sending_len,
> --
> 2.7.4
>
The subject line doesn't say "PATCH v2" here. Please ignore this.

Apologies,
Gargi

