X-GM-THRID: 6339007883422728192
X-Received: by 10.46.69.69 with SMTP id s66mr1506793lja.1.1475916571489;
        Sat, 08 Oct 2016 01:49:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.215 with SMTP id 206ls592721ljj.7.gmail; Sat, 08 Oct 2016
 01:49:30 -0700 (PDT)
X-Received: by 10.46.9.193 with SMTP id 184mr1578935ljj.0.1475916570650;
        Sat, 08 Oct 2016 01:49:30 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s6si346802wmb.1.2016.10.08.01.49.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 01:49:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,311,1473112800"; 
   d="scan'208";a="239925043"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 08 Oct 2016 10:49:27 +0200
Date: Sat, 8 Oct 2016 10:49:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Juliana Rodrigues <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 12/13] staging: wlan-ng: renames
 ASL_currBSS to avoid camelcase
In-Reply-To: <20161008082801.GA10694@spock>
Message-ID: <alpine.DEB.2.10.1610081047580.7750@hadrien>
References: <cover.1475912465.git.juliana.orod@gmail.com> <20161008082801.GA10694@spock>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 8 Oct 2016, Juliana Rodrigues wrote:

> Renames the camelcased variable ASL_currBSS to asl_curr_bss in order
> to fix a checkpatch warning.
>
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h   | 2 +-
>  drivers/staging/wlan-ng/prism2sta.c | 5 +++--
>  2 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
> index 6acdbce..e00ebf3 100644
> --- a/drivers/staging/wlan-ng/hfa384x.h
> +++ b/drivers/staging/wlan-ng/hfa384x.h
> @@ -456,7 +456,7 @@ struct hfa384x_downloadbuffer {
>  /*-- Information Record: commsquality --*/
>  struct hfa384x_commsquality {
>  	u16 cq_curr_bss;
> -	u16 ASL_currBSS;
> +	u16 asl_curr_bss;
>  	u16 ANL_currFC;
>  } __packed;
>
> diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
> index 12fac7b..af75f6d 100644
> --- a/drivers/staging/wlan-ng/prism2sta.c
> +++ b/drivers/staging/wlan-ng/prism2sta.c
> @@ -373,7 +373,8 @@ static int prism2sta_mlmerequest(struct wlandevice *wlandev,
>  			    P80211ENUM_msgitem_status_data_ok;
>
>  			qualmsg->link.data = le16_to_cpu(hw->qual.cq_curr_bss);
> -			qualmsg->level.data = le16_to_cpu(hw->qual.ASL_currBSS);
> +			qualmsg->level.data = le16_to_cpu(hw->
> +							  qual.asl_curr_bss);

Breaking up the dereference like this is not very nice.  One could get the
impression that qual is a variable, rather than a field name.  It would be
better to put the line break before the call to le16_to_cpu.  It could be
indented by one more tab than the left side of the assignment.

julia

>  			qualmsg->noise.data = le16_to_cpu(hw->qual.ANL_currFC);
>  			qualmsg->txrate.data = hw->txrate;
>
> @@ -1948,7 +1949,7 @@ void prism2sta_commsqual_defer(struct work_struct *data)
>
>  		pr_debug("commsqual %d %d %d\n",
>  			 le16_to_cpu(hw->qual.cq_curr_bss),
> -			 le16_to_cpu(hw->qual.ASL_currBSS),
> +			 le16_to_cpu(hw->qual.asl_curr_bss),
>  			 le16_to_cpu(hw->qual.ANL_currFC));
>  	}
>
> --
> 2.10.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161008082801.GA10694%40spock.
> For more options, visit https://groups.google.com/d/optout.
>

