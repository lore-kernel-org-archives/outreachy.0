X-GM-THRID: 10440153235456
X-Received: by 10.180.35.230 with SMTP id l6mr272222wij.0.1427780794235;
        Mon, 30 Mar 2015 22:46:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.226 with SMTP id gh2ls794647wib.31.gmail; Mon, 30 Mar
 2015 22:46:33 -0700 (PDT)
X-Received: by 10.180.101.39 with SMTP id fd7mr273298wib.0.1427780793871;
        Mon, 30 Mar 2015 22:46:33 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bz6si747186wib.3.2015.03.30.22.46.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 30 Mar 2015 22:46:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,498,1422918000"; 
   d="scan'208";a="130821769"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 31 Mar 2015 07:46:33 +0200
Date: Tue, 31 Mar 2015 07:46:32 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Charlie Wong Super <1213charlie@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: comedi: addi_apci_1564:
 Delete Whitespace
In-Reply-To: <20150331054435.GA15859@ThinkPad>
Message-ID: <alpine.DEB.2.02.1503310746060.2051@localhost6.localdomain6>
References: <20150331054435.GA15859@ThinkPad>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 31 Mar 2015, Charlie Wong Super wrote:

> Fix the checkpatch.pl WARNING: line over 80 characters
> 
> Signed-off-by: Charlie Wong Super <1213charlie@gmail.com>
> ---


You need to explain here (under the ---) what has changed since the 
previous version.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150331054435.GA15859%40ThinkPad.
> For more options, visit https://groups.google.com/d/optout.
> 

