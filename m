X-GM-THRID: 6392835608825298944
X-Received: by 10.25.150.212 with SMTP id y203mr1595070lfd.30.1488448117166;
        Thu, 02 Mar 2017 01:48:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.213 with SMTP id 204ls667300ljj.51.gmail; Thu, 02 Mar
 2017 01:48:35 -0800 (PST)
X-Received: by 10.46.22.68 with SMTP id 4mr1882218ljw.14.1488448115535;
        Thu, 02 Mar 2017 01:48:35 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si713790wmn.2.2017.03.02.01.48.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 01:48:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,230,1484002800"; 
   d="scan'208";a="215285283"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2017 10:48:34 +0100
Date: Thu, 2 Mar 2017 10:48:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, sergio.paracuellos@gmail.com, 
    juliana.orod@gmail.com, thomas.petazzoni@free-electrons.com, 
    noralf@tronnes.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/6] staging: wlan-ng: Fix sparse
 warning of restricted __le16
In-Reply-To: <1488448146-29452-1-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1703021047350.3414@hadrien>
References: <1488448146-29452-1-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 2 Mar 2017, simran singhal wrote:

> This patch fixes the following sparse warning:
> warning: cast to restricted __le16

You commit message should not say just fix X.  What have you done to carry
out the fix and why is this the correct approach?

julia

