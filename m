X-GM-THRID: 6950149887170183168
X-Received: by 2002:a25:fc05:: with SMTP id v5mr23893630ybd.192.1618208347592;
        Sun, 11 Apr 2021 23:19:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:19c4:: with SMTP id 187ls6941001ybz.7.gmail; Sun, 11 Apr
 2021 23:19:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzI4S0XuaRXox2A6OrAGqR+T59pD4DB9xnlzJbnaQciv1BfySO17sx4DChyG01UYGRqetzG
X-Received: by 2002:a25:d787:: with SMTP id o129mr4331234ybg.6.1618208346391;
        Sun, 11 Apr 2021 23:19:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618208346; cv=none;
        d=google.com; s=arc-20160816;
        b=S3U/Jb1B1O2+PFMizkMcPj/Jl98BTbCmeQMvw4STNIdCDaklQ6uSb56c7H8bc9tdFC
         NtQD3h7D22BkPLqTLDKmoELN/w4Q8x0nqLAyLiafkDlouAtwdHHcypx2DqCCibaVf85o
         rwlyI6K7Zy/YuGje051MbygAL0ORK72y9Uq0AKKcynLQY7DIQuIAeQ74idlYYiXSIMVk
         +v8C3fYSZdsduu7is4LlWIblhuYKls3bC91/+wIWrFK3OpV5KYfXhVHg5FHajKGZb5dU
         ecZ+vlRGOOMcLsIMmlg2nHm4dHU35V1KTUOKozqvmnIbKXz8+G7Q9BJ6Uv2xSTBsr9Cj
         Bf/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nkdaNqyOeeujQZtoyaMJWldvRv91WqrcKq7w0aCvObI=;
        b=praxAKcNd828XicxENK7QbJ88xqvx2sSs5p8DcMwnvGzWLbtBPY8TXoS4mCxaAUpN8
         fmpeuON+aMPW00Nn8CjbmIBO59tVv+rh72Nm5xLItnDnLLnpiQYiX3E5B3YASggi6MF2
         EXCZPy5FaW5RHXUR+KVHBphOgCRweHrWHpK7Mavxsn+OiBqrAT6whAAHc+5VO/3mok9p
         BKxeaRBzSd5hXGMjvjKQevrj30Dc2Qoblz8f0o2j3rLnHdEaTk5rSFRXLpoEL7qEQKGp
         EcL+5Kt4mKHqWgxsjab72Y9Yw7VPxot4S2469HF1mjqWLv9No/rmdakfL1seWA+X1x7x
         vu+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=YbqSdBsj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i1si708969ybe.2.2021.04.11.23.19.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Apr 2021 23:19:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=YbqSdBsj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id D30EF6120F;
	Mon, 12 Apr 2021 06:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618208345;
	bh=OqQ9BxvC/MpIsNTJVxdAX+jVvRznRTSxbFDCudUdUDk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YbqSdBsjVTaWy67PRDy7meyuH9lidPbPl5fUK90I7EJrtAKVg2fZPoigMgV+/Bhf8
	 FMc/3hhgXs9HxMyE1CGwkr0dBu0HZhvA3jupxrxcPxHxBiRmS8A+oZRrhCWL64rOgL
	 Skv7A8lo/T/QfWBC8+X0uOzzTfmuKhHGaaByFi1A=
Date: Mon, 12 Apr 2021 08:19:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: Larry.Finger@lwfinger.net, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: [PATCH] staging: rtl8188eu: replaced msleep() by usleep_range()
Message-ID: <YHPmVtAGH7WWGfjJ@kroah.com>
References: <YHPkbTPPra2isn5e@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHPkbTPPra2isn5e@kali>

On Mon, Apr 12, 2021 at 11:40:53AM +0530, Mitali Borkar wrote:
> Fixed the warning:-msleep < 20ms can sleep for up to 20ms by replacing
> msleep(unsigned long msecs) by usleep_range(unsigned long min, unsigned long max)
> in usecs as msleep(1ms~20ms) can sleep for upto 20 ms.
> 
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> index 50d3c3631be0..6afbb5bf8118 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> @@ -5396,7 +5396,7 @@ u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
>  			return H2C_SUCCESS;
>  
>  		if ((pstapriv->tim_bitmap & BIT(0)) && (psta_bmc->sleepq_len > 0)) {
> -			msleep(10);/*  10ms, ATIM(HIQ) Windows */
> +			usleep_range(10000 , 20000);/*  10ms, ATIM(HIQ) Windows */

How do you know you can sleep for 20000 here?

And given that you just changed how the sleep works, are you sure the
functionality is the same now?

Only change this type of warning if you have the hardware and can test
the change properly.

thanks,

greg k-h

