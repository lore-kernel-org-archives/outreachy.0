X-GM-THRID: 6249004522009526272
X-Received: by 10.25.210.201 with SMTP id j192mr3779011lfg.6.1454999516433;
        Mon, 08 Feb 2016 22:31:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.134.70 with SMTP id i67ls771722lfd.23.gmail; Mon, 08 Feb
 2016 22:31:55 -0800 (PST)
X-Received: by 10.112.50.108 with SMTP id b12mr212956lbo.15.1454999515750;
        Mon, 08 Feb 2016 22:31:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e130si364300wme.2.2016.02.08.22.31.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2016 22:31:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,420,1449529200"; 
   d="scan'208";a="163971636"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 07:31:54 +0100
Date: Tue, 9 Feb 2016 07:31:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging:wlan-ng:Merged two lines into
 one
In-Reply-To: <1454959731-21240-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1602090727070.2066@localhost6.localdomain6>
References: <1454959731-21240-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

The subject line should have a space after each :.  You can see this by 
doing

git log --oneline drivers/staging/wlan-ng/hfa384x_usb.c

Your subject line should look exactly like the ones there.

Also, the subject line should be in the imperative.  Thus Merge two 
lines... instead of Merged two lines...

Otherwise the change looks good.  Please send a v2 with an improved 
subject line and:

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1454959731-21240-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

