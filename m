X-GM-THRID: 6474612206173421568
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.28.158.129 with SMTP id h123mr755510wme.17.1507489036941;
        Sun, 08 Oct 2017 11:57:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.157.208 with SMTP id q16ls653395wre.5.gmail; Sun, 08 Oct
 2017 11:57:16 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBwG6YNy8eIHkbrJc3xJhQUPp9CtwX4vs94mZO76hpdPRFeNST8GcEvu6UjpoeIr+ua5aWX
X-Received: by 10.28.21.65 with SMTP id 62mr916064wmv.22.1507489036073;
        Sun, 08 Oct 2017 11:57:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507489036; cv=none;
        d=google.com; s=arc-20160816;
        b=VGVz6X5WBt/UPDsFHnqNL8n94lDxpld1DuWMlxmOgwbKfXS0c1rdzbUUTtypry12Gg
         qGvv0G1/vtiW8JeeY7faO87YstmiKm68EmA9MFD2mHyi2kUebjLWUQxAUCtUHEmnjksn
         ay06lSahbkvOqQUg7MaE06dyfZmMr49UFOnT7UCzK0aRx8sMqX8bSppJQUC99+AMmHmo
         Tzyb6nBJx7biGBcZAGTqTSDqh6UgHTr7uFIYhzKE0xymD0SaJvzq9l6mqanoOXmRRqat
         CP1MvyujGzgx4cOZh69gOPLw7iojHuQgW9vAh6xt3TeWBz+Vi0XnfjjYxCqKbYq+1i0e
         ewVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=pSBSMN5yWv0VdlFWz6V727WHWjkIiBVQ/GyDm+mWYNE=;
        b=YpS62nSdyO8OJn8ArKoPteFsc/ZOSiFeQLeuC+lG1BYGylk483HNrx0GvIIhk+tGie
         WUY/glON2bmj9MaQH2nSt9VLnLgok4aeYxQ4VVFUZZRfoxB+6VeH5lr1HFgKnKzz5phm
         bKoaANdkQgWNTKukx9KeE56lOFut1twZnZGfFgS2yoeEOr+nIN5820mIqbVMChSQ6rp4
         ArSku58VppgaRxLyLntmibdkrau8P+n2XCmMFaXp7+jXlnNFVd90FszDxliLJ4P7Cp2Q
         xSJEa1dfNV9Xi9aQ41hSKi0f1SnXISiOYa0ynDFuAPoRmPDNUj95Vl2WTS1+AbPsCNwt
         AWgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h17si745707wmd.0.2017.10.08.11.57.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 11:57:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,496,1500933600"; 
   d="scan'208";a="295059320"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Oct 2017 20:57:15 +0200
Date: Sun, 8 Oct 2017 20:57:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: mamta shukla <mamtashukla555@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH]:staging:most:aim-cdev:Reducing number
 of blank lines, to follow the coding style
In-Reply-To: <f674ab2c-4484-41d9-ba71-6fafddc7792e@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1710082054500.2160@hadrien>
References: <f674ab2c-4484-41d9-ba71-6fafddc7792e@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1616909132-1507489035=:2160"

--8323329-1616909132-1507489035=:2160
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

The format of the subject line is not correct.  There should not be a : at
the beginning.  There should be a space after each :.  Run git log
--oneline on the file you are changing and follow the format of the
beginning of the subject line exactly.

On Sun, 8 Oct 2017, mamta shukla wrote:

> Reducing number of blank lines, to follow the linux kernel coding style.

linux -> Linux.

But the description is totally unrelated to what is done by the patch.
What is done by the patch looks quite incorrect.  You should not be adding
new files.

julia

> Signed-off-by: mamta <mamtashukla555@gmail.com>
> ---
>  drivers/staging/most/aim-cdev/aim_cdev.mod.c | 26
> ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
>  create mode 100644 drivers/staging/most/aim-cdev/aim_cdev.mod.c
>
> diff --git a/drivers/staging/most/aim-cdev/aim_cdev.mod.c
> b/drivers/staging/most/aim-cdev/aim_cdev.mod.c
> new file mode 100644
> index 0000000..0048f6c
> --- /dev/null
> +++ b/drivers/staging/most/aim-cdev/aim_cdev.mod.c
> @@ -0,0 +1,26 @@
> +#include <linux/module.h>
> +#include <linux/vermagic.h>
> +#include <linux/compiler.h>
> +
> +MODULE_INFO(vermagic, VERMAGIC_STRING);
> +MODULE_INFO(name, KBUILD_MODNAME);
> +
> +__visible struct module __this_module
> +__attribute__((section(".gnu.linkonce.this_module"))) = {
> +       .name = KBUILD_MODNAME,
> +       .init = init_module,
> +#ifdef CONFIG_MODULE_UNLOAD
> +       .exit = cleanup_module,
> +#endif
> +       .arch = MODULE_ARCH_INIT,
> +};
> +
> +MODULE_INFO(intree, "Y");
> +
> +MODULE_INFO(staging, "Y");
> +
> +static const char __module_depends[]
> +__used
> +__attribute__((section(".modinfo"))) =
> +"depends=mostcore";
> +MODULE_INFO(srcversion, "9D77257EA6146867C072D85");[cleardot.gif]
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/f674ab2c-4484-41d9-ba71-
> 6fafddc7792e%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1616909132-1507489035=:2160--

