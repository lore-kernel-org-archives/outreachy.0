X-GM-THRID: 5879750459392
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,aadbcec2bdab4f9c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.39.164 with SMTP id q4mr2106430wik.5.1425295363486;
        Mon, 02 Mar 2015 03:22:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.179.139 with SMTP id dg11ls432015lac.62.gmail; Mon, 02 Mar
 2015 03:22:43 -0800 (PST)
X-Received: by 10.152.19.100 with SMTP id d4mr3703188lae.7.1425295362997;
        Mon, 02 Mar 2015 03:22:42 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id i8si79798wif.1.2015.03.02.03.22.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 03:22:42 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22d.google.com with SMTP id n12so32792571wgh.1
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 03:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=NQQcCeJlLxq46Jx6PcQFRC/isr2MQ7qijk0DTVHymdo=;
        b=eQ1oj09CYc9LfWwBpVRER+cLmwGxfEwEs6UHr9F94NO3k3aLG1V2Z2s5xF037Ane5R
         1KErQqbKpGlp+8HJSyMUNFNXyvlKLJuaQ4O8e/KGNcNIRgRKTNwqkB3Oas1tTJFQGeTU
         rNIRcLQfuxGhFx0erRbO4NLXkZwAEcNQ7pZ4azlIJ/22SVK/uSkd1B3CO52MGNv1zs7d
         QAnIjJc38/avi1qf9EIkwznWtcZyuTfWFe1s+QY5dOZveLhcx0pvcqlU8D5hNy0bShzm
         MJMnDeCFkhR/CFpNl2gqRX34e72gzbl0PGH8119+2xGS0eAxexblVzW8Fh6wRKL4zEUi
         X5JA==
MIME-Version: 1.0
X-Received: by 10.180.38.76 with SMTP id e12mr33983383wik.76.1425295362925;
 Mon, 02 Mar 2015 03:22:42 -0800 (PST)
Received: by 10.28.3.68 with HTTP; Mon, 2 Mar 2015 03:22:42 -0800 (PST)
In-Reply-To: <20150302111756.GA17499@akanksha>
References: <20150302111756.GA17499@akanksha>
Date: Mon, 2 Mar 2015 13:22:42 +0200
Message-ID: <CAEnQRZC9WWvU4VEXJRdQwqz-4uOZ+zMxeU0kfie2u6Qp+UECzA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Replace if-else with
 ternary operator
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 2, 2015 at 1:17 PM, Vatika Harlalka
<vatikaharlalka@gmail.com> wrote:
> This patch uses Coccinelle script to replace the if-else
> block with ternary operator to make it more compact.
>
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/comedi/drivers.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers.c b/drivers/staging/comedi/drivers.c
> index f32e714..8fda5f3 100644
> --- a/drivers/staging/comedi/drivers.c
> +++ b/drivers/staging/comedi/drivers.c
> @@ -363,8 +363,7 @@ unsigned int comedi_nscans_left(struct comedi_subdevice *s,
>                 if (async->scans_done < cmd->stop_arg)
>                         scans_left = cmd->stop_arg - async->scans_done;
>
> -               if (nscans > scans_left)
> -                       nscans = scans_left;
> +               nscans = (nscans <= scans_left) ? nscans : scans_left;

This doesn't look as an improvement to me. It even makes code harder to read.

