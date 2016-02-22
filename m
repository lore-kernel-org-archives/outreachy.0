X-GM-THRID: 6254101469498179584
X-Received: by 10.194.84.40 with SMTP id v8mr3710186wjy.2.1456175624292;
        Mon, 22 Feb 2016 13:13:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.89.138 with SMTP id n132ls425926lfb.70.gmail; Mon, 22 Feb
 2016 13:13:43 -0800 (PST)
X-Received: by 10.112.54.202 with SMTP id l10mr3728705lbp.14.1456175623692;
        Mon, 22 Feb 2016 13:13:43 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h126si702221wme.0.2016.02.22.13.13.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 13:13:43 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 571C0C81;
	Mon, 22 Feb 2016 21:13:42 +0000 (UTC)
Date: Mon, 22 Feb 2016 13:13:42 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: obdclass: Replace
 simple_strtoul with kstrtoint
Message-ID: <20160222211342.GD5849@kroah.com>
References: <20160222130735.GA26820@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160222130735.GA26820@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 22, 2016 at 06:37:36PM +0530, Amitoj Kaur Chawla wrote:
> Replace obsolete simple_strtoul with kstrtoint.
> This change was made with the help of the following Coccinelle
> semantic patch:
> 
> // <smpl>
> @@
> expression e,g;
> @@
> (
> * simple_strtoul(e, NULL, g)
> |
> * simple_strtol(e, NULL, g)
> |
> * simple_strtoull(e, NULL, g)
> )
> // </smpl>
> 
> Additionally, `err` and `val` variables were introduced to store error
> code returned by kstrtoint and result of conversion on success
> respectively.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/obd_mount.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/obdclass/obd_mount.c b/drivers/staging/lustre/lustre/obdclass/obd_mount.c
> index 5fa6ce6..29b513e 100644
> --- a/drivers/staging/lustre/lustre/obdclass/obd_mount.c
> +++ b/drivers/staging/lustre/lustre/obdclass/obd_mount.c
> @@ -900,6 +900,7 @@ static int lmd_parse(char *options, struct lustre_mount_data *lmd)
>  	while (*s1) {
>  		int clear = 0;
>  		int time_min = OBD_RECOVERY_TIME_MIN;
> +		int val, err;
>  
>  		/* Skip whitespace and extra commas */
>  		while (*s1 == ' ' || *s1 == ',')
> @@ -914,12 +915,16 @@ static int lmd_parse(char *options, struct lustre_mount_data *lmd)
>  			lmd->lmd_flags |= LMD_FLG_ABORT_RECOV;
>  			clear++;
>  		} else if (strncmp(s1, "recovery_time_soft=", 19) == 0) {
> -			lmd->lmd_recovery_time_soft = max_t(int,
> -				simple_strtoul(s1 + 19, NULL, 10), time_min);
> +			err = kstrtoint(s1 + 19, 10, &val);
> +			if (err)
> +				return err;
> +			lmd->lmd_recovery_time_soft = max_t(int, val, time_min);

max_t() is no longer needed here, right?  It can just be max().

same for the other use in this patch.

thanks,

greg k-h

