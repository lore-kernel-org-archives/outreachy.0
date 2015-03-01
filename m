X-GM-THRID: 4455693025280
X-Received: by 10.50.92.10 with SMTP id ci10mr14209462igb.8.1425251405965;
        Sun, 01 Mar 2015 15:10:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.49.11 with SMTP id q11ls776703ign.15.canary; Sun, 01 Mar
 2015 15:10:05 -0800 (PST)
X-Received: by 10.66.90.200 with SMTP id by8mr24221763pab.38.1425251405759;
        Sun, 01 Mar 2015 15:10:05 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id xj4si1263561pbc.2.2015.03.01.15.10.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 15:10:05 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7D642268;
	Sun,  1 Mar 2015 23:10:05 +0000 (UTC)
Date: Sun, 1 Mar 2015 15:10:05 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: i2o: Fix "foo * bar" warning.
Message-ID: <20150301231005.GA11639@kroah.com>
References: <1425037935-14008-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425037935-14008-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 01:52:15PM +0200, Dilek Uzulmez wrote:
> This patch fixes these error messages found by checkpatch.pl:
> ERROR: "foo* bar" should be "foo *bar"
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/i2o/debug.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/i2o/debug.c b/drivers/staging/i2o/debug.c
> index 7a16114..3e959a4 100644
> --- a/drivers/staging/i2o/debug.c
> +++ b/drivers/staging/i2o/debug.c
> @@ -5,7 +5,7 @@
>  
>  static void i2o_report_util_cmd(u8 cmd);
>  static void i2o_report_exec_cmd(u8 cmd);
> -static void i2o_report_fail_status(u8 req_status, u32 * msg);
> +static void i2o_report_fail_status(u8 req_status, u32 *msg);
>  static void i2o_report_common_status(u8 req_status);
>  static void i2o_report_common_dsc(u16 detailed_status);
>  
> @@ -66,7 +66,7 @@ void i2o_dump_message(struct i2o_message *m)
>   * Following fail status are common to all classes.
>   * The preserved message must be handled in the reply handler.
>   */
> -static void i2o_report_fail_status(u8 req_status, u32 * msg)
> +static void i2o_report_fail_status(u8 req_status, u32 *msg)
>  {
>  	static char *FAIL_STATUS[] = {
>  		"0x80",		/* not used */
> -- 
> 1.9.1

Someone already did this work, please use the correct tree for your
patches.

