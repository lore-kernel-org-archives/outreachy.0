X-GM-THRID: 6339007795957858304
X-Received: by 10.46.33.135 with SMTP id h7mr82458lji.19.1475916667264;
        Sat, 08 Oct 2016 01:51:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.216.204 with SMTP id r73ls103339lfi.46.gmail; Sat, 08 Oct
 2016 01:51:06 -0700 (PDT)
X-Received: by 10.25.201.198 with SMTP id z189mr1540311lff.13.1475916666812;
        Sat, 08 Oct 2016 01:51:06 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 185si379105wmr.2.2016.10.08.01.51.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 01:51:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,311,1473112800"; 
   d="scan'208";a="196066621"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 08 Oct 2016 10:51:05 +0200
Date: Sat, 8 Oct 2016 10:51:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Juliana Rodrigues <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 11/13] staging: wlan-ng: renames
 CQ_currBSS to avoid camelcase
In-Reply-To: <20161008082741.GA9504@spock>
Message-ID: <alpine.DEB.2.10.1610081050400.7750@hadrien>
References: <cover.1475912465.git.juliana.orod@gmail.com> <20161008082741.GA9504@spock>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 8 Oct 2016, Juliana Rodrigues wrote:

> Renames the camelcased variable CQ_currBSS to cq_curr_bss in order
> to fix a checkpatch warning.
>
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h   | 2 +-
>  drivers/staging/wlan-ng/prism2sta.c | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
> index 19d1c06..6acdbce 100644
> --- a/drivers/staging/wlan-ng/hfa384x.h
> +++ b/drivers/staging/wlan-ng/hfa384x.h
> @@ -455,7 +455,7 @@ struct hfa384x_downloadbuffer {
>
>  /*-- Information Record: commsquality --*/
>  struct hfa384x_commsquality {
> -	u16 CQ_currBSS;
> +	u16 cq_curr_bss;
>  	u16 ASL_currBSS;
>  	u16 ANL_currFC;

Since the field names are all so similar, they could probably have been
done at once.

julia

>  } __packed;
> diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
> index bb75a92..12fac7b 100644
> --- a/drivers/staging/wlan-ng/prism2sta.c
> +++ b/drivers/staging/wlan-ng/prism2sta.c
> @@ -372,7 +372,7 @@ static int prism2sta_mlmerequest(struct wlandevice *wlandev,
>  			qualmsg->noise.status =
>  			    P80211ENUM_msgitem_status_data_ok;
>
> -			qualmsg->link.data = le16_to_cpu(hw->qual.CQ_currBSS);
> +			qualmsg->link.data = le16_to_cpu(hw->qual.cq_curr_bss);
>  			qualmsg->level.data = le16_to_cpu(hw->qual.ASL_currBSS);
>  			qualmsg->noise.data = le16_to_cpu(hw->qual.ANL_currFC);
>  			qualmsg->txrate.data = hw->txrate;
> @@ -1947,7 +1947,7 @@ void prism2sta_commsqual_defer(struct work_struct *data)
>  		}
>
>  		pr_debug("commsqual %d %d %d\n",
> -			 le16_to_cpu(hw->qual.CQ_currBSS),
> +			 le16_to_cpu(hw->qual.cq_curr_bss),
>  			 le16_to_cpu(hw->qual.ASL_currBSS),
>  			 le16_to_cpu(hw->qual.ANL_currFC));
>  	}
> --
> 2.10.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161008082741.GA9504%40spock.
> For more options, visit https://groups.google.com/d/optout.
>

