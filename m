X-GM-THRID: 6394745147099185152
X-Received: by 10.46.88.70 with SMTP id x6mr184871ljd.22.1488901872346;
        Tue, 07 Mar 2017 07:51:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.73 with SMTP id y9ls90918ljd.8.gmail; Tue, 07 Mar 2017
 07:51:11 -0800 (PST)
X-Received: by 10.46.9.141 with SMTP id 135mr194137ljj.19.1488901871804;
        Tue, 07 Mar 2017 07:51:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p144si81327wme.2.2017.03.07.07.51.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 07:51:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,258,1484002800"; 
   d="scan'208";a="263548327"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 16:51:11 +0100
Date: Tue, 7 Mar 2017 16:50:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sreya Mittal <sreyamittal5@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    Teddy Wang <teddy.wang@siliconmotion.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Add braces around if condition
In-Reply-To: <20170307131650.4318-1-sreyamittal5@gmail.com>
Message-ID: <alpine.DEB.2.20.1703071649491.3150@hadrien>
References: <20170307131650.4318-1-sreyamittal5@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 7 Mar 2017, Sreya Mittal wrote:

> Fix the checkpatch issue:
> braces {} should be used on all arms
> of if-else statement.

It's not a reason to resend, but it would be better to figure out how to
be informed that you are exceeding 70 or so characters in the commit
message rather than making very tiny lines.  Tiny lines are a bit hard to
read, because one has to switch lines frequently.

julia

>
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 10cf729..7948ca9 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -16,9 +16,9 @@ logical_chip_type_t sm750_get_chip_type(void)
>
>  void sm750_set_chip_type(unsigned short devId, u8 revId)
>  {
> -	if (devId == 0x718)
> +	if (devId == 0x718) {
>  		chip = SM718;
> -	else if (devId == 0x750) {
> +	} else if (devId == 0x750) {
>  		chip = SM750;
>  		/* SM750 and SM750LE are different in their revision ID only. */
>  		if (revId == SM750LE_REVISION_ID) {
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170307131650.4318-1-sreyamittal5%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

