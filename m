X-GM-THRID: 6335472108323209216
X-Received: by 10.46.69.137 with SMTP id s131mr1952319lja.31.1475095797032;
        Wed, 28 Sep 2016 13:49:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.80 with SMTP id g77ls169618ljg.40.gmail; Wed, 28 Sep
 2016 13:49:56 -0700 (PDT)
X-Received: by 10.25.33.10 with SMTP id h10mr783212lfh.10.1475095796751;
        Wed, 28 Sep 2016 13:49:56 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si41778wmd.1.2016.09.28.13.49.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 13:49:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,411,1470693600"; 
   d="scan'208";a="238659682"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Sep 2016 22:49:55 +0200
Date: Wed, 28 Sep 2016 22:49:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Jonas Rickert <jrickertkc@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: rts5208: Replace explicit
 NULL comparison
In-Reply-To: <1c71305629b78a42717f794e9b8e3eef3cc12010.1475089953.git.namrataashettar@gmail.com>
Message-ID: <alpine.DEB.2.10.1609282249340.3211@hadrien>
References: <1c71305629b78a42717f794e9b8e3eef3cc12010.1475089953.git.namrataashettar@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 29 Sep 2016, Namrata A Shettar wrote:

> Replace explicit NULL comparison to resolve checkpatch issue.
>
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx_scsi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rts5208/rtsx_scsi.c b/drivers/staging/rts5208/rtsx_scsi.c
> index d11b173..7c2ef03 100644
> --- a/drivers/staging/rts5208/rtsx_scsi.c
> +++ b/drivers/staging/rts5208/rtsx_scsi.c
> @@ -1397,7 +1397,7 @@ static int trace_msg_cmd(struct scsi_cmnd *srb, struct rtsx_chip *chip)
>  	buf_len = 4 + ((2 + MSG_FUNC_LEN + MSG_FILE_LEN + TIME_VAL_LEN) *
>  		TRACE_ITEM_CNT);
>
> -	if ((scsi_bufflen(srb) < buf_len) || (scsi_sglist(srb) == NULL)) {
> +	if ((scsi_bufflen(srb) < buf_len) || !(scsi_sglist(srb))) {

The parentheses around the function call shouldn't be needed either.

julia

>  		set_sense_type(chip, SCSI_LUN(srb),
>  			SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR);
>  		rtsx_trace(chip);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1c71305629b78a42717f794e9b8e3eef3cc12010.1475089953.git.namrataashettar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

