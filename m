X-GM-THRID: 6393343309495926784
X-Received: by 10.25.157.14 with SMTP id g14mr623963lfe.28.1488566581056;
        Fri, 03 Mar 2017 10:43:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.19 with SMTP id s19ls1089486ljd.52.gmail; Fri, 03 Mar
 2017 10:43:00 -0800 (PST)
X-Received: by 10.46.76.17 with SMTP id z17mr730583lja.13.1488566580603;
        Fri, 03 Mar 2017 10:43:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si621608wmd.0.2017.03.03.10.43.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:43:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,238,1484002800"; 
   d="scan'208";a="263049297"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2017 19:42:32 +0100
Date: Fri, 3 Mar 2017 19:42:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, 
    outreachy-kernel@googlegroups.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    speakup@linux-speakup.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 5/6] staging: speakup: Avoid multiple
 assignments on same line
In-Reply-To: <20170303183707.14830-6-arushisinghal19971997@gmail.com>
Message-ID: <alpine.DEB.2.20.1703031941290.2133@hadrien>
References: <20170303183707.14830-1-arushisinghal19971997@gmail.com> <20170303183707.14830-6-arushisinghal19971997@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 4 Mar 2017, Arushi Singhal wrote:

> This patch fixes the checkpatch.pl warning "multiple assignments
> should be avoided."
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/main.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 4c3b5c627718..7915e75664f4 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -269,9 +269,12 @@ static unsigned char get_attributes(struct vc_data *vc, u16 *pos)
>
>  static void speakup_date(struct vc_data *vc)
>  {
> -	spk_x = spk_cx = vc->vc_x;
> -	spk_y = spk_cy = vc->vc_y;
> -	spk_pos = spk_cp = vc->vc_pos;
> +	spk_x = vc->vc_x;
> +	spk_cx = vc->vc_x;
> +	spk_y = vc->vc_y;
> +	spk_cy = vc->vc_y;
> +	spk_pos = vc->vc_pos;
> +	spk_cp = vc->vc_pos;
>  	spk_old_attr = spk_attr;
>  	spk_attr = get_attributes(vc, (u_short *)spk_pos);
>  }
> @@ -1643,9 +1646,12 @@ static int speak_highlight(struct vc_data *vc)
>  		spk_do_flush();
>  		spkup_write(speakup_console[vc_num]->ht.highbuf[hc],
>  			    speakup_console[vc_num]->ht.highsize[hc]);
> -		spk_pos = spk_cp = speakup_console[vc_num]->ht.rpos[hc];
> -		spk_x = spk_cx = speakup_console[vc_num]->ht.rx[hc];
> -		spk_y = spk_cy = speakup_console[vc_num]->ht.ry[hc];
> +		spk_pos = speakup_console[vc_num]->ht.rpos[hc];
> +		spk_cp = speakup_console[vc_num]->ht.rpos[hc];
> +		spk_x = speakup_console[vc_num]->ht.rx[hc];
> +		spk_cx = speakup_console[vc_num]->ht.rx[hc];
> +		spk_y = speakup_console[vc_num]->ht.ry[hc];
> +		spk_cy = speakup_console[vc_num]->ht.ry[hc];

It could be better to put eg spk_cp = spk_pos;.  Repeating th big
expression on the right hand side could be error prone in the long term.

julia

>  		return 1;
>  	}
>  	return 0;
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170303183707.14830-6-arushisinghal19971997%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

