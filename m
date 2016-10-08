X-GM-THRID: 6339006918533578752
X-Received: by 10.194.191.138 with SMTP id gy10mr1524365wjc.9.1475915313071;
        Sat, 08 Oct 2016 01:28:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.67.68 with SMTP id q65ls1044975wma.13.gmail; Sat, 08 Oct
 2016 01:28:32 -0700 (PDT)
X-Received: by 10.194.46.233 with SMTP id y9mr1508298wjm.3.1475915312509;
        Sat, 08 Oct 2016 01:28:32 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e21si353393wmc.2.2016.10.08.01.28.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 01:28:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,311,1473112800"; 
   d="scan'208";a="196065161"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 08 Oct 2016 10:28:31 +0200
Date: Sat, 8 Oct 2016 10:28:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Juliana Rodrigues <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 01/13] staging: wlan-ng: aligned block
 to open parenthesis
In-Reply-To: <20161008082415.GA7741@spock>
Message-ID: <alpine.DEB.2.10.1610081027480.7750@hadrien>
References: <cover.1475912465.git.juliana.orod@gmail.com> <20161008082415.GA7741@spock>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 8 Oct 2016, Juliana Rodrigues wrote:

> Fixed multiple checkpatch warnings by aligning blocks to match
> open parenthesis.
>
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/staging/wlan-ng/prism2sta.c | 70 ++++++++++++++++++-------------------
>  1 file changed, 35 insertions(+), 35 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
> index e1b4a94..2b35345 100644
> --- a/drivers/staging/wlan-ng/prism2sta.c
> +++ b/drivers/staging/wlan-ng/prism2sta.c
> @@ -606,8 +606,8 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>  	hw->ident_nic.minor = le16_to_cpu(hw->ident_nic.minor);
>
>  	netdev_info(wlandev->netdev, "ident: nic h/w: id=0x%02x %d.%d.%d\n",
> -	       hw->ident_nic.id, hw->ident_nic.major,
> -	       hw->ident_nic.minor, hw->ident_nic.variant);
> +		    hw->ident_nic.id, hw->ident_nic.major,
> +		    hw->ident_nic.minor, hw->ident_nic.variant);
>
>  	/* Primary f/w identity */
>  	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_PRIIDENTITY,
> @@ -625,8 +625,8 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>  	hw->ident_pri_fw.minor = le16_to_cpu(hw->ident_pri_fw.minor);
>
>  	netdev_info(wlandev->netdev, "ident: pri f/w: id=0x%02x %d.%d.%d\n",
> -	       hw->ident_pri_fw.id, hw->ident_pri_fw.major,
> -	       hw->ident_pri_fw.minor, hw->ident_pri_fw.variant);
> +		    hw->ident_pri_fw.id, hw->ident_pri_fw.major,
> +		    hw->ident_pri_fw.minor, hw->ident_pri_fw.variant);
>
>  	/* Station (Secondary?) f/w identity */
>  	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_STAIDENTITY,
> @@ -639,7 +639,7 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>
>  	if (hw->ident_nic.id < 0x8000) {
>  		netdev_err(wlandev->netdev,
> -		       "FATAL: Card is not an Intersil Prism2/2.5/3\n");
> +			   "FATAL: Card is not an Intersil Prism2/2.5/3\n");
>  		result = -1;
>  		goto failed;
>  	}
> @@ -656,12 +656,12 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>
>  	if (hw->ident_sta_fw.id == 0x1f) {
>  		netdev_info(wlandev->netdev,
> -		       "ident: sta f/w: id=0x%02x %d.%d.%d\n",
> +			    "ident: sta f/w: id=0x%02x %d.%d.%d\n",

This case and the next one look odd.  You have aligned one of the
arguments, but not the other ones.

julia

>  		       hw->ident_sta_fw.id, hw->ident_sta_fw.major,
>  		       hw->ident_sta_fw.minor, hw->ident_sta_fw.variant);
>  	} else {
>  		netdev_info(wlandev->netdev,
> -		       "ident:  ap f/w: id=0x%02x %d.%d.%d\n",
> +			    "ident:  ap f/w: id=0x%02x %d.%d.%d\n",
>  		       hw->ident_sta_fw.id, hw->ident_sta_fw.major,
>  		       hw->ident_sta_fw.minor, hw->ident_sta_fw.variant);
>  		netdev_err(wlandev->netdev, "Unsupported Tertiary AP firmware loaded!\n");
> @@ -687,10 +687,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>  	hw->cap_sup_mfi.top = le16_to_cpu(hw->cap_sup_mfi.top);
>
>  	netdev_info(wlandev->netdev,
> -	       "MFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
> -	       hw->cap_sup_mfi.role, hw->cap_sup_mfi.id,
> -	       hw->cap_sup_mfi.variant, hw->cap_sup_mfi.bottom,
> -	       hw->cap_sup_mfi.top);
> +		    "MFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
> +		    hw->cap_sup_mfi.role, hw->cap_sup_mfi.id,
> +		    hw->cap_sup_mfi.variant, hw->cap_sup_mfi.bottom,
> +		    hw->cap_sup_mfi.top);
>
>  	/* Compatibility range, Controller supplier */
>  	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_CFISUPRANGE,
> @@ -711,10 +711,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>  	hw->cap_sup_cfi.top = le16_to_cpu(hw->cap_sup_cfi.top);
>
>  	netdev_info(wlandev->netdev,
> -	       "CFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
> -	       hw->cap_sup_cfi.role, hw->cap_sup_cfi.id,
> -	       hw->cap_sup_cfi.variant, hw->cap_sup_cfi.bottom,
> -	       hw->cap_sup_cfi.top);
> +		    "CFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
> +		    hw->cap_sup_cfi.role, hw->cap_sup_cfi.id,
> +		    hw->cap_sup_cfi.variant, hw->cap_sup_cfi.bottom,
> +		    hw->cap_sup_cfi.top);
>
>  	/* Compatibility range, Primary f/w supplier */
>  	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_PRISUPRANGE,
> @@ -735,10 +735,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>  	hw->cap_sup_pri.top = le16_to_cpu(hw->cap_sup_pri.top);
>
>  	netdev_info(wlandev->netdev,
> -	       "PRI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
> -	       hw->cap_sup_pri.role, hw->cap_sup_pri.id,
> -	       hw->cap_sup_pri.variant, hw->cap_sup_pri.bottom,
> -	       hw->cap_sup_pri.top);
> +		    "PRI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
> +		    hw->cap_sup_pri.role, hw->cap_sup_pri.id,
> +		    hw->cap_sup_pri.variant, hw->cap_sup_pri.bottom,
> +		    hw->cap_sup_pri.top);
>
>  	/* Compatibility range, Station f/w supplier */
>  	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_STASUPRANGE,
> @@ -791,10 +791,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>  	hw->cap_act_pri_cfi.top = le16_to_cpu(hw->cap_act_pri_cfi.top);
>
>  	netdev_info(wlandev->netdev,
> -	       "PRI-CFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
> -	       hw->cap_act_pri_cfi.role, hw->cap_act_pri_cfi.id,
> -	       hw->cap_act_pri_cfi.variant, hw->cap_act_pri_cfi.bottom,
> -	       hw->cap_act_pri_cfi.top);
> +		    "PRI-CFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
> +		    hw->cap_act_pri_cfi.role, hw->cap_act_pri_cfi.id,
> +		    hw->cap_act_pri_cfi.variant, hw->cap_act_pri_cfi.bottom,
> +		    hw->cap_act_pri_cfi.top);
>
>  	/* Compatibility range, sta f/w actor, CFI supplier */
>  	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_STA_CFIACTRANGES,
> @@ -815,10 +815,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>  	hw->cap_act_sta_cfi.top = le16_to_cpu(hw->cap_act_sta_cfi.top);
>
>  	netdev_info(wlandev->netdev,
> -	       "STA-CFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
> -	       hw->cap_act_sta_cfi.role, hw->cap_act_sta_cfi.id,
> -	       hw->cap_act_sta_cfi.variant, hw->cap_act_sta_cfi.bottom,
> -	       hw->cap_act_sta_cfi.top);
> +		    "STA-CFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
> +		    hw->cap_act_sta_cfi.role, hw->cap_act_sta_cfi.id,
> +		    hw->cap_act_sta_cfi.variant, hw->cap_act_sta_cfi.bottom,
> +		    hw->cap_act_sta_cfi.top);
>
>  	/* Compatibility range, sta f/w actor, MFI supplier */
>  	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_STA_MFIACTRANGES,
> @@ -839,10 +839,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>  	hw->cap_act_sta_mfi.top = le16_to_cpu(hw->cap_act_sta_mfi.top);
>
>  	netdev_info(wlandev->netdev,
> -	       "STA-MFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
> -	       hw->cap_act_sta_mfi.role, hw->cap_act_sta_mfi.id,
> -	       hw->cap_act_sta_mfi.variant, hw->cap_act_sta_mfi.bottom,
> -	       hw->cap_act_sta_mfi.top);
> +		    "STA-MFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
> +		    hw->cap_act_sta_mfi.role, hw->cap_act_sta_mfi.id,
> +		    hw->cap_act_sta_mfi.variant, hw->cap_act_sta_mfi.bottom,
> +		    hw->cap_act_sta_mfi.top);
>
>  	/* Serial Number */
>  	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_NICSERIALNUMBER,
> @@ -920,7 +920,7 @@ static int prism2sta_globalsetup(struct wlandevice *wlandev)
>  }
>
>  static int prism2sta_setmulticast(struct wlandevice *wlandev,
> -					struct net_device *dev)
> +				  struct net_device *dev)
>  {
>  	int result = 0;
>  	struct hfa384x *hw = wlandev->priv;
> @@ -1064,7 +1064,7 @@ static void prism2sta_inf_scanresults(struct wlandevice *wlandev,
>  					&joinreq, HFA384x_RID_JOINREQUEST_LEN);
>  	if (result) {
>  		netdev_err(wlandev->netdev, "setconfig(joinreq) failed, result=%d\n",
> -		       result);
> +			   result);
>  	}
>  }
>
> @@ -1415,7 +1415,7 @@ void prism2sta_processing_defer(struct work_struct *data)
>  	default:
>  		/* This is bad, IO port problems? */
>  		netdev_warn(wlandev->netdev,
> -		       "unknown linkstatus=0x%02x\n", hw->link_status);
> +			    "unknown linkstatus=0x%02x\n", hw->link_status);
>  		return;
>  	}
>
> @@ -1785,7 +1785,7 @@ void prism2sta_ev_info(struct wlandevice *wlandev, struct hfa384x_InfFrame *inf)
>  		break;
>  	default:
>  		netdev_warn(wlandev->netdev,
> -		       "Unknown info type=0x%02x\n", inf->infotype);
> +			    "Unknown info type=0x%02x\n", inf->infotype);
>  		break;
>  	}
>  }
> --
> 2.10.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161008082415.GA7741%40spock.
> For more options, visit https://groups.google.com/d/optout.
>

