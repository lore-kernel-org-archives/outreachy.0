X-GM-THRID: 6950201228210995200
X-Received: by 2002:a50:d1d5:: with SMTP id i21mr28359568edg.15.1618222256808;
        Mon, 12 Apr 2021 03:10:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:515:: with SMTP id m21ls561678edv.1.gmail; Mon, 12
 Apr 2021 03:10:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyIIVQ5kpsPQ5DAJPTgBb24Xpc2Yw8JKACfoV0TKfZ4pOBRGFIwq5q7lJGBtHV4jwgdaVUf
X-Received: by 2002:aa7:df99:: with SMTP id b25mr26220320edy.190.1618222255223;
        Mon, 12 Apr 2021 03:10:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618222255; cv=none;
        d=google.com; s=arc-20160816;
        b=ZDpJWrWVN0YusBrolbsYqHoN9AEWbcJq1EDnv6rRjl5BsPfLkpqBzuL/AEh1y2sO+0
         7fQx/9+fEKukPRWsbtNFrHfHwkpSbzfa/uzBbMEQszvD44Hx0xtRsm/YBADYDn79zxZW
         CNs4NSQG9IqdiVjv+kpTDMPZPGd9jIE78Xi38mAKksZSJlA89XTrosgZUtRcyfyWkuFx
         SAqdYbPupbqVnPgnLy2TR/Yt+t4jtKqntL9DerqHAzLQq22i2sAVAtDXA5y9Csz+KTXm
         Y8JhEx5/uZgTrwK1wE7np2KNapJ5Idxy9frYQJChIMJVHERtxtIa32xX6ldBmUt4j5px
         2j2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=bfLFMKHhTg0Q1maDZf8MUYpZtVgvT18JYUwONSeo5RI=;
        b=swrtb6IYQMzbCWtRn4S010q29LGxpRdKzE2uHTzM2KD8S1Qe7PhhJYni3fFEbANHt+
         4/I8nJ1HYJGoXdB77sMFj+mU1HhLpKaWOwsHx3oRCl1AIBQ0k/fW9IpfwPnZ5ZxPyHnK
         x28vLQ42TgIVOwpJFnxK8dgHZIQJcFFEvf6tTXDhL6wJn7GtTVEGm4+76N0suboJfAly
         8skJJuuadYEWVWLrHgEQBDC0F2tKfdpLap8vFzj+zK+gt6kfiKSbGjlhwdAxz/L6TLYU
         DcfduIGNGT0SrlmpEtV4XXCwZPSaG3CXgGUa6nQevxYokvaydkK9uR6pWb7W4tfBdkzP
         NJlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ck26si926074edb.1.2021.04.12.03.10.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 03:10:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AKVLbDq5jqzvyzHwlgwPXwZCBI+orLtY04lQ7?=
 =?us-ascii?q?vn1ZYxY9SKClvuqpm+kW0gKxtS0YX2sulcvFFK6LR37d8pAd2/h1AZ6JWg76tG?=
 =?us-ascii?q?y0aLxz9IeK+UyDJwTS/vNQvJ0KT4FQE9v1ZGIRse/b502CH88k0J279smT69v2?=
 =?us-ascii?q?61dIYUVUZ7p77wF/YzzrcXFeYAVdH5I2GN69y6N8yAaIQngcYsSlCnRtZYGqm/?=
 =?us-ascii?q?TxmJ3rehIADRI8gTPusRqT9LX4HxKEty1/bxpzwKwv+WWAswv16rTLiYDD9jbg?=
 =?us-ascii?q?1nTe55kTpd35ytErPr3rtuEpLFzX5zqAVcBEU72GsCtdmpDJ1H8a1P/WoxkhOM?=
 =?us-ascii?q?xv63TeOkGNyCGdvzXd7A=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.82,216,1613430000"; 
   d="scan'208";a="502749185"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 12:10:54 +0200
Date: Mon, 12 Apr 2021 12:10:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: tawahpeggy <tawahpeggy98@gmail.com>
cc: Ian Abbott <abbotti@mev.co.uk>, 
    H Hartley Sweeten <hsweeten@visionengravers.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: Remove line to fix checkpatch
 error
In-Reply-To: <20210411204933.GA3524@peggy-Lenovo-V130-15IKB>
Message-ID: <alpine.DEB.2.22.394.2104121208530.6734@hadrien>
References: <20210411204933.GA3524@peggy-Lenovo-V130-15IKB>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 11 Apr 2021, tawahpeggy wrote:

> remove one empty line.CHECK: Please don't use multiple blank lines

Did something go wrong with the patch generation?  You say that you are
removing one line, but the diff information looks like you are adding a
file.  Normally a patch has only the changed lines and a few lines before
and after.

> Signed-off-by: tawahpeggy <tawahpeggy98@gmail.com>

You need to put your real name when contributing to the Linux kernel.

For example, I would put:

Julia Lawall <julia.lawall@inria.fr>

julia

>
> ---
>  drivers/staging/comedi/comedi_pcmcia.mod.c | 1 -
>  1 file changed, 0 insertion(+), 1 deletion(-)
>  create mode 100644 drivers/staging/comedi/comedi_pcmcia.mod.c
>
> diff --git a/drivers/staging/comedi/comedi_pcmcia.mod.c b/drivers/staging/comedi/comedi_pcmcia.mod.c
> index 0904b8765afs96..3984db1a39c8
> --- /dev/null
> +++ b/drivers/staging/comedi/comedi_pcmcia.mod.c
> @@ -0,0 +1,31 @@
> #include <linux/module.h>
> #define INCLUDE_VERMAGIC
> #include <linux/build-salt.h>
> #include <linux/vermagic.h>
> #include <linux/compiler.h>
>
> BUILD_SALT;
>
> MODULE_INFO(vermagic, VERMAGIC_STRING);
> MODULE_INFO(name, KBUILD_MODNAME);
>
> __visible struct module __this_module
> __section(".gnu.linkonce.this_module") = {
> 	.name = KBUILD_MODNAME,
> 	.init = init_module,
> #ifdef CONFIG_MODULE_UNLOAD
> 	.exit = cleanup_module,
> #endif
> 	.arch = MODULE_ARCH_INIT,
> };
>
> #ifdef CONFIG_RETPOLINE
> MODULE_INFO(retpoline, "Y");
> #endif
>
> MODULE_INFO(staging, "Y");
>
> MODULE_INFO(depends, "pcmcia,comedi");
>
> -
> MODULE_INFO(srcversion, "ED971F2E01020DFA2B04486");
> --
> 2.17.1
> h-Hartman <gregkh@linuxfoundation.org>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210411204933.GA3524%40peggy-Lenovo-V130-15IKB.
>

