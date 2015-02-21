X-GM-THRID: 1709174685696
X-Received: by 10.194.239.41 with SMTP id vp9mr312192wjc.5.1424528402896;
        Sat, 21 Feb 2015 06:20:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.5.33 with SMTP id cj1ls419917lad.53.gmail; Sat, 21 Feb
 2015 06:20:02 -0800 (PST)
X-Received: by 10.152.26.74 with SMTP id j10mr312512lag.10.1424528402309;
        Sat, 21 Feb 2015 06:20:02 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i7si317749wif.0.2015.02.21.06.20.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 06:20:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="100853422"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 15:19:40 +0100
Date: Sat, 21 Feb 2015 15:19:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Add blank line
In-Reply-To: <1424516894-4970-1-git-send-email-yeliztaneroglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211519030.2480@hadrien>
References: <1424516894-4970-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Yeliz Taneroglu wrote:

> This patch fixes the checkpatch.pl warning:
> WARNING: "Missing a blank line after declarations"
>
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
> index 1f2c78c..9fdb171 100644
> --- a/drivers/staging/wlan-ng/hfa384x.h
> +++ b/drivers/staging/wlan-ng/hfa384x.h
> @@ -1166,6 +1166,7 @@ typedef struct hfa384x_usbctlx {
>  	CTLX_STATE state;	/* Tracks running state */
>
>  	struct completion done;
> +

This is not the end of the list of declarations.  The next line is a
declaration too, and the code is fine.

julia

>  	volatile int reapable;	/* Food for the reaper task */
>
>  	ctlx_cmdcb_t cmdcb;	/* Async command callback */
> @@ -1376,6 +1377,7 @@ int hfa384x_drvr_setconfig(hfa384x_t *hw, u16 rid, void *buf, u16 len);
>  static inline int hfa384x_drvr_getconfig16(hfa384x_t *hw, u16 rid, void *val)
>  {
>  	int result = 0;
> +
>  	result = hfa384x_drvr_getconfig(hw, rid, val, sizeof(u16));
>  	if (result == 0)
>  		*((u16 *) val) = le16_to_cpu(*((u16 *) val));
> @@ -1385,6 +1387,7 @@ static inline int hfa384x_drvr_getconfig16(hfa384x_t *hw, u16 rid, void *val)
>  static inline int hfa384x_drvr_setconfig16(hfa384x_t *hw, u16 rid, u16 val)
>  {
>  	u16 value = cpu_to_le16(val);
> +
>  	return hfa384x_drvr_setconfig(hw, rid, &value, sizeof(value));
>  }
>
> @@ -1402,6 +1405,7 @@ static inline int
>  hfa384x_drvr_setconfig16_async(hfa384x_t *hw, u16 rid, u16 val)
>  {
>  	u16 value = cpu_to_le16(val);
> +
>  	return hfa384x_drvr_setconfig_async(hw, rid, &value, sizeof(value),
>  					    NULL, NULL);
>  }
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424516894-4970-1-git-send-email-yeliztaneroglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

