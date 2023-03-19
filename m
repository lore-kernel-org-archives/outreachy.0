Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A208EE4C7
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 14:23:21 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id bc12so9322273plb.0
        for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 07:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679235801;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fKZnSBPAE8T+XMDotgJ0r+804xRINw51eYSOC3sGUKI=;
        b=RJtb902RNbYB/bCgCOhs3mm754bs7mq2r4EUNPr/bVjoW6NgzZn3l6DIjkdcHXO9CV
         QvFxhaqQZtQ/2GqqNwKUC5uKM1ntULvOZ2Y2uAVZJnotAdxCFbVxfII5RKjEw8G/TvXm
         aIdInb6/baahtgLR8IK0x8yz6Wp+2+RO8gZhlrSjnKD4Wg+cUW5Gs6Kx3TwZBAhu/rNE
         Pm69QJsDLiAziKwGFSowITWZHJvfZECFDoJoOYNqj3Muvg3cq2uYeTW6xlBuMi7N2J/x
         JRL6RcYXDIvU5gu9eSfNuJONHXZYn9FGjv1uNVyNSCl+BRpiIotTOrRIN5sy36rXq41d
         2CeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679235801;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fKZnSBPAE8T+XMDotgJ0r+804xRINw51eYSOC3sGUKI=;
        b=DtIq3xrk1XXcwupD5Q3fu2OYuBEkF7qpp+Kyk+HAl0lIJKzcO5OKsFoaVU5+FNU0Dw
         7ihHQ/fpSkMKqg6H7yDdtfL+Wu1GfNyOgVdGhUdoz8yjjYUgO9f4bOVU/p0PvgToT6zC
         ldt78cC5f4nifVVAtxibqIEe/vlbUWFXLGYnpAdoKU5AB0ZaaRtLl2IsTO00korxJjNW
         /qn043Hbvm1DvguOwzANiXNPIWcCgBXas4Wy6CBP1o/TKMaz7gmm3I0x1nYtBlvEtxsu
         aUb2KXIjsO5/YEaFVtDUC+Vq6RZlDXwm07VG6K08m9xW4SPpC+2yLtkqnOzmmdU2HoF4
         G9FQ==
X-Gm-Message-State: AO0yUKXuZsfq+UANJ0I5dF4Bvfip7E0sx6NgfXqLFVKTgc0UD0JxE/X2
	Y1zW8rTsU9tm5f1nl6UXXxA=
X-Google-Smtp-Source: AK7set/3vwMMIJQIEcoVxiMen7+cLZNPK97qwPt0LLXBlUJ2tOtNO9wLAVsnQKDj4628hIkOCV+UAw==
X-Received: by 2002:a17:90b:314a:b0:23d:3a3f:950b with SMTP id ip10-20020a17090b314a00b0023d3a3f950bmr15391674pjb.22.1679235800800;
        Sun, 19 Mar 2023 07:23:20 -0700 (PDT)
Received: from sumitra.com ([117.209.117.91])
        by smtp.gmail.com with ESMTPSA id e13-20020a17090ab38d00b00230b572e90csm4311490pjr.35.2023.03.19.07.23.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Mar 2023 07:23:19 -0700 (PDT)
Date: Sun, 19 Mar 2023 07:23:13 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Ira Weiny <ira.weiny@intel.com>
Cc: outreachy@lists.linux.dev, julia.lawall@inria.fr
Subject: Re: Help in loading modules
Message-ID: <20230319142313.GA119933@sumitra.com>
References: <alpine.DEB.2.22.394.2303111000320.2802@hadrien>
 <20230311102824.GA14247@ubuntu>
 <640e7b815280e_229a89294ef@iweiny-mobl.notmuch>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <640e7b815280e_229a89294ef@iweiny-mobl.notmuch>

On Sun, Mar 12, 2023 at 06:25:21PM -0700, Ira Weiny wrote:
> Sumitra Sharma wrote:
> > More information:
> > 
> > Upon running the "dmesg" it shows 
> > ##
> > BPF: 	Invalid name_offset:2154618
> > [ 2905.429687] failed to validate module [pi433] BTF: -22
> > ##
> 
> Good start.  I did some digging.
> 
> $ git grep "failed to validate module"
> kernel/bpf/btf.c:                               pr_warn("failed to validate module [%s] BTF: %ld\n",
> 
> 
> kernel/bpf/btf.c:
> ...
>                         if (!IS_ENABLED(CONFIG_MODULE_ALLOW_BTF_MISMATCH)) {
>                                 pr_warn("failed to validate module [%s] BTF: %ld\n",
>                                         mod->name, PTR_ERR(btf));
>                                 err = PTR_ERR(btf);
> 			} else {
> ...
> 
> 
> $ git grep BTF_MISMATCH
> kernel/bpf/btf.c:               if (env->btf->base_btf && IS_ENABLED(CONFIG_MODULE_ALLOW_BTF_MISMATCH))
> kernel/bpf/btf.c:               if (env->btf->base_btf && IS_ENABLED(CONFIG_MODULE_ALLOW_BTF_MISMATCH))
> kernel/bpf/btf.c:                       if (!IS_ENABLED(CONFIG_MODULE_ALLOW_BTF_MISMATCH)) {
> lib/Kconfig.debug:config MODULE_ALLOW_BTF_MISMATCH
> 
> 
> lib/Kconfig.debug:
> ...
> config MODULE_ALLOW_BTF_MISMATCH
>         bool "Allow loading modules with non-matching BTF type info"
>         depends on DEBUG_INFO_BTF_MODULES
>         help
>           For modules whose split BTF does not match vmlinux, load without
>           BTF rather than refusing to load. The default behavior with
>           module BTF enabled is to reject modules with such mismatches;
>           this option will still load module BTF where possible but ignore
>           it when a mismatch is found.
> ...
> 
> For more information on BTF:
> 
> https://docs.kernel.org/bpf/btf.html
> 
> Are you building this module in the same place as the running kernel?  It would
> probably be easier to do so.
> 
> Ira
>

Hi Ira,

What is the solution to this?

Regards,

Sumitra

> > 
> > Also I checked under "/lib/modules/`uname -r`" in the "modules.dep" file it do contains the  "kernel/drivers/staging/pi433/pi433.ko:".
> > 
> > I also tried running "sudo insmod ./kernel/drivers/staging/pi433/pi433.ko" which again prints the error:
> > 
> > ##
> > insmod: ERROR: could not insert module ./kernel/drivers/staging/pi433/pi433.ko: Invalid parameters
> > ##
> > 
> > Other than these I also checked the ".config" which contains: 
> > 
> > ##
> > CONFIG_SPI=y
> > CONFIG_STAGING=y
> > CONFIG_PI433=m
> > ##
> > 
> > where the module dependencies were given as 
> > 
> > Symbol: PI433 [=m]                                                                                               │  
> >   │ Type  : tristate                                                                                                 │  
> >   │ Defined at drivers/staging/pi433/Kconfig:2                                                                       │  
> >   │   Prompt: Pi433 - a 433MHz radio module for Raspberry Pi                                                         │  
> >   │   Depends on: STAGING [=y] && SPI [=y]                                                                           │  
> >   │   Location:                                                                                                      │  
> >   │     -> Device Drivers                                                                                            │  
> >   │       -> Staging drivers (STAGING [=y])                                                                          │  
> >   │ (1)     -> Pi433 - a 433MHz radio module for Raspberry Pi (PI433 [=m])  
> >  
> > 
> 
> 
