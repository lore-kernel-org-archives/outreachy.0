X-GM-THRID: 6393343309495926784
X-Received: by 10.25.104.21 with SMTP id d21mr2942607lfc.31.1489166428126;
        Fri, 10 Mar 2017 09:20:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.92 with SMTP id r28ls1099019ljd.11.gmail; Fri, 10 Mar
 2017 09:20:26 -0800 (PST)
X-Received: by 10.25.223.67 with SMTP id q3mr2728676lfj.1.1489166426417;
        Fri, 10 Mar 2017 09:20:26 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t131si3875wmf.1.2017.03.10.09.20.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 09:20:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,141,1486422000"; 
   d="scan'208";a="216334783"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 18:20:25 +0100
Date: Fri, 10 Mar 2017 18:20:11 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: w.d.hubbs@gmail.com, Chris Brannon <chris@the-brannons.com>, 
    Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Avoid multiple
 assignments on same line
In-Reply-To: <20170310171337.GA4940@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1703101819260.3356@hadrien>
References: <20170310171337.GA4940@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, Arushi Singhal wrote:

> This patch fixes the checkpatch.pl warning "multiple assignments
> should be avoided."

Is this something that you have sent before that Greg asked you to resend?
It could be good to put RESEND in [PATCH] in that case.

julia

>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/main.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index c1c3ee7dc95a..6c21ae1ae2d3 100644
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
> +	spk_cx = spk_x;
> +	spk_y = vc->vc_y;
> +	spk_cy = spk_y;
> +	spk_pos = vc->vc_pos;
> +	spk_cp = spk_pos;
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170310171337.GA4940%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

