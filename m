X-GM-THRID: 6256670345142468608
X-Received: by 10.28.48.88 with SMTP id w85mr1062641wmw.5.1456745560391;
        Mon, 29 Feb 2016 03:32:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.170.74 with SMTP id t71ls509325lfe.20.gmail; Mon, 29 Feb
 2016 03:32:39 -0800 (PST)
X-Received: by 10.112.132.97 with SMTP id ot1mr1483799lbb.10.1456745559628;
        Mon, 29 Feb 2016 03:32:39 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id w128si540577wmd.0.2016.02.29.03.32.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Feb 2016 03:32:39 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id n186so44329952wmn.1
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Feb 2016 03:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=tjOOZ6xfSuenjgKedKpXhz/k3XBU8pIOiJ2ktddTpps=;
        b=CTRP75MoK5QziTWR4QQaCiXtJudvtXrDlPJFaS/XjNFAhd8iyUJgJwOkB7MONmkzqN
         0udbZ7m4X0qN9H6vYJ8x9T70QnhqMDtC7AHyQqbSAAp1IwY86Ho/olWgoUr0h+srfjJM
         qfWZGtp5foNjT4jvmabIDYpgFv960szqJPFKhAhsk+xtD2b9bqGyyeKDr0B57J268s+R
         GS3fBjK7dSgdvEZO8Ch1+NbXG1ICJD8uKrX/oLjAhxGsPDBJ0WBMocDJonIEfFO6Ho1Y
         khHNoD+wCOaxAOytBg+YPYS9/4rl+uj9z3W5TY9p0cuTw/Ff2LCpeQ74nvLTjPOAVQh9
         FakA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=tjOOZ6xfSuenjgKedKpXhz/k3XBU8pIOiJ2ktddTpps=;
        b=dYvCdw6g4riXyKZg/0Om26x8dOico+YVOMI+yDYpUlj04KegD3IQ6ldbt9Jg/zWcEW
         IfCdbofeW+xHDPctGntDbbjdrtzzWTPDx/t+U+m7TpJ0JQ/0FUMTHVstifmeWyEhGmyH
         ru+eWHvKDdsCerR1MNOaa0JlQSIbuwjepv4U9tO4ynIAm+r6Z6ITZChkbKR5J9dzLKC8
         jsxk5HG2F5qhUjM74cnDxStsKQFzxI/EDY+yWANV9VHQBHErlVBhbHTtSciGZRx1c0bH
         k80ee86mYHL4VaiyWY0/nL72yp1FqmVmhjlU5iuzb0v+jT1GTsppKlKD3xymksZ+G3Ri
         IcHg==
X-Gm-Message-State: AD7BkJLrIaa3annDHr4cgVvWxkAUJQntsYgYfye5YcKlAy6MP0sDt5eVAhrCGSuHzVIShR+3XIowAbHMK7I+kg==
MIME-Version: 1.0
X-Received: by 10.194.123.102 with SMTP id lz6mr16275426wjb.2.1456745559484;
 Mon, 29 Feb 2016 03:32:39 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Mon, 29 Feb 2016 03:32:39 -0800 (PST)
In-Reply-To: <20160229111620.GA9474@domino-MS-16Y1>
References: <20160229111620.GA9474@domino-MS-16Y1>
Date: Mon, 29 Feb 2016 13:32:39 +0200
Message-ID: <CAEnQRZC=e5vL8dXG9H5aZf05VcemsA8EmgYzx4h89U3sZjwH=g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging:wilc1000:coreconfigurator.h
 Remove an unnecessary typedef keyword
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 29, 2016 at 1:16 PM, Muraru Mihaela
<mihaela.muraru21@gmail.com> wrote:
> This patch fixes these warning messages found by checkpatch.pl:
> WARNING: do not add new typedefs
>
> Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index 63eca24..1e1892f 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -50,7 +50,7 @@
>  #define MAKE_WORD16(lsb, msb) ((((u16)(msb) << 8) & 0xFF00) | (lsb))
>  #define MAKE_WORD32(lsw, msw) ((((u32)(msw) << 16) & 0xFFFF0000) | (lsw))
>
> -typedef enum {
> +enum {
>         SUCCESSFUL_STATUSCODE    = 0,
>         UNSPEC_FAIL              = 1,
>         UNSUP_CAP                = 10,
> @@ -70,7 +70,7 @@ typedef enum {
>         CONNECT_STS_FORCE_16_BIT = 0xFFFF
>  } tenuConnectSts;
>
> -typedef struct {
> +struct {
>         u8 u8Full;
>         u8 u8Index;
>         s8 as8RSSI[NUM_RSSI];

Also, please re-compile the code before sending a patch :)

Have a look at http://kernelnewbies.org/Outreachyfirstpatch in the section:
"Compiling only part of the kernel".

Daniel.

