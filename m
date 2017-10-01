X-GM-THRID: 6471910913633943552
X-Received: by 10.28.22.4 with SMTP id 4mr1403968wmw.13.1506872484362;
        Sun, 01 Oct 2017 08:41:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.148.68 with SMTP id 62ls610278wrq.0.gmail; Sun, 01 Oct
 2017 08:41:23 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDga9MU9H74S/qYwespN1NZkXEYIqocJkHGnFzDjdPuZ3ZDklJ3ZlyRu8fz/wlWOSLrs+nr
X-Received: by 10.28.54.84 with SMTP id d81mr133042wma.21.1506872483668;
        Sun, 01 Oct 2017 08:41:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506872483; cv=none;
        d=google.com; s=arc-20160816;
        b=GgmoVkVV4SS9d2eAuimSOJOEQx1fL92qXyJMOXwlydoAlh4/BZW5KXv4C2LTgPnHHV
         g1nJLYTJ75kQPtJ1InUvgdnBLO8FqUsrHfX9qrdErDAUXxrfe8k+9XkU2lLkOAu829EP
         /xPLFaYEA1CQv2hWT8wNY7EmXFes/3BQWN4GP/2GxiU7suIdc0Dlrw733yS9nyGcpJL6
         RFJgckSCfwvVEe6Oqjcje3y0TEouxL1csefsHCqBcNybtK7MsxVbsCuN7DsryDJED3ib
         pe6lW+GdAHwoWc/+6l8gOfPZeiX8aEjWTAa5qwev/QSVJJYaqOFHouF6NUmtoHqUwFr0
         M20Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=0Zx1r2VnzufdH7JncAEPsoGH9xSYOGHU8YuBZgl9ZkM=;
        b=0binvN0+D0sQ86TKuftxVSYjWgwrRhIjoOPffJhmvDyERA6NqFmhULl4T157FOW0T0
         P/n2eCSv10TLKod/6HqYaYUWiTflSSoy1iMT69mTXYUra2UGrM3XT0uZ73e0PWw2kKva
         SaGbcyxIPcvdZoXJ60Zq8tmoK+U2W7Ftf++zrUGmttxa/ogzqrNcQiqiHAjBTiDsVvwd
         6kE9Qj2ArHRiISEYYSenBq1avSwCfsUhgHskL9618tRzVZ5/al5QV2/aziIVk/w6kOrz
         9c0zJ7yyVBOphj+wIvxdDjaq/zjifWMD5LB55+BzWPXiSOIlwKHQlVuVqwCFQoecXvle
         lKJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l133si1022360wmb.3.2017.10.01.08.41.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 08:41:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,464,1500933600"; 
   d="scan'208";a="293580221"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Oct 2017 17:41:23 +0200
Date: Sun, 1 Oct 2017 17:41:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: sm750fb: remove typedef
 for enum
In-Reply-To: <20171001140723.GA7094@manoharreddy>
Message-ID: <alpine.DEB.2.20.1710011740270.2904@hadrien>
References: <20171001140723.GA7094@manoharreddy>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 1 Oct 2017, Keerthi Reddy wrote:

> Using typedef will hide that 'DPMS_t' is enum. Removing this
> will make sure that we are actually working with enum. Also is not
> a good coding style to use typedef.
>
> changes in v2:
> 1. Lower case the name and drop the _t which traditionally indicates
> typedef
> 2. make the same change in ddk750_sii164.{c,h}

The changes in v2 go below the ---.  That part of the patch is discarded
when the patch is committed.  This is apporpriate, because no one seeing
the commit in the future will have access to v1, so the difference as
compared to v1 is not useful.

julia

> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171001140723.GA7094%40manoharreddy.
> For more options, visit https://groups.google.com/d/optout.
>

