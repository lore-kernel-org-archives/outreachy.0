X-GM-THRID: 6391852583766458368
X-Received: by 10.46.78.9 with SMTP id c9mr490823ljb.20.1488308458864;
        Tue, 28 Feb 2017 11:00:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.82.29 with SMTP id g29ls193506ljb.37.gmail; Tue, 28 Feb
 2017 11:00:58 -0800 (PST)
X-Received: by 10.25.17.102 with SMTP id g99mr447750lfi.6.1488308458387;
        Tue, 28 Feb 2017 11:00:58 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b186si151297wme.1.2017.02.28.11.00.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 11:00:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,220,1484002800"; 
   d="scan'208";a="262497142"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 20:00:57 +0100
Date: Tue, 28 Feb 2017 20:00:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, lustre-devel@lists.lustre.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    linux-fbdev@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/5] staging: sm750fb: Remove unnecessary
 else after return
In-Reply-To: <CALrZqyNXbn1SZ8Daws7yKkYm-C-U9FHyJ_eRxvuem1Fk+Mqs=g@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702281959390.2171@hadrien>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com> <1488219268-3006-4-git-send-email-singhalsimran0@gmail.com> <alpine.DEB.2.20.1702272214410.2127@hadrien> <CALrZqyNXbn1SZ8Daws7yKkYm-C-U9FHyJ_eRxvuem1Fk+Mqs=g@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 1 Mar 2017, SIMRAN SINGHAL wrote:

> On Tue, Feb 28, 2017 at 2:45 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Mon, 27 Feb 2017, simran singhal wrote:
> >
> >> This patch fixes the checkpatch warning that else is not generally
> >> useful after a break or return.
> >>
> >> This was done using Coccinelle:
> >> @@
> >> expression e2;
> >> statement s1;
> >> @@
> >> if(e2) { ... return ...; }
> >> -else
> >>          s1
> >>
> >> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> >> ---
> >>  drivers/staging/sm750fb/ddk750_sii164.c | 6 ++----
> >>  drivers/staging/sm750fb/ddk750_swi2c.c  | 6 ++----
> >>  2 files changed, 4 insertions(+), 8 deletions(-)
> >>
> >> diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
> >> index 259006a..6906598 100644
> >> --- a/drivers/staging/sm750fb/ddk750_sii164.c
> >> +++ b/drivers/staging/sm750fb/ddk750_sii164.c
> >> @@ -368,8 +368,7 @@ unsigned char sii164IsConnected(void)
> >>       hotPlugValue = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT) & SII164_DETECT_HOT_PLUG_STATUS_MASK;
> >>       if (hotPlugValue == SII164_DETECT_HOT_PLUG_STATUS_ON)
> >>               return 1;
> >> -     else
> >> -             return 0;
> >> +     return 0;
> >
> >
> > Totally unrelated to what you are doing, but I wonder if these return
> > values should be true and false?  Perhaps it would help to see how the
> > return values are used at the calling context.
> >
> you want me to go ahead with what Joe mentioned and also do the same
> changes here also.

I think that it would be best to complete what you have underway already.
When those patches are picked up by Greg, you can look into the
possibility of using true and false.

julia

> > julia
> >
> >>  }
> >>
> >>  /*
> >> @@ -387,8 +386,7 @@ unsigned char sii164CheckInterrupt(void)
> >>       detectReg = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT) & SII164_DETECT_MONITOR_STATE_MASK;
> >>       if (detectReg == SII164_DETECT_MONITOR_STATE_CHANGE)
> >>               return 1;
> >> -     else
> >> -             return 0;
> >> +     return 0;
> >>  }
> >>
> >>  /*
> >> diff --git a/drivers/staging/sm750fb/ddk750_swi2c.c b/drivers/staging/sm750fb/ddk750_swi2c.c
> >> index a4ac07c..5997349 100644
> >> --- a/drivers/staging/sm750fb/ddk750_swi2c.c
> >> +++ b/drivers/staging/sm750fb/ddk750_swi2c.c
> >> @@ -199,8 +199,7 @@ static unsigned char sw_i2c_read_sda(void)
> >>       gpio_data = peek32(sw_i2c_data_gpio_data_reg);
> >>       if (gpio_data & (1 << sw_i2c_data_gpio))
> >>               return 1;
> >> -     else
> >> -             return 0;
> >> +     return 0;
> >>  }
> >>
> >>  /*
> >> @@ -295,8 +294,7 @@ static long sw_i2c_write_byte(unsigned char data)
> >>
> >>       if (i < 0xff)
> >>               return 0;
> >> -     else
> >> -             return -1;
> >> +     return -1;
> >>  }
> >>
> >>  /*
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488219268-3006-4-git-send-email-singhalsimran0%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALrZqyNXbn1SZ8Daws7yKkYm-C-U9FHyJ_eRxvuem1Fk%2BMqs%3Dg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

