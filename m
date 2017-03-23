X-GM-THRID: 6399916000486096896
X-Received: by 10.28.19.12 with SMTP id 12mr425937wmt.17.1490276990334;
        Thu, 23 Mar 2017 06:49:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.225.16 with SMTP id y16ls406673lfg.17.gmail; Thu, 23 Mar
 2017 06:49:48 -0700 (PDT)
X-Received: by 10.25.210.146 with SMTP id j140mr418701lfg.10.1490276988929;
        Thu, 23 Mar 2017 06:49:48 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x188si171393wmx.0.2017.03.23.06.49.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 06:49:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,210,1486422000"; 
   d="scan'208";a="217777229"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2017 14:49:47 +0100
Date: Thu, 23 Mar 2017 14:49:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org, 
    driverdevel <devel@driverdev.osuosl.org>, 
    LKML <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH v2] staging:speakup: Fix
 alignment with parenthesis.
In-Reply-To: <CA+XqjF9fNHFEUopsZH5rfiuha-Pv0WA+8oACvT_cNxwiSX-rjg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703231448510.3193@hadrien>
References: <CA+XqjF9fNHFEUopsZH5rfiuha-Pv0WA+8oACvT_cNxwiSX-rjg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1561654908-1490276985=:3193"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1561654908-1490276985=:3193
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

It should be staging: speakup:, not staging:speakup:

On Thu, 23 Mar 2017, Arushi Singhal wrote:

> Fix checkpatch issues: "CHECK: Alignment should match open parenthesis".

It would really be better to say what the patch does, not just say what
error message you have fixed.

julia

> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> changes in v2
>  - change the commit message.
>
>  drivers/staging/speakup/speakup_apollo.c | 2 +-
>  drivers/staging/speakup/speakup_decext.c | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/speakup/speakup_apollo.c
> b/drivers/staging/speakup/speakup_apollo.c
> index 9cfdbbfb9742..6ad83dc642c4 100644
> --- a/drivers/staging/speakup/speakup_apollo.c
> +++ b/drivers/staging/speakup/speakup_apollo.c
> @@ -173,7 +173,7 @@ static void do_catch_up(struct spk_synth *synth)
>                 if (!synth->io_ops->synth_out(synth, ch)) {
>                         outb(UART_MCR_DTR, speakup_info.port_tts +
> UART_MCR);
>                         outb(UART_MCR_DTR | UART_MCR_RTS,
> -                                       speakup_info.port_tts + UART_MCR);
> +                            speakup_info.port_tts + UART_MCR);
>                         schedule_timeout(msecs_to_jiffies(full_time_val));
>                         continue;
>                 }
> diff --git a/drivers/staging/speakup/speakup_decext.c
> b/drivers/staging/speakup/speakup_decext.c
> index 929a28d618dc..c564bf8e1531 100644
> --- a/drivers/staging/speakup/speakup_decext.c
> +++ b/drivers/staging/speakup/speakup_decext.c
> @@ -206,11 +206,11 @@ static void do_catch_up(struct spk_synth *synth)
>                                 if (!in_escape)
>                                         synth->io_ops->synth_out(synth,
> PROCSPEECH);
>                                 spin_lock_irqsave(&speakup_info.spinlock,
> -                                                       flags);
> +                                                 flags);
>                                 jiffy_delta_val = jiffy_delta->u.n.value;
>                                 delay_time_val = delay_time->u.n.value;
>                                
> spin_unlock_irqrestore(&speakup_info.spinlock,
> -                                                       flags);
> +                                                      flags);
>                                 schedule_timeout(msecs_to_jiffies
>                                                  (delay_time_val));
>                                 jiff_max = jiffies + jiffy_delta_val;
> --
> 2.11.0
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CA%2BXqjF9fNHFEUopsZH5rf
> iuha-Pv0WA%2B8oACvT_cNxwiSX-rjg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1561654908-1490276985=:3193--

