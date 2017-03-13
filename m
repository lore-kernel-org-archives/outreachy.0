X-GM-THRID: 6397085894366461952
X-Received: by 10.46.33.163 with SMTP id h35mr5931092lji.17.1489440464206;
        Mon, 13 Mar 2017 14:27:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.133 with SMTP id 127ls1680401ljf.39.gmail; Mon, 13 Mar
 2017 14:27:43 -0700 (PDT)
X-Received: by 10.46.78.9 with SMTP id c9mr5500129ljb.20.1489440463724;
        Mon, 13 Mar 2017 14:27:43 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e72si791844wma.0.2017.03.13.14.27.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 14:27:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,161,1486422000"; 
   d="scan'208";a="216604690"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2017 22:27:35 +0100
Date: Mon, 13 Mar 2017 22:27:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, 
    outreachy-kernel@googlegroups.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    speakup@linux-speakup.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] staging: speakup: Added blank
 line after function/struct/union/enum declarations
In-Reply-To: <20170313204018.24601-2-arushisinghal19971997@gmail.com>
Message-ID: <alpine.DEB.2.20.1703132226070.4053@hadrien>
References: <20170313204018.24601-1-arushisinghal19971997@gmail.com> <20170313204018.24601-2-arushisinghal19971997@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Remember to use the imperative.  "Add blank line...".  You could just drop
function/struct/union/enum.  Just declarations is fine.

On Tue, 14 Mar 2017, Arushi Singhal wrote:

> This patch fixes the warnings reported by checkpatch.pl
> for please use a blank line after function/struct/union/enum
> declarations.

Again, it does not say what you have done, and only focuses on the message
you have fixed.

julia

> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  changes in v2
>  - change the subject to make it more relevant.
>
>  drivers/staging/speakup/main.c         | 1 +
>  drivers/staging/speakup/serialio.c     | 1 +
>  drivers/staging/speakup/speakup_dtlk.c | 1 +
>  3 files changed, 3 insertions(+)
>
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 6786cfab7460..4b750ec8cd59 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -108,6 +108,7 @@ enum {
>  	CT_Window,
>  	CT_Max
>  };
> +
>  #define read_all_mode CT_Max
>
>  static struct tty_struct *tty;
> diff --git a/drivers/staging/speakup/serialio.c b/drivers/staging/speakup/serialio.c
> index aade52ee15a0..d51e382cb835 100644
> --- a/drivers/staging/speakup/serialio.c
> +++ b/drivers/staging/speakup/serialio.c
> @@ -21,6 +21,7 @@ static void start_serial_interrupt(int irq);
>  static const struct old_serial_port rs_table[] = {
>  	SERIAL_PORT_DFNS
>  };
> +
>  static const struct old_serial_port *serstate;
>  static int timeouts;
>
> diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
> index eede2d82183a..c0b2208aa8a7 100644
> --- a/drivers/staging/speakup/speakup_dtlk.c
> +++ b/drivers/staging/speakup/speakup_dtlk.c
> @@ -43,6 +43,7 @@ static int port_forced;
>  static unsigned int synth_portlist[] = {
>  		 0x25e, 0x29e, 0x2de, 0x31e, 0x35e, 0x39e, 0
>  };
> +
>  static u_char synth_status;
>
>  static struct var_t vars[] = {
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170313204018.24601-2-arushisinghal19971997%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

