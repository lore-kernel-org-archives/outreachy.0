X-GM-THRID: 7019965111499489280
X-Received: by 2002:a05:6830:2329:: with SMTP id q9mr16703592otg.229.1634463455209;
        Sun, 17 Oct 2021 02:37:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4a3:: with SMTP id 32ls4085311otm.2.gmail; Sun, 17 Oct
 2021 02:37:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzDGUjBZX95xjvrlQiKGmYue24zGNpGK9XSMuIVmQhkWnY5ea8iTIHWC0F7ZQIfbk5ezUkt
X-Received: by 2002:a9d:bab:: with SMTP id 40mr16465128oth.274.1634463454582;
        Sun, 17 Oct 2021 02:37:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634463454; cv=none;
        d=google.com; s=arc-20160816;
        b=H38txr6FGM8h/S2CLEYLMZB+VOrprlkJaBPOBIMe0iR+fDF90mKtmJgoDGurxTL9ZM
         5pYhUfSf4Acx72NTooPiI3Kb1RcZxb5d9v8Vt3Id6lLFFSQNsZZhwfYBW92I0TEigeZi
         33jfV9WOCJKtNAfEp6aM6O8tRF5MuJoGYMhm4CqrQVseSMz20SwGi2GB62oNpqIguo51
         YcTTECAUj5nOU4K4tX7hnTP1ycbjfx3wAj978pfSdps1CBUgwcCkSwc0qiDcU3oX6YMC
         gy8KZ7N001gDe8vmoumgjPTDvReJ4niFR4qOL2HZR++1ItXhXZeDBBytZzwS1QxILcyl
         o8Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NB2XhddsQWXppfvEhHOXBA0BMVm+BrauudmsmIQtyRY=;
        b=l1hynmNhYi2B8QFbNsmL/k0FKbRfEw+VbKVf8D35yjlhhwr85yqkagopZhGtRuZJQZ
         aCRLA5QHNbV+LTO+GkkAi/7gaD7AJffCJV3QkVCrJVyWfUzNSRd//rvbK6/AN6sgPv8W
         sPFlr/vuoyGmj6im1DYvFS1KWL8/yGx1vWBvhPZ3b4apDSL9Dv/IVi3PnMKkCHs+qtYh
         AiKhXBSmKRcbAIFWwpCQ0A3AIUH086f5nkQQCYYsCkONOVp9tJMbFwjZaBiUrPLgPZPV
         jPXmkLEE7EDvin9+KhqGItCC+p8N7xXVvo1kTLDW1+IGxiTELvliMOZbFPBYJ3zlLLKr
         B8XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=UF11qCPi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w42si146275ott.4.2021.10.17.02.37.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Oct 2021 02:37:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=UF11qCPi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 376EF60F23;
	Sun, 17 Oct 2021 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1634463453;
	bh=TnThaLix6SFkYNB2+9atk2ZdBdQ0TC8TXqRaqicaHi4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UF11qCPicbcA0HJPW0PLBaAkIKIYHVexVZimVnnT4rwkh/FATGQrEqOI9LLKkqgVl
	 ZdXElZabCc/v+T65lcg0u6cH0YAsOwByFKz6cWwbWBQ1C/Vc3RJ5lyURGOK+XrA+FU
	 sdwc06Sz6NLVxFYLzjNPyqfhicBq2gevOoNxHSR8=
Date: Sun, 17 Oct 2021 11:37:30 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kushal-kothari <kushalkothari285@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, mike.rapoport@gmail.com,
	kushalkothari2850@gmail.com, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev,
	nsaenz@kernel.org, bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH v2] staging: vc04_services: replace msleep() by
 usleep_range()
Message-ID: <YWvu2mZutljJLBY7@kroah.com>
References: <20211017092900.134752-1-kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211017092900.134752-1-kushalkothari285@gmail.com>

On Sun, Oct 17, 2021 at 02:59:00PM +0530, Kushal-kothari wrote:
> Fixed the warning:-msleep < 20ms can sleep for up to 20ms by replacing
> msleep(unsigned long msecs) by usleep_range(unsigned long min, unsigned long max)

No need to put the parameters in a function call.

> in usecs as msleep(1ms~20ms) can sleep for upto 20 ms.
> 
> Signed-off-by: Kushal-kothari <kushalkothari285@gmail.com>

We need a "Legal" name here, is that how you sign documents?  Sorry, I
have to ask.

> ---
> 
> Changes from v1: Reword both the subject and the log message.
> 
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index 6fbafdfe340f..80a7898c5331 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -857,7 +857,7 @@ vchiq_bulk_transmit(unsigned int handle, const void *data, unsigned int size,
>  		if (status != VCHIQ_RETRY)
>  			break;
>  
> -		msleep(1);
> +		usleep_range(1000, 2000);

You can not just randomly pick a range value here without lots of
testing and knowing that the hardware really can support this.

Have you done this here?

thanks,

greg k-h

