X-GM-THRID: 231908311040
X-Received: by 10.180.91.76 with SMTP id cc12mr265353wib.7.1424289991856;
        Wed, 18 Feb 2015 12:06:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.38 with SMTP id p6ls43584lap.17.gmail; Wed, 18 Feb 2015
 12:06:31 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr149068lbb.14.1424289991556;
        Wed, 18 Feb 2015 12:06:31 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cl5si8880840wib.3.2015.02.18.12.06.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 12:06:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,603,1418079600"; 
   d="scan'208";a="100529441"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Feb 2015 21:06:30 +0100
Date: Wed, 18 Feb 2015 21:06:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: i2o: Convert comment from
 C99 style to C89 style
In-Reply-To: <20150218192100.GA18100@gmail.com>
Message-ID: <alpine.DEB.2.02.1502182105150.2248@localhost6.localdomain6>
References: <20150218192100.GA18100@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 19 Feb 2015, Vatika Harlalka wrote:

> C99 style comment // should not be used as per coding guidelines.
> Usage of C99 style comment // was resulting in checkpatch.pl error.
> Hence replaced it with block comment /* */ 

The commit message is a bit too verbose, as compared to the information it 
provides.  In this case, probably just the first line is good enough.

In general, try to avoid mentioning checkpatch in your commit message.  
Explain what you are doing and why.

julia


> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/i2o/debug.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/i2o/debug.c b/drivers/staging/i2o/debug.c
> index 3e959a4..c8d690c 100644
> --- a/drivers/staging/i2o/debug.c
> +++ b/drivers/staging/i2o/debug.c
> @@ -22,17 +22,17 @@ void i2o_report_status(const char *severity, const char *str,
>  	u16 detailed_status = msg[4] & 0xFFFF;
>  
>  	if (cmd == I2O_CMD_UTIL_EVT_REGISTER)
> -		return;		// No status in this reply
> +		return;		/* No status in this reply */
>  
>  	printk("%s%s: ", severity, str);
>  
> -	if (cmd < 0x1F)		// Utility cmd
> +	if (cmd < 0x1F)		/* Utility cmd */
>  		i2o_report_util_cmd(cmd);
>  
> -	else if (cmd >= 0xA0 && cmd <= 0xEF)	// Executive cmd
> +	else if (cmd >= 0xA0 && cmd <= 0xEF)	/* Executive cmd */
>  		i2o_report_exec_cmd(cmd);
>  	else
> -		printk("Cmd = %0#2x, ", cmd);	// Other cmds
> +		printk("Cmd = %0#2x, ", cmd);	/* Other cmds */
>  
>  	if (msg[0] & MSG_FAIL) {
>  		i2o_report_fail_status(req_status, msg);
> @@ -156,14 +156,14 @@ static void i2o_report_common_dsc(u16 detailed_status)
>  {
>  	static char *COMMON_DSC[] = {
>  		"SUCCESS",
> -		"0x01",		// not used
> +		"0x01",		/* not used */
>  		"BAD_KEY",
>  		"TCL_ERROR",
>  		"REPLY_BUFFER_FULL",
>  		"NO_SUCH_PAGE",
>  		"INSUFFICIENT_RESOURCE_SOFT",
>  		"INSUFFICIENT_RESOURCE_HARD",
> -		"0x08",		// not used
> +		"0x08",		/* not used */
>  		"CHAIN_BUFFER_TOO_LARGE",
>  		"UNSUPPORTED_FUNCTION",
>  		"DEVICE_LOCKED",
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150218192100.GA18100%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

