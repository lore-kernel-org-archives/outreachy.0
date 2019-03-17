X-GM-THRID: 6669330275448651776
X-Received: by 2002:a0c:fa88:: with SMTP id o8mr4596001qvn.53.1552824935662;
        Sun, 17 Mar 2019 05:15:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:6984:: with SMTP id o4ls6325785qtq.9.gmail; Sun, 17 Mar
 2019 05:15:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz+Uqf53kzfU2vjDz370xwOiXhmaKQtNIkU3EdrgaIvEQU+qaDGjNsz43/EjzvvYbvlIJhS
X-Received: by 2002:ac8:750a:: with SMTP id u10mr5457392qtq.15.1552824935007;
        Sun, 17 Mar 2019 05:15:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552824935; cv=none;
        d=google.com; s=arc-20160816;
        b=pPWtV8n5yk2N5WOANPy3S+DVWYsS9SwqpJGGNMeFr9/IU5Mx6yXv4Gcxroj/EatW0b
         JjkThfxLPKYHw3hoeuCgaQ6R9jwcRpitDEiDxCLD5Tktam3vsjPOSGlI4AxhlTZaWM/m
         smSk4xOchclDuB1ei30/AhaRh6Yo9cvhpoZUTKRjJVkfm3YETLf+PuvigHZ7/SIB+lpl
         CWtYGvcH53KTn+hUII5/oWdfaoFfz8G1c6AUD26QcRN/0AtbSwLPRYGmbaWYVb+9nBLL
         8K19IVg2RK2xzvbNBvjyo8OPPxH8Sj9QTl+hzRDzRnz+kjMsv3+Enr27ecy/d/fR2n0h
         /u+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3gNt+EwgY4ssXu0eP4eDPcfdtgifyUlqJ9BZK2QKy5E=;
        b=BYvPjvRe6o8GFvkTBiNhfvqyH5G6R9GhN4iKUL/LchvVRbPETzyEF1pvt0ym5Dm2ji
         KPDsdCpwuspyMtwZEk4/Cf3mCL7+XPQ7OLYrEnc8C8dqDCVJ9iCIBQJvOtGSt3rVCMjU
         4YUNBG5vodZhbHpD6oulcentC8esl7VYVm5tYt8xj2KOdP9M4elzgfR8YsyuWwC4AUgS
         AuBrCM0TGBTlGUswYcqBWTZhDyDMAxpE0rC+ObqfVSQTB1BK2NhOyE++6MXMoSd+vOLz
         0QivpFU7ItkzXJ0nyMUfNXgyEp5wpFkmQ1DVEaUymwFlqCQ8mIvYh5d0u6qQm1/LZkUH
         qmFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gqMJEP7Q;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g20si446474qto.0.2019.03.17.05.15.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 05:15:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gqMJEP7Q;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BFDC72148D;
	Sun, 17 Mar 2019 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552824934;
	bh=Xv61Z2nvAEAmlIBNLkePM6aZ2fPh1CZSGAgdPdjKLfI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gqMJEP7QIIwrxiw9WSdOMwWgHC090ZxBnYn7un6p7qezdJA6Jf0znFRChUPlxch5v
	 omoeJDSov+oRzonhFvycN0C8BEfWyvHr1aBWzjlO4MyN/FR8XesdrPlcGRcFtwhot6
	 NnAsZ+6u1uwL4+EmE9Cf0k5c7dZ1cxy8uIdWZvM4=
Date: Sun, 17 Mar 2019 13:15:31 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: rtl8188eu: core: rtw_ap.c: Fix multiple blank
 lines
Message-ID: <20190317121531.GA7704@kroah.com>
References: <20190317120729.4811-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190317120729.4811-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 05:37:29PM +0530, Sanjana Sanikommu wrote:
> Remove multiple blank lines.
> Issue found by checkpatch.pl semantic patch results for rtw_ap.c
> 
> CHECK: Please dont use multiple blank lines.
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index fc500da2d71f..fa3ba5643629 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -367,10 +367,7 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
>  		sta_band |= WIRELESS_11G | WIRELESS_11B;
>  	else
>  		sta_band |= WIRELESS_11B;
> -
> -
>  	psta->wireless_mode = sta_band;
> -
>  	raid = networktype_to_raid(sta_band);

That last blank line you removed was not a "multiple blank line", why
remove it?

And why remove both blank lines, only one should be dropped, right?

thanks,

greg k-h

