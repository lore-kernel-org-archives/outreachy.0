X-GM-THRID: 9527712808960
X-Received: by 10.52.122.75 with SMTP id lq11mr1933424vdb.4.1427152894778;
        Mon, 23 Mar 2015 16:21:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.170 with SMTP id 39ls2760778qgf.33.gmail; Mon, 23 Mar
 2015 16:21:34 -0700 (PDT)
X-Received: by 10.236.47.136 with SMTP id t8mr1980453yhb.44.1427152894621;
        Mon, 23 Mar 2015 16:21:34 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si252890pac.2.2015.03.23.16.21.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2015 16:21:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7F54AA79;
	Mon, 23 Mar 2015 23:21:33 +0000 (UTC)
Date: Mon, 23 Mar 2015 22:28:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel][PATCH 1/5] Staging: sm750fb: Remove spaces
 before lines
Message-ID: <20150323212806.GC23414@kroah.com>
References: <20150322032954.GA29921@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150322032954.GA29921@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 22, 2015 at 08:59:54AM +0530, Amitoj Kaur Chawla wrote:
> Fixes checkpatch.pl warning by using tabs instead of spaces.
> WARNING: please, no spaces at the start of a line.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 9105c0e..b1fbccf 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -137,17 +137,17 @@ void setChipClock(unsigned int frequency)
>  
>  void setMemoryClock(unsigned int frequency)
>  {
> -    unsigned int ulReg, divisor;
> +	unsigned int ulReg, divisor;
>   #if 1
>  	/* Cheok_0509: For SM750LE, the memory clock is fixed. Nothing to set. */
>  	if (getChipType() == SM750LE)
>  		return;
>  #endif
> -    if (frequency != 0) {
> -        /* Set the frequency to the maximum frequency that the DDR Memory can take
> -           which is 336MHz. */
> -        if (frequency > MHz(336))
> -            frequency = MHz(336);
> +	if (frequency != 0) {
> +		/* Set the frequency to the maximum frequency that the DDR
> +		Memory can take which is 336MHz. */
> +	if (frequency > MHz(336))
> +		frequency = MHz(336);

That doesn't look correct to me, does it to you?

