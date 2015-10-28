X-GM-THRID: 6210650684709142528
X-Received: by 10.180.208.71 with SMTP id mc7mr459941wic.1.1446030267074;
        Wed, 28 Oct 2015 04:04:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.35.133 with SMTP id h5ls267738wij.2.gmail; Wed, 28 Oct
 2015 04:04:26 -0700 (PDT)
X-Received: by 10.180.149.135 with SMTP id ua7mr456431wib.7.1446030266651;
        Wed, 28 Oct 2015 04:04:26 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d7si767690wiy.2.2015.10.28.04.04.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 04:04:26 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,209,1444687200"; 
   d="scan'208";a="184827443"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Oct 2015 12:04:26 +0100
Date: Wed, 28 Oct 2015 12:04:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: wilc1000: linux_wlan_sdio:
 Drop unnecessary wrapper functions
In-Reply-To: <CAKHNQQGXZsPEYowxdDUjw741pDbCQ3-ewrYoAzMTR4ARZY+v3g@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510281203510.2456@hadrien>
References: <cover.1446029550.git.shivanib134@gmail.com> <16ce4db27490fbed8cbe035c6bf7bc6993b19c80.1446029550.git.shivanib134@gmail.com> <alpine.DEB.2.10.1510281159270.2456@hadrien> <CAKHNQQGXZsPEYowxdDUjw741pDbCQ3-ewrYoAzMTR4ARZY+v3g@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 28 Oct 2015, Shivani Bhardwaj wrote:

> On Wed, Oct 28, 2015 at 4:30 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Wed, 28 Oct 2015, Shivani Bhardwaj wrote:
> >
> >> Remove the functions linux_sdio_get_speed(), linux_sdio_set_max_speed()
> >> and linux_sdio_set_default_speed(). Replace their calls with appropriate
> >> functions. Also, definitions associated with these functions should be removed.
> >>
> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> >> ---
> >>  drivers/staging/wilc1000/linux_wlan_sdio.c | 42 +++---------------------------
> >>  1 file changed, 4 insertions(+), 38 deletions(-)
> >>
> >> diff --git a/drivers/staging/wilc1000/linux_wlan_sdio.c b/drivers/staging/wilc1000/linux_wlan_sdio.c
> >> index 1f8d874..d58baf2 100644
> >> --- a/drivers/staging/wilc1000/linux_wlan_sdio.c
> >> +++ b/drivers/staging/wilc1000/linux_wlan_sdio.c
> >> @@ -1,26 +1,12 @@
> >>  #include "wilc_wfi_netdevice.h"
> >> -
> >>  #include <linux/mmc/sdio_func.h>
> >>  #include <linux/mmc/card.h>
> >>  #include <linux/mmc/sdio_ids.h>
> >>  #include <linux/mmc/sdio.h>
> >>  #include <linux/mmc/host.h>
> >>
> >> -
> >> -
> >
> > Not clear why these blank lines are removed.  They are not needed, but
> > they are not part of what is described in the commit message either.
> >
> >>  #define SDIO_MODALIAS "wilc1000_sdio"
> >>
> >> -#if defined(CUSTOMER_PLATFORM)
> >> -/* TODO : User have to stable bus clock as user's environment. */
> >> - #ifdef MAX_BUS_SPEED
> >> - #define MAX_SPEED MAX_BUS_SPEED
> >> - #else
> >> - #define MAX_SPEED 50000000
> >> - #endif
> >> -#else
> >> - #define MAX_SPEED (6 * 1000000) /* Max 50M */
> >> -#endif
> >> -
> >>  struct wilc_sdio {
> >>       struct sdio_func *func;
> >>       struct wilc *wilc;
> >> @@ -104,7 +90,6 @@ int linux_sdio_cmd53(sdio_cmd53_t *cmd)
> >>
> >>       sdio_release_host(func);
> >>
> >> -
> >
> > Sane for this one.
> >
> > julia
> >
>
> Should I just update the commit message or do it as a different patch
> in the series?

Do it as a different patch.

julia

> Thank you
>
> >>       if (ret < 0) {
> >>               PRINT_ER("wilc_sdio_cmd53..failed, err(%d)\n", ret);
> >>               return 0;
> >> @@ -206,11 +191,6 @@ static int linux_sdio_set_speed(int speed)
> >>       return 1;
> >>  }
> >>
> >> -static int linux_sdio_get_speed(void)
> >> -{
> >> -     return local_sdio_func->card->host->ios.clock;
> >> -}
> >> -
> >>  int linux_sdio_init(void *pv)
> >>  {
> >>
> >> @@ -219,30 +199,16 @@ int linux_sdio_init(void *pv)
> >>        **/
> >>
> >>
> >> -     sdio_default_speed = linux_sdio_get_speed();
> >> +     sdio_default_speed = local_sdio_func->card->host->ios.clock;
> >>       return 1;
> >>  }
> >>
> >>  void linux_sdio_deinit(void *pv)
> >>  {
> >> -
> >> -     /**
> >> -      *      TODO :
> >> -      **/
> >> -
> >> +       /**
> >> +        *      TODO :
> >> +        **/
> >>
> >>       sdio_unregister_driver(&wilc_bus);
> >>  }
> >>
> >> -int linux_sdio_set_max_speed(void)
> >> -{
> >> -     return linux_sdio_set_speed(MAX_SPEED);
> >> -}
> >> -
> >> -int linux_sdio_set_default_speed(void)
> >> -{
> >> -     return linux_sdio_set_speed(sdio_default_speed);
> >> -}
> >> -
> >> -
> >> -
> >> --
> >> 2.1.0
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/16ce4db27490fbed8cbe035c6bf7bc6993b19c80.1446029550.git.shivanib134%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQGXZsPEYowxdDUjw741pDbCQ3-ewrYoAzMTR4ARZY%2Bv3g%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

