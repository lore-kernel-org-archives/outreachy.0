X-GM-THRID: 10397500309504
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6a06eb6a651084c5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.170.129 with SMTP id am1mr50284946vdc.1.1427901564270;
        Wed, 01 Apr 2015 08:19:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.153.67 with SMTP id ve3ls128142obb.59.gmail; Wed, 01 Apr
 2015 08:19:24 -0700 (PDT)
X-Received: by 10.182.5.104 with SMTP id r8mr50888121obr.19.1427901564053;
        Wed, 01 Apr 2015 08:19:24 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id zw6si239369pbc.2.2015.04.01.08.19.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 08:19:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 345D2B41;
	Wed,  1 Apr 2015 15:19:23 +0000 (UTC)
Date: Wed, 1 Apr 2015 17:19:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Charlie Wong Super <1213charlie@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: addi_apci_1564:
 Delete whitespace
Message-ID: <20150401151920.GA578@kroah.com>
References: <20150330154011.GA11201@ThinkPad>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150330154011.GA11201@ThinkPad>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 30, 2015 at 11:40:11PM +0800, Charlie Wong Super wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: line over 80 characters
> FILE: drivers/staging/comedi/drivers/addi_apci_1564.c:114:
> +	unsigned int ctrl;		/* interrupt mode OR (edge) . AND (level) */
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

That makes things look worse :(

