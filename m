X-GM-THRID: 7018941118564794368
X-Received: by 2002:a05:6102:418b:: with SMTP id cd11mr5193413vsb.36.1634225792686;
        Thu, 14 Oct 2021 08:36:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:b009:: with SMTP id z9ls2094928vse.10.gmail; Thu, 14 Oct
 2021 08:36:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy6k1OyUfriexxN+IIArIYI/uc5inhUwIVyTpxv7SdWu3NBo4NI5Hvakz1vx23SnaUHF+nI
X-Received: by 2002:a67:32d6:: with SMTP id y205mr7341970vsy.59.1634225791510;
        Thu, 14 Oct 2021 08:36:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634225791; cv=none;
        d=google.com; s=arc-20160816;
        b=iJAdvt5MHf4+IlU/8yYyLijZ5kG1sor2vKaFYiLah3OBgzYAThmMubCev1LocGKw5w
         dyaXh2K5xuF6K9avZkc3YATNTZiS7D3Y9M0rLlQ4FZTRRqWtr8QzSRwyToD3FMSWe5EE
         2WA0f6mrg1eyWia+Ti1nq3rHOePWm0jAhHVUHGCb8GXQdm4KiO+9tJRWYj5djOmozsnc
         lPG9F4YOT212+gCMM78qwlxjosL0Y3Xi+RPyL6GqxlU9KtAHyQCn7cKONquz5VkqhKuU
         OpVkdOJYddBIqsw8o4zrWRi9CKzSa7oTnh2X7mOYKXGwlMMpO4Jn2aqCVeBdTFuNF5r/
         PR8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=G/Hum5oJ6MA8i64zspCllqLlgtpee+HIzArbKRq5W5A=;
        b=z0ZKC2eM/LmpKDoVysuIDCprX9J+s9wZZZFy56LzJsVKiidio8vfR/cql3FvZu1570
         lYkjJ5rLvv1Ul9cJioVV6GAVJIQtajUXp4KEp5/deJHj7doVJ3w2kXWITTxPjbmLWUL2
         raM2pQzCWAYyca+U9IW8O6vTYmaegvyhaYQi8s0V4EVGlfoRk9zleW1J0LG6tdeAFYns
         L4Wy4iudhhxgdU2z3cw3af4C+kv5TzS+PsAqKavv7Le0OCDmfSALx+sVbKC0UB3aF+z7
         sDlaZ79+qOlLt1v41VArbRG7OO2AkpDqrxr1wmC28Y5hX+XtSrt8Vw+zMu/MN1jy0ypI
         Gukg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=YXmXcH2a;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a3si107035vsi.0.2021.10.14.08.36.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Oct 2021 08:36:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=YXmXcH2a;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3D41E60F59;
	Thu, 14 Oct 2021 15:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1634225790;
	bh=4Qw/EGtB5k3jCqfNr2zmMpfbJYmWXIXSNhMonRHRo8o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YXmXcH2azaXUbZWfVU9iPHKFuEOEENivN0q4UK9n4ZU4bV6lmtYqovL8fdJ0oYlCB
	 GT6O4qqbG1XsaeTgJh9KCEEq0huIlIOw6KhJqAOXPmXVb1zQbFWdwczgczEJRp0Nwj
	 I0b6eRQ0gd/t4dBV6PsaHEMJsWYw1nZNqMQCAODM=
Date: Thu, 14 Oct 2021 17:36:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: [PATCH] staging: vt6655: Rename byPreambleType field
Message-ID: <YWhOfPhVRBrH3gz8@kroah.com>
References: <20211014151543.46764-1-karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211014151543.46764-1-karolinadrobnik@gmail.com>

On Thu, Oct 14, 2021 at 04:15:43PM +0100, Karolina Drobnik wrote:
> Drop Hungarian notation prefix in `byPreambleType` member of
> struct vnt_private. Change it to use snake case.
> 
> Fix issue detected by checkpatch.pl:
>   CHECK: Avoid CamelCase: <byPreambleType>
> 
> Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.c    | 10 +++---
>  drivers/staging/vt6655/baseband.h    |  2 +-
>  drivers/staging/vt6655/device.h      |  2 +-
>  drivers/staging/vt6655/device_main.c |  8 ++---
>  drivers/staging/vt6655/rxtx.c        | 50 ++++++++++++++--------------
>  5 files changed, 36 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
> index 0bae35af6e0f..69739de927be 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -1691,8 +1691,8 @@ static const unsigned short awc_frame_time[MAX_RATE] = {
>   *
>   * Parameters:
>   *  In:
> - *      by_preamble_type  - Preamble Type
> - *      by_pkt_type        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA
> + *      preamble_type     - Preamble Type
> + *      by_pkt_type       - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA

This is not described in your changelog as something you did.  Are you
sure you are not mixing up different changes in one patch?

thanks,

greg k-h

