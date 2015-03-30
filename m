X-GM-THRID: 10397500309504
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6a06eb6a651084c5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.8.108 with SMTP id q12mr3297682laa.6.1427730194270;
        Mon, 30 Mar 2015 08:43:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.186.142 with SMTP id fk14ls687138wic.25.canary; Mon, 30
 Mar 2015 08:43:10 -0700 (PDT)
X-Received: by 10.180.90.169 with SMTP id bx9mr3846225wib.6.1427730190750;
        Mon, 30 Mar 2015 08:43:10 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id sf8si611633wic.2.2015.03.30.08.43.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 30 Mar 2015 08:43:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,494,1422918000"; 
   d="scan'208";a="107662495"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Mar 2015 17:43:10 +0200
Date: Mon, 30 Mar 2015 17:42:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Charlie Wong Super <1213charlie@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: addi_apci_1564:
 Delete whitespace
In-Reply-To: <20150330154011.GA11201@ThinkPad>
Message-ID: <alpine.DEB.2.10.1503301741020.2457@hadrien>
References: <20150330154011.GA11201@ThinkPad>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 30 Mar 2015, Charlie Wong Super wrote:

> This patch fixes the checkpatch.pl warning:
> WARNING: line over 80 characters
> FILE: drivers/staging/comedi/drivers/addi_apci_1564.c:114:
> +	unsigned int ctrl;		/* interrupt mode OR (edge) . AND (level) */

You don't really need the above two lines.  One can see the specific file
and the affected code lines just below.

julia

>
> Signed-off-by: Charlie Wong Super <1213charlie@gmail.com>
> ---
>  drivers/staging/comedi/drivers/addi_apci_1564.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/addi_apci_1564.c b/drivers/staging/comedi/drivers/addi_apci_1564.c
> index c481c48..dd335e8 100644
> --- a/drivers/staging/comedi/drivers/addi_apci_1564.c
> +++ b/drivers/staging/comedi/drivers/addi_apci_1564.c
> @@ -106,12 +106,12 @@
>  #define APCI1564_COUNTER(x)			((x) * 0x20)
>
>  struct apci1564_private {
> -	unsigned long eeprom;		/* base address of EEPROM register */
> -	unsigned long timer;		/* base address of 12-bit timer */
> -	unsigned long counters;		/* base address of 32-bit counters */
> -	unsigned int mode1;		/* riding-edge/high level channels */
> -	unsigned int mode2;		/* falling-edge/low level channels */
> -	unsigned int ctrl;		/* interrupt mode OR (edge) . AND (level) */
> +	unsigned long eeprom;		/*base address of EEPROM register*/
> +	unsigned long timer;		/*base address of 12-bit timer*/
> +	unsigned long counters;		/*base address of 32-bit counters*/
> +	unsigned int mode1;		/*riding-edge/high level channels*/
> +	unsigned int mode2;		/*falling-edge/low level channels*/
> +	unsigned int ctrl;		/*interrupt mode OR (edge).AND(level)*/
>  	struct task_struct *tsk_current;
>  };
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150330154011.GA11201%40ThinkPad.
> For more options, visit https://groups.google.com/d/optout.
>

