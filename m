X-GM-THRID: 6249004522009526272
X-Received: by 10.28.225.8 with SMTP id y8mr426198wmg.7.1455012997019;
        Tue, 09 Feb 2016 02:16:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.155.12 with SMTP id d12ls730688lfe.34.gmail; Tue, 09 Feb
 2016 02:16:36 -0800 (PST)
X-Received: by 10.112.54.202 with SMTP id l10mr3896889lbp.14.1455012996211;
        Tue, 09 Feb 2016 02:16:36 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h73si386255wme.0.2016.02.09.02.16.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 02:16:36 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,420,1449529200"; 
   d="scan'208";a="202245926"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 11:16:35 +0100
Date: Tue, 9 Feb 2016 11:16:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: wlan-ng: Merge two lines
 into one
In-Reply-To: <1455010952-24672-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1602091115510.2578@hadrien>
References: <1454959731-21240-1-git-send-email-bhumirks@gmail.com> <1455010952-24672-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 9 Feb 2016, Bhumika Goyal wrote:

> The last two lines of these functions are compressed into one.
> Also removed the variable ret as it is now not used.
> Found using coccinelle:
> @@
> expression e, ret;
> @@
>
> -ret =
> +return
>      e;
> -return ret;
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>

I think I acked this?  You should keep the ack.

The subject line is now good.

julia

> ---
> Changes since v1:
> * Improve subject line.
> ---
>  drivers/staging/wlan-ng/hfa384x_usb.c | 20 ++++----------------
>  1 file changed, 4 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
> index 682de77..fda8a95 100644
> --- a/drivers/staging/wlan-ng/hfa384x_usb.c
> +++ b/drivers/staging/wlan-ng/hfa384x_usb.c
> @@ -1012,7 +1012,6 @@ int hfa384x_cmd_initialize(hfa384x_t *hw)
>  ----------------------------------------------------------------*/
>  int hfa384x_cmd_disable(hfa384x_t *hw, u16 macport)
>  {
> -	int result = 0;
>  	hfa384x_metacmd_t cmd;
>
>  	cmd.cmd = HFA384x_CMD_CMDCODE_SET(HFA384x_CMDCODE_DISABLE) |
> @@ -1021,9 +1020,7 @@ int hfa384x_cmd_disable(hfa384x_t *hw, u16 macport)
>  	cmd.parm1 = 0;
>  	cmd.parm2 = 0;
>
> -	result = hfa384x_docmd_wait(hw, &cmd);
> -
> -	return result;
> +	return hfa384x_docmd_wait(hw, &cmd);
>  }
>
>  /*----------------------------------------------------------------
> @@ -1048,7 +1045,6 @@ int hfa384x_cmd_disable(hfa384x_t *hw, u16 macport)
>  ----------------------------------------------------------------*/
>  int hfa384x_cmd_enable(hfa384x_t *hw, u16 macport)
>  {
> -	int result = 0;
>  	hfa384x_metacmd_t cmd;
>
>  	cmd.cmd = HFA384x_CMD_CMDCODE_SET(HFA384x_CMDCODE_ENABLE) |
> @@ -1057,9 +1053,7 @@ int hfa384x_cmd_enable(hfa384x_t *hw, u16 macport)
>  	cmd.parm1 = 0;
>  	cmd.parm2 = 0;
>
> -	result = hfa384x_docmd_wait(hw, &cmd);
> -
> -	return result;
> +	return hfa384x_docmd_wait(hw, &cmd);
>  }
>
>  /*----------------------------------------------------------------
> @@ -1093,7 +1087,6 @@ int hfa384x_cmd_enable(hfa384x_t *hw, u16 macport)
>  ----------------------------------------------------------------*/
>  int hfa384x_cmd_monitor(hfa384x_t *hw, u16 enable)
>  {
> -	int result = 0;
>  	hfa384x_metacmd_t cmd;
>
>  	cmd.cmd = HFA384x_CMD_CMDCODE_SET(HFA384x_CMDCODE_MONITOR) |
> @@ -1102,9 +1095,7 @@ int hfa384x_cmd_monitor(hfa384x_t *hw, u16 enable)
>  	cmd.parm1 = 0;
>  	cmd.parm2 = 0;
>
> -	result = hfa384x_docmd_wait(hw, &cmd);
> -
> -	return result;
> +	return hfa384x_docmd_wait(hw, &cmd);
>  }
>
>  /*----------------------------------------------------------------
> @@ -1148,7 +1139,6 @@ int hfa384x_cmd_monitor(hfa384x_t *hw, u16 enable)
>  int hfa384x_cmd_download(hfa384x_t *hw, u16 mode, u16 lowaddr,
>  			 u16 highaddr, u16 codelen)
>  {
> -	int result = 0;
>  	hfa384x_metacmd_t cmd;
>
>  	pr_debug("mode=%d, lowaddr=0x%04x, highaddr=0x%04x, codelen=%d\n",
> @@ -1161,9 +1151,7 @@ int hfa384x_cmd_download(hfa384x_t *hw, u16 mode, u16 lowaddr,
>  	cmd.parm1 = highaddr;
>  	cmd.parm2 = codelen;
>
> -	result = hfa384x_docmd_wait(hw, &cmd);
> -
> -	return result;
> +	return hfa384x_docmd_wait(hw, &cmd);
>  }
>
>  /*----------------------------------------------------------------
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455010952-24672-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

