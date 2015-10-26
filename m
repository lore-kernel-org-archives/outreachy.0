X-GM-THRID: 6210016168421359616
X-Received: by 10.66.248.199 with SMTP id yo7mr16585964pac.38.1445882397110;
        Mon, 26 Oct 2015 10:59:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.231.167 with SMTP id th7ls1657014obc.46.gmail; Mon, 26 Oct
 2015 10:59:56 -0700 (PDT)
X-Received: by 10.182.95.101 with SMTP id dj5mr18501109obb.13.1445882396815;
        Mon, 26 Oct 2015 10:59:56 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22f.google.com (mail-qg0-x22f.google.com. [2607:f8b0:400d:c04::22f])
        by gmr-mx.google.com with ESMTPS id y206si1797437ywd.6.2015.10.26.10.59.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 10:59:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) client-ip=2607:f8b0:400d:c04::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22f.google.com with SMTP id m9so126019696qge.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 10:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=eOtaDzqJhmsvADzASErXeqR0Jn4n47NijtyzjBWcRAM=;
        b=G0DVbUD/XcR3YSXFSDnyInPmSAR2SxrL48ZvMtjXjymte9xhNamNerAH3bybmFij8N
         vQyieYKoTIZ3izzwa2gAIzLgx9+nwThjYa0HjitXJoh3enHH8y8i2lOXbLdfHPO2m7Wf
         o7+gYg4oZHqiedZ5Kok0bYXtqZWmerQyY26PSISVGlX2OUdBeegzhGtCrm/aTwWzVlnX
         ML6L5RghuDvXMxozrvES+wUPkBvFLQoVny93XJgh2gwNWZeePwEOcfjlx3fgbZ+29UsE
         IjCufmZVcWlkX56VRBSqhiw1cvLrzAGm1gihM0xlZgJtqDhJq9BFGXdQAtbOCj7R1DEg
         HQ3g==
MIME-Version: 1.0
X-Received: by 10.140.129.22 with SMTP id 22mr46825699qhb.74.1445882396596;
 Mon, 26 Oct 2015 10:59:56 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Mon, 26 Oct 2015 10:59:56 -0700 (PDT)
In-Reply-To: <61769b6c8202e531f0e36279c7614243ad816a29.1445881808.git.amitoj1606@gmail.com>
References: <cover.1445881808.git.amitoj1606@gmail.com>
	<61769b6c8202e531f0e36279c7614243ad816a29.1445881808.git.amitoj1606@gmail.com>
Date: Mon, 26 Oct 2015 23:29:56 +0530
Message-ID: <CA+5yK5EWxzYAmGHqxFZe+J=tfPps+cAeVu4Ao+y_U+cwqnFNYg@mail.gmail.com>
Subject: Re: [PATCH 3/3] staging: sm750fb: sm750: Remove unnecessary variable
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 26, 2015 at 11:28 PM, Amitoj Kaur Chawla
<amitoj1606@gmail.com> wrote:
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index 494017f..25a64dd 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -1302,7 +1302,6 @@ static struct pci_driver lynxfb_driver = {
>  static int __init lynxfb_init(void)
>  {
>         char *option;
> -       int ret;
>
>  #ifdef MODULE
>         option = g_option;
> @@ -1312,8 +1311,7 @@ static int __init lynxfb_init(void)
>  #endif
>
>         lynxfb_setup(option);
> -       ret = pci_register_driver(&lynxfb_driver);
> -       return ret;
> +       return pci_register_driver(&lynxfb_driver);
>  }
>  module_init(lynxfb_init);
>
> --
> 1.9.1
>

This missed the commit message. Resending. Sorry.

-- 
Amitoj

