X-GM-THRID: 6254601683424247808
X-Received: by 10.25.17.25 with SMTP id g25mr2376011lfi.8.1456307789744;
        Wed, 24 Feb 2016 01:56:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.140.144 with SMTP id o138ls38342wmd.14.gmail; Wed, 24 Feb
 2016 01:56:29 -0800 (PST)
X-Received: by 10.28.48.88 with SMTP id w85mr2461705wmw.5.1456307789205;
        Wed, 24 Feb 2016 01:56:29 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s141si89712wmd.1.2016.02.24.01.56.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 01:56:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,493,1449529200"; 
   d="scan'208";a="204415660"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2016 10:56:28 +0100
Date: Wed, 24 Feb 2016 10:56:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Remove multiple
 assignments
In-Reply-To: <20160223212929.GA24472@Karyakshetra>
Message-ID: <alpine.DEB.2.02.1602241055160.2149@localhost6.localdomain6>
References: <20160223212929.GA24472@Karyakshetra>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 24 Feb 2016, Bhaktipriya Shridhar wrote:

> This patch removes multiple assignments by factorizing them.
> 
> This was done with Coccinelle.
> 
> @ identifier i1,i2; constant c; @@
> - i1=i2=c;
> + i1=c;
> + i2=c;
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx_scsi.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx_scsi.c b/drivers/staging/rts5208/rtsx_scsi.c
> index 16284ca..9e1c324 100644
> --- a/drivers/staging/rts5208/rtsx_scsi.c
> +++ b/drivers/staging/rts5208/rtsx_scsi.c
> @@ -3025,10 +3025,14 @@ static int get_ms_information(struct scsi_cmnd *srb, struct rtsx_chip *chip)
>  		return TRANSPORT_FAILED;
>  	}
> 
> -	if (dev_info_id == 0x15)
> -		buf_len = data_len = 0x3A;
> -	else
> -		buf_len = data_len = 0x6A;
> +	if (dev_info_id == 0x15) {
> +		buf_len = 0x3A;
> +		data_len = 0x3A;
> +	}
> +	else {
> +		buf_len = 0x6A;
> +		data_len = 0x6A;
> +	}

Maybe it would be better to have an if for initializing buf_len and then 
initialize data_len afterwards, to the value of buf_len.  That would make 
the connection betwen them more clear.

julia

> 
>  	buf = kmalloc(buf_len, GFP_KERNEL);
>  	if (!buf) {
> --
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160223212929.GA24472%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
> 

