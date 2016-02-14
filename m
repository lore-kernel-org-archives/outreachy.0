X-GM-THRID: 6250898457474629632
X-Received: by 10.28.63.19 with SMTP id m19mr514288wma.0.1455435588638;
        Sat, 13 Feb 2016 23:39:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.21.197 with SMTP id 188ls350616wmv.24.canary; Sat, 13 Feb
 2016 23:39:48 -0800 (PST)
X-Received: by 10.28.158.216 with SMTP id h207mr515626wme.4.1455435588223;
        Sat, 13 Feb 2016 23:39:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h126si317042wme.0.2016.02.13.23.39.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 23:39:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,444,1449529200"; 
   d="scan'208";a="164635621"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 08:39:47 +0100
Date: Sun, 14 Feb 2016 08:39:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Place constants on
 the right side of comparisons
In-Reply-To: <20160214025751.GA24385@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.02.1602140837380.2039@localhost6.localdomain6>
References: <20160214025751.GA24385@janani-Inspiron-3521>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 13 Feb 2016, Janani Ravichandran wrote:

> Constants should be placed on the right hand side of comparisons. This
> issue was identified by checkpatch.  

There is a semantic patch in the kernel that makes this change for you.  
At the moment, it makes the change in some cases where it is not really 
necessary, but when you have decided that it is necessary, it could be 
safer to use the semantic patch than to do it by hand.

misc/compare_const_fl.cocci

Nothing to change in the patch though.

julia

> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/rts5208/sd.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
> index d6c4982..244d589 100644
> --- a/drivers/staging/rts5208/sd.c
> +++ b/drivers/staging/rts5208/sd.c
> @@ -4260,10 +4260,10 @@ int sd_pass_thru_mode(struct scsi_cmnd *srb, struct rtsx_chip *chip)
>  		return TRANSPORT_FAILED;
>  	}
>  
> -	if ((0x53 != srb->cmnd[2]) || (0x44 != srb->cmnd[3]) ||
> -		(0x20 != srb->cmnd[4]) || (0x43 != srb->cmnd[5]) ||
> -		(0x61 != srb->cmnd[6]) || (0x72 != srb->cmnd[7]) ||
> -		(0x64 != srb->cmnd[8])) {
> +	if ((srb->cmnd[2] != 0x53) || (srb->cmnd[3] != 0x44) ||
> +		(srb->cmnd[4] != 0x20) || (srb->cmnd[5] != 0x43) ||
> +		(srb->cmnd[6] != 0x61) || (srb->cmnd[7] != 0x72) ||
> +		(srb->cmnd[8] != 0x64)) {
>  		set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
>  		rtsx_trace(chip);
>  		return TRANSPORT_FAILED;
> @@ -4284,7 +4284,7 @@ int sd_pass_thru_mode(struct scsi_cmnd *srb, struct rtsx_chip *chip)
>  		return TRANSPORT_FAILED;
>  	}
>  
> -	buf[5] = (1 == CHK_SD(sd_card)) ?  0x01 : 0x02;
> +	buf[5] = (CHK_SD(sd_card) == 1) ? 0x01 : 0x02;
>  	if (chip->card_wp & SD_CARD)
>  		buf[5] |= 0x80;
>  
> @@ -5176,10 +5176,10 @@ int sd_hw_rst(struct scsi_cmnd *srb, struct rtsx_chip *chip)
>  		return TRANSPORT_FAILED;
>  	}
>  
> -	if ((0x53 != srb->cmnd[2]) || (0x44 != srb->cmnd[3]) ||
> -		(0x20 != srb->cmnd[4]) || (0x43 != srb->cmnd[5]) ||
> -		(0x61 != srb->cmnd[6]) || (0x72 != srb->cmnd[7]) ||
> -		(0x64 != srb->cmnd[8])) {
> +	if ((srb->cmnd[2] != 0x53) || (srb->cmnd[3] != 0x44) ||
> +		(srb->cmnd[4] != 0x20) || (srb->cmnd[5] != 0x43) ||
> +		(srb->cmnd[6] != 0x61) || (srb->cmnd[7] != 0x72) ||
> +		(srb->cmnd[8] != 0x64)) {
>  		set_sense_type(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
>  		rtsx_trace(chip);
>  		return TRANSPORT_FAILED;
> @@ -5188,7 +5188,7 @@ int sd_hw_rst(struct scsi_cmnd *srb, struct rtsx_chip *chip)
>  	switch (srb->cmnd[1] & 0x0F) {
>  	case 0:
>  #ifdef SUPPORT_SD_LOCK
> -		if (0x64 == srb->cmnd[9])
> +		if (srb->cmnd[9] == 0x64)
>  			sd_card->sd_lock_status |= SD_SDR_RST;
>  #endif
>  		retval = reset_sd_card(chip);
> -- 
> 2.5.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160214025751.GA24385%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
> 

