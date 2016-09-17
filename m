X-GM-THRID: 6331276678266880000
X-Received: by 10.28.21.17 with SMTP id 17mr94760wmv.16.1474115445655;
        Sat, 17 Sep 2016 05:30:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.208 with SMTP id u199ls643205lja.51.gmail; Sat, 17 Sep
 2016 05:30:45 -0700 (PDT)
X-Received: by 10.25.193.148 with SMTP id r142mr2650778lff.2.1474115445258;
        Sat, 17 Sep 2016 05:30:45 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e21si1075196wmc.2.2016.09.17.05.30.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 05:30:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,350,1470693600"; 
   d="scan'208";a="193759716"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Sep 2016 14:30:44 +0200
Date: Sat, 17 Sep 2016 14:30:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Bhumika Goyal <bhumirks@gmail.com>, Punit Vara <punitvara@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: rtsx_chip: Add
 space around binary operators
In-Reply-To: <20160917122654.GA6667@namrata-HP-Pavilion-g6-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609171428560.3454@hadrien>
References: <20160917122654.GA6667@namrata-HP-Pavilion-g6-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 17 Sep 2016, Namrata A Shettar wrote:

> Add space around binary operators to resolve checkpatch issue.
>
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx_chip.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
> index bcc4b66..c75493a 100644
> --- a/drivers/staging/rts5208/rtsx_chip.c
> +++ b/drivers/staging/rts5208/rtsx_chip.c
> @@ -760,7 +760,7 @@ static inline int check_sd_current_prior(u32 sd_current_prior)
>  	int i;
>
>  	for (i = 0; i < 4; i++) {
> -		u8 tmp = (u8)(sd_current_prior >> (i*8));
> +		u8 tmp = (u8)(sd_current_prior >> (i * 8));
>
>  		if (tmp > 0x03) {
>  			fake_para = true;
> @@ -2288,7 +2288,7 @@ int rtsx_read_ppbuf(struct rtsx_chip *chip, u8 *buf, int buf_len)
>
>  	ptr = buf;
>  	reg_addr = PPBUF_BASE2;
> -	for (i = 0; i < buf_len/256; i++) {
> +	for (i = 0; i < buf_len / 256; i++) {
>  		rtsx_init_cmd(chip);
>
>  		for (j = 0; j < 256; j++)
> @@ -2304,10 +2304,10 @@ int rtsx_read_ppbuf(struct rtsx_chip *chip, u8 *buf, int buf_len)
>  		ptr += 256;
>  	}
>
> -	if (buf_len%256) {
> +	if (buf_len % 256) {
>  		rtsx_init_cmd(chip);
>
> -		for (j = 0; j < buf_len%256; j++)
> +		for (j = 0; j < buf_len % 256; j++)
>  			rtsx_add_cmd(chip, READ_REG_CMD, reg_addr++, 0, 0);
>
>  		retval = rtsx_send_cmd(chip, 0, 250);
> @@ -2317,7 +2317,7 @@ int rtsx_read_ppbuf(struct rtsx_chip *chip, u8 *buf, int buf_len)
>  		}
>  	}
>
> -	memcpy(ptr, rtsx_get_cmd_data(chip), buf_len%256);
> +	memcpy(ptr, rtsx_get_cmd_data(chip), buf_len % 256);
>
>  	return STATUS_SUCCESS;

It could be interesting to look into the return values.  Normally the
success return value is 0 and the failure return value is some negative
error code.  To do this, you would have to look at 1) what the function
returns, 2) what the definition of STATUS_SUCCESS and any other return
values is, and 3) what is expected by the calling context.

julia

>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160917122654.GA6667%40namrata-HP-Pavilion-g6-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

