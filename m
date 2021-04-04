X-GM-THRID: 6947173308910534656
X-Received: by 2002:a65:4887:: with SMTP id n7mr18938703pgs.14.1617530085590;
        Sun, 04 Apr 2021 02:54:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7246:: with SMTP id c6ls6253742pll.4.gmail; Sun, 04
 Apr 2021 02:54:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyd5Zf3L7n+kwrGusCOyTXDIRYqwMbZHgDs0cdJ/KA0GlKFnk9XtUY2Q4FQerCEII0YncC/
X-Received: by 2002:a17:902:b482:b029:e8:c21a:6ad2 with SMTP id y2-20020a170902b482b02900e8c21a6ad2mr9421858plr.51.1617530084553;
        Sun, 04 Apr 2021 02:54:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617530084; cv=none;
        d=google.com; s=arc-20160816;
        b=VnF7dhvgVwflGrZ2NxranTaZSY9KlKSihTTWIk5BSxE5f5P3wjk2jk1tTOHCT/f6Il
         Bw4lBgvnkN/JcPsm9fyXsgbd5Siex9WX9Mh0BM/yxXYvSLfK6cf+VNKbjHBShW0FZz4r
         CvHIGOT4x2l11PkWg92xbAmitJ7vCMjQUILg37ennAX7z2wgnRhp8+V+hU2LPGbQrXHB
         l7rDLXELCrlHSl6VLOlvAJekGARy0dnDP8wKnw2vMM+6LtGZA0j/h7EZncAYSM6MGLl6
         6eOvPsV+/RSvNJUXoWsqme+K+uO9pi2VIvV6uq+iiPRUGdBwK9d9Jz981P/1ea7AXHCl
         efSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=n4FbzQBoLbyaLmKWLamZObZhevBNu76aADxaL68gIys=;
        b=pYPAwqPCJhYsPmq9sCmSRv+T/i94zcgWfP1uQIdRBVN3GEPfLW9gOxmKUEHwcmvFMu
         FVf0SXY1gvuO2QY/cyHo4E93syXXurMEVxSnHa2Ms28N+qMiBysS9Of7IQU/CmzsMuVp
         lZaiMIhy/ycjK6jwaEOV2HlpykygoTJ27Z7/v9q1Ay5+c8+beTLuxHXZnKJjVgGNsQjx
         Z6aK5sXfsA70UJILCQEQmjFVzf4owPzib9bbOrLBAKUYgdis8LWJq21Ie//UGrP/CqMR
         en5kf19P0CoLXpj9aiFdz54qX9DKH1nF7qpVhFM21sEVK6VriKfQAAiRIUJh/8aoASeV
         HgBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=KJFegLmv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w16si93073pjq.3.2021.04.04.02.54.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Apr 2021 02:54:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=KJFegLmv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 53D03611BE;
	Sun,  4 Apr 2021 09:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617530084;
	bh=//DIgneInJY35u2umDp/dDQQ9PbPLq+sNE7oCK8eUWs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KJFegLmvZW9os1Zmz2DtBDTyPsInFnLrLV/CMnWNaSYRvyKcUfAZhE4Kb4re+He8V
	 2EjXz9cj2TajZKw8ekNJerrhbB5wcZnhLKv8BzmELqKxvTwtcoNUcIIXNbEACTuonv
	 dCIl4o6a6qBwEn1PCGYQ6Mu88uf2WDy0FgjlpZto=
Date: Sun, 4 Apr 2021 11:54:40 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Deborah Brouwer <deborahbrouwer3563@gmail.com>
Cc: Larry.Finger@lwfinger.net, straube.linux@gmail.com,
	unixbhaskar@gmail.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtl8188eu: replace goto with direct return
Message-ID: <YGmM4FTVZ/FIQ7lj@kroah.com>
References: <20210404054008.23525-1-deborahbrouwer3563@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210404054008.23525-1-deborahbrouwer3563@gmail.com>

On Sat, Apr 03, 2021 at 10:40:08PM -0700, Deborah Brouwer wrote:
> To conform with Linux kernel coding style, replace goto statement that
> does no cleanup with a direct return.  To preserve meaning, copy comments
> from the original goto statement to the return statement.  Identified by
> the checkpatch warning: WARNING: void function return statements are not
> generally useful.
> 
> Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/rtl8188e_dm.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
> index 391c59490718..d21f21857c20 100644
> --- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
> +++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
> @@ -139,7 +139,9 @@ void rtw_hal_dm_watchdog(struct adapter *Adapter)
>  	hw_init_completed = Adapter->hw_init_completed;
>  
>  	if (!hw_init_completed)
> -		goto skip_dm;
> +		/*  Check GPIO to determine current RF on/off and Pbc status. */
> +		/*  Check Hardware Radio ON/OFF or not */
> +		return;

It does not make sense to have the comments in two places here.  The
original code is just fine, there's nothing wrong with the goto
statement here.

thanks,

greg k-h

