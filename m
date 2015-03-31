X-GM-THRID: 10397500309504
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6a06eb6a651084c5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.150.115 with SMTP id uh19mr283280wib.7.1427782375172;
        Mon, 30 Mar 2015 23:12:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.108.79 with SMTP id hi15ls709094wib.34.canary; Mon, 30 Mar
 2015 23:12:54 -0700 (PDT)
X-Received: by 10.180.90.175 with SMTP id bx15mr285989wib.3.1427782374834;
        Mon, 30 Mar 2015 23:12:54 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i8si721609wif.1.2015.03.30.23.12.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 30 Mar 2015 23:12:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,499,1422918000"; 
   d="scan'208";a="107717402"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 31 Mar 2015 08:12:54 +0200
Date: Tue, 31 Mar 2015 08:12:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Charlie Wong Super <1213charlie@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATH v3] Staging: comedi: addi_apci_1564:
 Delete whitespace
In-Reply-To: <20150331060813.GA23522@ThinkPad>
Message-ID: <alpine.DEB.2.02.1503310812400.2051@localhost6.localdomain6>
References: <20150331060813.GA23522@ThinkPad>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Looks better :)

julia

On Tue, 31 Mar 2015, Charlie Wong Super wrote:

> Fix the checkpatch.pl WARNING: line over 80 characters
> 
> Signed-off-by: Charlie Wong Super <1213charlie@gmail.com>
> ---
> Changes in v2:
> 	edit the commit message, make it clear!
> Changes in v3:
> 	about the commit and patch style problem!
> 	
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150331060813.GA23522%40ThinkPad.
> For more options, visit https://groups.google.com/d/optout.
> 

