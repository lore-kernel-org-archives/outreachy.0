X-GM-THRID: 6471910913633943552
X-Received: by 10.28.92.18 with SMTP id q18mr1467927wmb.15.1506923697081;
        Sun, 01 Oct 2017 22:54:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.130.196 with SMTP id 62ls856856wrc.5.gmail; Sun, 01 Oct
 2017 22:54:56 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA3PIk9DmpdmAe2c8BhmQGlCfibYRbficBT+QiKedGfnZ/1JwHxylJUB17s2fx6fQLkT4Cc
X-Received: by 10.28.156.145 with SMTP id f139mr462650wme.10.1506923696261;
        Sun, 01 Oct 2017 22:54:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506923696; cv=none;
        d=google.com; s=arc-20160816;
        b=sKybFHnZmxjCuBfQCeXxktuOWaEiIyDb2Y/e2MYy42tVU9CtOuyC5bhdCsC9TwGPvd
         Azi1lC/jUvDOlDJ0wgDuBkNlTQo95JR31YsiJ/tEcXs1mKNPPBSenf20IWa/DrADWyKa
         zllD6BeE9DzfFH7F3FhfnajsK+FJr85BlhYoWf8JwZBlTu0i6O8x2KEWyXuVHRPJaWBH
         E3f/TybOyGnVfJ4GJn3UQ/F75vXMVUf4igFsUILpVDNNZOXjMCeK8fr+5CgocSFHLXZR
         Njr/lRyLG87klDgST3L0HSCcaVMo1qryNcjN5S/ypiOXdxqkKd8v8maS0Y9DAHdwJc2I
         s2jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=xYgqXPZjN6fCbDjQt8eCWxA96V0KnlcR8A0czNDK9Tc=;
        b=o08mq+FjW2i70zXqOIuWLJXETS9VczMaLKg33TTe3Mu1/QE4lMitOwfdj6GWkVi5NM
         K7rYtqMGfwx0u/hHnBb+TTp0BMg5BobmXrvtJMLLt1ANidInMANRYOD0HV8rTMpv8MDx
         5+yDupUjhXjy9pmkXvYIZsEpru7G96VHJp1CEL/H4uvkUkEwG+DPbWK3aLthPsNjSqQj
         LWqd440yFdjKu8jykFHYkuP6/tqOWDlfwbsta8Rx+CYOHhBXpy45Y0CWwLZXoroVaFNp
         qNir3wEDGJZf6JW69neMZ4UxDjrFctvRNXg1jV3RrNsvRaAZQ6hNnl6C9LsAk54H+BF9
         RZ6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 191si929755wmn.2.2017.10.01.22.54.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 22:54:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,467,1500933600"; 
   d="scan'208";a="293634011"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2017 07:54:55 +0200
Date: Mon, 2 Oct 2017 07:54:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: sm750fb: remove typedef
 for enum
In-Reply-To: <20171002025033.GA2772@manoharreddy>
Message-ID: <alpine.DEB.2.20.1710020753490.2193@hadrien>
References: <20171002025033.GA2772@manoharreddy>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 2 Oct 2017, Keerthi Reddy wrote:

> Using typedef will hide that 'DPMS_t' is enum. Removing this
> will make sure that we are actually working with enum. Also is not
> a good coding style to use typedef.
>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
> changes in v3:
> edit commit message
>
> changes in v2:
> 1. Lower case the name and drop the _t which traditionally indicates
> typedef
> 2. make the same change in ddk750_sii164.{c,h}

This is not the same change.  It also relates to an enum, but it doesn't
relate to the type DPMS.  Since the files involved are totally disjoint,
it would be better to just make two patches.

julia


>
>  drivers/staging/sm750fb/ddk750_power.c  | 2 +-
>  drivers/staging/sm750fb/ddk750_power.h  | 7 +++----
>  drivers/staging/sm750fb/ddk750_sii164.c | 3 ++-
>  drivers/staging/sm750fb/ddk750_sii164.h | 4 ++--
>  4 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
> index 222ae1a..6f82ab0 100644
> --- a/drivers/staging/sm750fb/ddk750_power.c
> +++ b/drivers/staging/sm750fb/ddk750_power.c
> @@ -2,7 +2,7 @@
>  #include "ddk750_reg.h"
>  #include "ddk750_power.h"
>
> -void ddk750_set_dpms(DPMS_t state)
> +void ddk750_set_dpms(enum dpms state)
>  {
>  	unsigned int value;
>
> diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
> index 44c4fc5..033889f 100644
> --- a/drivers/staging/sm750fb/ddk750_power.h
> +++ b/drivers/staging/sm750fb/ddk750_power.h
> @@ -1,20 +1,19 @@
>  #ifndef DDK750_POWER_H__
>  #define DDK750_POWER_H__
>
> -typedef enum _DPMS_t {
> +enum dpms {
>  	crtDPMS_ON = 0x0,
>  	crtDPMS_STANDBY = 0x1,
>  	crtDPMS_SUSPEND = 0x2,
>  	crtDPMS_OFF = 0x3,
> -}
> -DPMS_t;
> +};
>
>  #define setDAC(off) {							\
>  	poke32(MISC_CTRL,						\
>  	       (peek32(MISC_CTRL) & ~MISC_CTRL_DAC_POWER_OFF) | (off)); \
>  }
>
> -void ddk750_set_dpms(DPMS_t state);
> +void ddk750_set_dpms(enum dpms state);
>  void sm750_set_power_mode(unsigned int powerMode);
>  void sm750_set_current_gate(unsigned int gate);
>
> diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
> index 0431833..3d68e1d 100644
> --- a/drivers/staging/sm750fb/ddk750_sii164.c
> +++ b/drivers/staging/sm750fb/ddk750_sii164.c
> @@ -296,7 +296,8 @@ void sii164SetPower(unsigned char powerUp)
>   *  sii164SelectHotPlugDetectionMode
>   *      This function selects the mode of the hot plug detection.
>   */
> -static void sii164SelectHotPlugDetectionMode(sii164_hot_plug_mode_t hotPlugMode)
> +static
> +void sii164SelectHotPlugDetectionMode(enum sii164_hot_plug_mode hotPlugMode)
>  {
>  	unsigned char detectReg;
>
> diff --git a/drivers/staging/sm750fb/ddk750_sii164.h b/drivers/staging/sm750fb/ddk750_sii164.h
> index 6968cf5..e06ba72 100644
> --- a/drivers/staging/sm750fb/ddk750_sii164.h
> +++ b/drivers/staging/sm750fb/ddk750_sii164.h
> @@ -4,12 +4,12 @@
>  #define USE_DVICHIP
>
>  /* Hot Plug detection mode structure */
> -typedef enum _sii164_hot_plug_mode_t {
> +enum sii164_hot_plug_mode {
>  	SII164_HOTPLUG_DISABLE = 0,         /* Disable Hot Plug output bit (always high). */
>  	SII164_HOTPLUG_USE_MDI,             /* Use Monitor Detect Interrupt bit. */
>  	SII164_HOTPLUG_USE_RSEN,            /* Use Receiver Sense detect bit. */
>  	SII164_HOTPLUG_USE_HTPLG            /* Use Hot Plug detect bit. */
> -} sii164_hot_plug_mode_t;
> +};
>
>
>  /* Silicon Image SiI164 chip prototype */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171002025033.GA2772%40manoharreddy.
> For more options, visit https://groups.google.com/d/optout.
>

