X-GM-THRID: 6474166398714118144
X-Received: by 10.28.229.82 with SMTP id c79mr616402wmh.13.1507392886394;
        Sat, 07 Oct 2017 09:14:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.50.138 with SMTP id y132ls338730wmy.9.gmail; Sat, 07 Oct
 2017 09:14:45 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB5JNH6xsdUI5Wm0Kn7v9F9D6bBoDBUEOgCuuekYaVCazfEMdRL57SuG/d5T1ALdfO3gMg/
X-Received: by 10.223.157.136 with SMTP id p8mr56537wre.14.1507392885170;
        Sat, 07 Oct 2017 09:14:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507392885; cv=none;
        d=google.com; s=arc-20160816;
        b=NaN2gx7MMNJWfOMDxh++tYUYNRcTG1m/4jXdLA4opiA3sUXoYNQyci6PTZsQ6WjTR8
         2wY69YgUgNHBFaAJ6MOUrVyxG5hLL9m7jyjffQvStf/2NRcK1JbLEshoJS3pQRtSaVmC
         IAZu3KqP/0cF93KAlbY0Kv0UoP9BK12vg9+jy+Xe8/jIYYjN167S2TeOB0dfEPQY2hJW
         SW/lrDcVwgHnBGtfgppDIFswebQSP4dnVffjuTzbp4rAJcO19JdXY4G17enio5xPU/bi
         Ei2+rubpj6aEEeAnBM6YyTa2dVP4Lbf+8S39ZRoUFdlIgsCHfFIhmsW3KXXCYwS+YjIu
         9rxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=1N1TTE0qyvktNjjPmQSKxG5wlExZ7ZtTUEQKwx3HxvQ=;
        b=ovcaeajOFU6kdMIE3hmItR/H28vr1YElBfKjKC5hy0uQmUY3lBWwSFUOp1C9q/PqRm
         7MHZGGtussqI8gGeNPQbFXO2TymY2HdhMqvBjGgz3mHiXXy7T7e92IJW+gC77hQJPevd
         QYS3GnuNTVjrjLA1iW5xZRVFtyDPHRqR9AYCp7Yg/9vbuM9D0ZLXOs7KA1uiDFpkCcve
         aX6KCG0tGy1XXRFVnvYZSSPg7pbtGJRpJPiKyCZEjOCUo7KSFr63LgmxN7WGyVN16tR7
         KJqn57W7xGQSvu9yPXSRyHg1HEVGcquRpUp1raSCZNYsEnoAv9NSJJCFh4fXWjSouPzg
         a5oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p70si524147wma.1.2017.10.07.09.14.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 09:14:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,489,1500933600"; 
   d="scan'208";a="294905960"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2017 18:14:44 +0200
Date: Sat, 7 Oct 2017 18:14:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gregkh@linuxfoundation.org, linux-media@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: atomisp: pci: Eliminate
 use of typedefs for struct
In-Reply-To: <1507384322-16584-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1710071814230.2134@hadrien>
References: <1507384322-16584-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 7 Oct 2017, Srishti Sharma wrote:

> The use of typedefs for struct is discouraged, and hence can be
> eliminated. Done using the following semantic patch by coccinelle.
>
> @r1@
> type T;
> @@
>
> typedef struct {...} T;
>
> @script: python p@
> T << r1.T;
> T1;
> @@
>
> if T[-2:] == "_t" or T[-2:] == "_T":
>         coccinelle.T1 = T[:-2]
> else:
>         coccinelle.T1 = T
>
> print T, T1
> @r2@
> type r1.T;
> identifier p.T1;
> @@
>
> - typedef
> struct
> + T1
> {
> ...
> }
> - T
> ;
>
> @r3@
> type r1.T;
> identifier p.T1;
> @@
>
> - T
> + struct T1
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  .../media/atomisp/pci/atomisp2/css2400/runtime/spctrl/src/spctrl.c  | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/spctrl/src/spctrl.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/spctrl/src/spctrl.c
> index d9178e8..6d9bceb 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/spctrl/src/spctrl.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/spctrl/src/spctrl.c
> @@ -37,7 +37,7 @@ more details.
>  #include "ia_css_spctrl.h"
>  #include "ia_css_debug.h"
>
> -typedef struct {
> +struct spctrl_context_info {
>  	struct ia_css_sp_init_dmem_cfg dmem_config;
>  	uint32_t        spctrl_config_dmem_addr; /** location of dmem_cfg  in SP dmem */
>  	uint32_t        spctrl_state_dmem_addr;
> @@ -45,9 +45,9 @@ typedef struct {
>  	hrt_vaddress    code_addr;          /* sp firmware location in host mem-DDR*/
>  	uint32_t        code_size;
>  	char           *program_name;       /* used in case of PLATFORM_SIM */
> -} spctrl_context_info;
> +};
>
> -static spctrl_context_info spctrl_cofig_info[N_SP_ID];
> +static struct spctrl_context_info spctrl_cofig_info[N_SP_ID];
>  static bool spctrl_loaded[N_SP_ID] = {0};
>
>  /* Load firmware */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1507384322-16584-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

