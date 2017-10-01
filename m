X-GM-THRID: 6471910913633943552
X-Received: by 10.28.184.78 with SMTP id i75mr1491296wmf.30.1506860161131;
        Sun, 01 Oct 2017 05:16:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.187.19 with SMTP id r19ls1932529wrg.1.gmail; Sun, 01 Oct
 2017 05:16:00 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCp1XWrXNTa0pHQVkyobYQQVJHXPRPIy95XkNocgrGX4FDmsb16sCfJr04urJJVh8WuDrbu
X-Received: by 10.28.142.201 with SMTP id q192mr1332516wmd.23.1506860160198;
        Sun, 01 Oct 2017 05:16:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506860160; cv=none;
        d=google.com; s=arc-20160816;
        b=ZhO7a3i2ASbpw1dB/SxTpF+NsYIru4xTRj/KEGqT4LXoNIORMjnvuRrEBQzP/wzYEd
         iBXtWhPuR7zmsNGP0+1XchD1l2cPWtMzm1TLg6XCe6aK7Xkm3zaCCa63NSjm4k28bQtE
         hwS4dZ6QniMDXqZ92v2SIXAkCb/fJJASEPpGKblyQB5mGOY5FSFFPvTc+fs9rbUEf0k0
         +8cP+UGgCKbHWmjQ9+cH3K/K6F8D0HQvPKvIzhJu64XCSH4qUweUMEQF8bovqJ0NJavz
         eOrQIyjPylT3KAnwu4QvgHaMzR493OADrR4bxtxCPC+h45qs/htDRSaI0hdtXrJVlpN7
         Ur+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=FFl9oSA49nJGqz9jU3/5tyrHncYFaRl1Z2qoXkKPONw=;
        b=HAwdJD5VMBSDDFQ9b0s0O/qu2XxzKz//F92SwKZ94F30QJKQolDCYzYw4V8dHZIUm+
         BKbxVoS2aQxpVsO5yZr3kgBkngBpOkf3gBWYNEqAZm9pu0YUjBLELTBOs6+dyKVTxRTt
         tCbliIXnRWmoINlBEfu44aLO5M6pHNwUgJWA8yMQxzWoebm7/2JuGfvldeNlMDFqP/gN
         rWu/htLGnU6Y33COh4Lc+pKgy+ZDkjCniUsGlQBJbhaimTMIoCmlSF1YtTMWtcjTe0wn
         iLo9znDBlFm39ORs0UrCSJRBh0l9JRh9XSkX0HH50l7C6Bierf7BDN27F/6Tlk5KwxXu
         t9Xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 191si791854wmn.2.2017.10.01.05.16.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 05:16:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,463,1500933600"; 
   d="scan'208";a="293566320"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Oct 2017 14:15:59 +0200
Date: Sun, 1 Oct 2017 14:15:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com, 
    teddy.wang@siliconmotion.com, sudip.mukherjee@codethink.co.uk
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: remove typedef for
 enum
In-Reply-To: <20171001115936.GA4941@manoharreddy>
Message-ID: <alpine.DEB.2.20.1710011415360.2031@hadrien>
References: <20171001115936.GA4941@manoharreddy>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 1 Oct 2017, Keerthi Reddy wrote:

> Using typedef will hide that 'DPMS_t' is enum. Removing this
> will make sure that we are actually working with enum. Also is not
> a good coding style to use typedef.

Please lowercase the name and drop the _t, which traditionally indicates a
typedef.

julia


>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_power.c | 2 +-
>  drivers/staging/sm750fb/ddk750_power.h | 7 +++----
>  2 files changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
> index 222ae1a..5d85593 100644
> --- a/drivers/staging/sm750fb/ddk750_power.c
> +++ b/drivers/staging/sm750fb/ddk750_power.c
> @@ -2,7 +2,7 @@
>  #include "ddk750_reg.h"
>  #include "ddk750_power.h"
>
> -void ddk750_set_dpms(DPMS_t state)
> +void ddk750_set_dpms(enum DPMS_t state)
>  {
>  	unsigned int value;
>
> diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
> index 44c4fc5..a0a5bbf 100644
> --- a/drivers/staging/sm750fb/ddk750_power.h
> +++ b/drivers/staging/sm750fb/ddk750_power.h
> @@ -1,20 +1,19 @@
>  #ifndef DDK750_POWER_H__
>  #define DDK750_POWER_H__
>
> -typedef enum _DPMS_t {
> +enum DPMS_t {
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
> +void ddk750_set_dpms(enum DPMS_t state);
>  void sm750_set_power_mode(unsigned int powerMode);
>  void sm750_set_current_gate(unsigned int gate);
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171001115936.GA4941%40manoharreddy.
> For more options, visit https://groups.google.com/d/optout.
>

