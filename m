X-GM-THRID: 6396244306305220608
X-Received: by 10.157.19.91 with SMTP id q27mr10284377otq.2.1489326221315;
        Sun, 12 Mar 2017 06:43:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.197 with SMTP id t66ls3704223ioi.25.gmail; Sun, 12 Mar
 2017 06:43:39 -0700 (PDT)
X-Received: by 10.99.222.21 with SMTP id f21mr15298600pgg.23.1489326219617;
        Sun, 12 Mar 2017 06:43:39 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si2714897pfx.8.2017.03.12.06.43.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 06:43:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 5A7D36C;
	Sun, 12 Mar 2017 13:43:37 +0000 (UTC)
Date: Sun, 12 Mar 2017 14:43:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: rtl8192u: Remove multiple assignments
Message-ID: <20170312134318.GH27791@kroah.com>
References: <1489244817-14500-1-git-send-email-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1489244817-14500-1-git-send-email-gs051095@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sat, Mar 11, 2017 at 08:36:57PM +0530, Gargi Sharma wrote:
> This patch removes multiple assignments by factorizing them.
> This was done with Coccinelle for the if branch. For the else part
> the change was done manually since Coccinelle only detects constants.
> Braces were also added to the else part to remove the checkpatch
> warning, "braces should be on all arms of if-else statements".
> 
> @ identifier i1,i2; constant c; @@
> - i1=i2=c;
> + i1=c;
> + i2=c;
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_dm.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
> index 9209aad..6afc6d6 100644
> --- a/drivers/staging/rtl8192u/r8192U_dm.c
> +++ b/drivers/staging/rtl8192u/r8192U_dm.c
> @@ -725,10 +725,14 @@ static void dm_TXPowerTrackingCallback_ThermalMeter(struct net_device *dev)
>  	} else {
>  		tmpval = (u8)tmpRegA - priv->ThermalMeter[0];
>  
> -		if (tmpval >= 6) /* higher temperature */
> -			tmpOFDMindex = tmpCCK20Mindex = 0; /* max to +6dB */
> -		else
> -			tmpOFDMindex = tmpCCK20Mindex = 6 - tmpval;
> +		if (tmpval >= 6) /* higher temperature */ {
> +			tmpOFDMindex = 0;
> +			tmpCCK20Mindex = 0;
> +		} /* max to +6dB */

Very odd place to put a comment, don't you agree?  Same for the one
above...

thanks,

greg k-h

