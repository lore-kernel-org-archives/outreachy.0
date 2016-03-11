X-GM-THRID: 6256120108487278592
X-Received: by 10.50.142.2 with SMTP id rs2mr2959484igb.6.1457719950988;
        Fri, 11 Mar 2016 10:12:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.100.214 with SMTP id s80ls2886845qge.94.gmail; Fri, 11 Mar
 2016 10:12:30 -0800 (PST)
X-Received: by 10.140.223.17 with SMTP id t17mr8189643qhb.18.1457719950465;
        Fri, 11 Mar 2016 10:12:30 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tu5si1213955pab.2.2016.03.11.10.12.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 10:12:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 29F26A59;
	Fri, 11 Mar 2016 18:12:30 +0000 (UTC)
Date: Fri, 11 Mar 2016 10:12:29 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 08/10] staging: octeon: Use type s32
 instead of int32_t
Message-ID: <20160311181229.GA10716@kroah.com>
References: <cover.1456615452.git.nevola@gmail.com>
 <c0ddbba2fc4769b30c523dda526098e063576d1f.1456615452.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c0ddbba2fc4769b30c523dda526098e063576d1f.1456615452.git.nevola@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 28, 2016 at 12:45:53AM +0100, Laura Garcia Liebana wrote:
> Prefer the use of type s32 instead of int32_t. Checkpatch detected these
> issues.
> 
> Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> ---
>  drivers/staging/octeon/ethernet-tx.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
> index 024263d4..db04388 100644
> --- a/drivers/staging/octeon/ethernet-tx.c
> +++ b/drivers/staging/octeon/ethernet-tx.c
> @@ -58,9 +58,9 @@ static DECLARE_TASKLET(cvm_oct_tx_cleanup_tasklet, cvm_oct_tx_do_cleanup, 0);
>  /* Maximum number of SKBs to try to free per xmit packet. */
>  #define MAX_SKB_TO_FREE (MAX_OUT_QUEUE_DEPTH * 2)
>  
> -static inline int32_t cvm_oct_adjust_skb_to_free(int32_t skb_to_free, int fau)
> +static inline s32 cvm_oct_adjust_skb_to_free(s32 skb_to_free, int fau)

These really can all be switched to 'int', right?

thanks,

greg k-h