>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/wlan-ng/prism2sta.c | 51 ++++++++++++++++++-------------------
>  1 file changed, 25 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
> index 984804b..82d3a70 100644
> --- a/drivers/staging/wlan-ng/prism2sta.c
> +++ b/drivers/staging/wlan-ng/prism2sta.c
> @@ -372,10 +372,9 @@ static int prism2sta_mlmerequest(struct wlandevice *wlandev,
>  			qualmsg->noise.status =
>  			    P80211ENUM_msgitem_status_data_ok;
>
> -			qualmsg->link.data = le16_to_cpu(hw->qual.cq_curr_bss);
> -			qualmsg->level.data =
> -				le16_to_cpu(hw->qual.asl_curr_bss);
> -			qualmsg->noise.data = le16_to_cpu(hw->qual.anl_curr_fc);
> +			qualmsg->link.data = hw->qual.cq_curr_bss;
> +			qualmsg->level.data = hw->qual.asl_curr_bss;
> +			qualmsg->noise.data = hw->qual.anl_curr_fc;
>  			qualmsg->txrate.data = hw->txrate;
>
>  			break;
> @@ -603,10 +602,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>  	}
>
>  	/* get all the nic id fields in host byte order */
> -	hw->ident_nic.id = le16_to_cpu(hw->ident_nic.id);
> -	hw->ident_nic.variant = le16_to_cpu(hw->ident_nic.variant);
> -	hw->ident_nic.major = le16_to_cpu(hw->ident_nic.major);
> -	hw->ident_nic.minor = le16_to_cpu(hw->ident_nic.minor);
> +	hw->ident_nic.id = hw->ident_nic.id;
> +	hw->ident_nic.variant = hw->ident_nic.variant;
> +	hw->ident_nic.major = hw->ident_nic.major;
> +	hw->ident_nic.minor = hw->ident_nic.minor;
>
>  	netdev_info(wlandev->netdev, "ident: nic h/w: id=0x%02x %d.%d.%d\n",
>  		    hw->ident_nic.id, hw->ident_nic.major,
> @@ -622,10 +621,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>  	}
>
>  	/* get all the private fw id fields in host byte order */
> -	hw->ident_pri_fw.id = le16_to_cpu(hw->ident_pri_fw.id);
> -	hw->ident_pri_fw.variant = le16_to_cpu(hw->ident_pri_fw.variant);
> -	hw->ident_pri_fw.major = le16_to_cpu(hw->ident_pri_fw.major);
> -	hw->ident_pri_fw.minor = le16_to_cpu(hw->ident_pri_fw.minor);
> +	hw->ident_pri_fw.id = hw->ident_pri_fw.id;
> +	hw->ident_pri_fw.variant = hw->ident_pri_fw.variant;
> +	hw->ident_pri_fw.major = hw->ident_pri_fw.major;
> +	hw->ident_pri_fw.minor = hw->ident_pri_fw.minor;
>
>  	netdev_info(wlandev->netdev, "ident: pri f/w: id=0x%02x %d.%d.%d\n",
>  		    hw->ident_pri_fw.id, hw->ident_pri_fw.major,
> @@ -648,10 +647,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>  	}
>
>  	/* get all the station fw id fields in host byte order */
> -	hw->ident_sta_fw.id = le16_to_cpu(hw->ident_sta_fw.id);
> -	hw->ident_sta_fw.variant = le16_to_cpu(hw->ident_sta_fw.variant);
> -	hw->ident_sta_fw.major = le16_to_cpu(hw->ident_sta_fw.major);
> -	hw->ident_sta_fw.minor = le16_to_cpu(hw->ident_sta_fw.minor);
> +	hw->ident_sta_fw.id = hw->ident_sta_fw.id;
> +	hw->ident_sta_fw.variant = hw->ident_sta_fw.variant;
> +	hw->ident_sta_fw.major = hw->ident_sta_fw.major;
> +	hw->ident_sta_fw.minor = hw->ident_sta_fw.minor;
>
>  	/* strip out the 'special' variant bits */
>  	hw->mm_mods = hw->ident_sta_fw.variant & GENMASK(15, 14);
> @@ -683,11 +682,11 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>  	/* get all the Compatibility range, modem interface supplier
>  	 * fields in byte order
>  	 */
> -	hw->cap_sup_mfi.role = le16_to_cpu(hw->cap_sup_mfi.role);
> -	hw->cap_sup_mfi.id = le16_to_cpu(hw->cap_sup_mfi.id);
> -	hw->cap_sup_mfi.variant = le16_to_cpu(hw->cap_sup_mfi.variant);
> -	hw->cap_sup_mfi.bottom = le16_to_cpu(hw->cap_sup_mfi.bottom);
> -	hw->cap_sup_mfi.top = le16_to_cpu(hw->cap_sup_mfi.top);
> +	hw->cap_sup_mfi.role = hw->cap_sup_mfi.role;
> +	hw->cap_sup_mfi.id = hw->cap_sup_mfi.id;
> +	hw->cap_sup_mfi.variant = hw->cap_sup_mfi.variant;
> +	hw->cap_sup_mfi.bottom = hw->cap_sup_mfi.bottom;
> +	hw->cap_sup_mfi.top = hw->cap_sup_mfi.top;
>
>  	netdev_info(wlandev->netdev,
>  		    "MFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
> @@ -707,11 +706,11 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>  	/* get all the Compatibility range, controller interface supplier
>  	 * fields in byte order
>  	 */
> -	hw->cap_sup_cfi.role = le16_to_cpu(hw->cap_sup_cfi.role);
> -	hw->cap_sup_cfi.id = le16_to_cpu(hw->cap_sup_cfi.id);
> -	hw->cap_sup_cfi.variant = le16_to_cpu(hw->cap_sup_cfi.variant);
> -	hw->cap_sup_cfi.bottom = le16_to_cpu(hw->cap_sup_cfi.bottom);
> -	hw->cap_sup_cfi.top = le16_to_cpu(hw->cap_sup_cfi.top);
> +	hw->cap_sup_cfi.role = hw->cap_sup_cfi.role;
> +	hw->cap_sup_cfi.id = hw->cap_sup_cfi.id;
> +	hw->cap_sup_cfi.variant = hw->cap_sup_cfi.variant;
> +	hw->cap_sup_cfi.bottom = hw->cap_sup_cfi.bottom;
> +	hw->cap_sup_cfi.top = hw->cap_sup_cfi.top;
>
>  	netdev_info(wlandev->netdev,
>  		    "CFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488448146-29452-1-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

