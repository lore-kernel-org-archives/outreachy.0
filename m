X-GM-THRID: 6948321878027010048
X-Received: by 2002:a67:fa4f:: with SMTP id j15mr997743vsq.7.1617782732516;
        Wed, 07 Apr 2021 01:05:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac5:c89b:: with SMTP id n27ls73391vkl.1.gmail; Wed, 07 Apr
 2021 01:05:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzrCVdHKMv7+WwrRNy5XG7sOBgIAj3GjyIrIBU5kk5y+3rpnbPto7j1PnqHp5GrtrehZ9WA
X-Received: by 2002:a1f:1f4a:: with SMTP id f71mr1150509vkf.7.1617782731518;
        Wed, 07 Apr 2021 01:05:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617782731; cv=none;
        d=google.com; s=arc-20160816;
        b=cbhhwSWgB081MiK9BD/31DrY44bQwpIvxFg3TrP06tft+QCFA9keJJCjGGfHaf6Ag2
         Wo4T2HNDXUXxCvB/esC4bW9MoTGZk+9S/MALKnP5KWlwHHlL8D+07mlZY3mPN5n9pUd/
         60oh65FMsrGk6AgGJhCvyoGOmUAVK5B954GDJRuvDCxAE0H42WOdVa7Pf1/PeCEDatQ1
         5srwDfBGYp3bycgZYklpE9KlSj5tJu8Oi6O3kJ83uvhWHKeEp5HiqpHiG91jOeyX3Pm6
         lY7dVgs6xfMkP1WWov+RU0r4FJ30whFa6SRZBRY48S82iLYso/CVuQ+NO9qoNojvA1xF
         1ctg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fFms8yUKM/8lLjvWi3I6KPJ43+MmpvOci7Oz3ZSYYrw=;
        b=CHIOT81Oz5KAaMlbdaBMtza3xjv/MKn0jwgcko/BWAK1ZGC+TZHSVIvYaAkZkA6Lu9
         dCFOme9WhmMAQIRn6LsvqxzRmNllrwTH8884HqFBLAVQHYCikkZ2i/EdcEGIxsF9rNX0
         9l6ZpgYQLnET6fHy7CAtS5VayfzbHH8gz0jjvfmRWrx/5mmueHmwscua5Suvuqh6Oe5H
         AJUTqOWNa3geTy5QbExS9Iylo1PpPh1b4EvEJF6RHx0CB5qRNbS7A6FZlVWKvlz4jGDm
         quwUKCdu8XtnzYiLsTC9NSHzzHcumqGOVZ6P9Lb6w94y3OKHYPLL2K78a9SyM81kBeVn
         Zb9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Nq46qRCr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u22si1393894vsn.0.2021.04.07.01.05.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 01:05:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Nq46qRCr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id F350061151;
	Wed,  7 Apr 2021 08:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617782730;
	bh=mlyMvKhaf1o3icGWjPF64TVY48gFXxVgW8CnfXSrWZ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nq46qRCrdrX0lQjTs5Ljvmor6tWA2xpb9rl7blBxjQxqz2lajnmKpTMuSa/2RUmkM
	 HIxswUO03pEkWoP+Qu6+Aj9Js7xm1EaWBer1/90j23Qgm1MAr9/OijbVpou3mNcMt4
	 l46k96xnyNLEPr1/jWZUXMMirn2x3JwALnbZmEqU=
Date: Wed, 7 Apr 2021 10:05:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH] staging: rtl8712: fix avoid CamelCase in xmit_osdep.h
Message-ID: <YG1nyA3ZJbEzVNDu@kroah.com>
References: <YG1l6QIKRMjqgPiD@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YG1l6QIKRMjqgPiD@kali>

On Wed, Apr 07, 2021 at 01:27:29PM +0530, Mitali Borkar wrote:
> Fixed Check:Avoid CamelCase by renaming SetFilter to set_filter
> Reported by checkpatch.
> 
> Signed-off-by: Mitali Borkar <mitaliborkar810@example.com>
> ---
>  drivers/staging/rtl8712/xmit_osdep.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/xmit_osdep.h b/drivers/staging/rtl8712/xmit_osdep.h
> index b76021b568f8..7ad2ac6f5ff0 100644
> --- a/drivers/staging/rtl8712/xmit_osdep.h
> +++ b/drivers/staging/rtl8712/xmit_osdep.h
> @@ -35,7 +35,7 @@ struct xmit_frame;
>  struct xmit_buf;
>  
>  int r8712_xmit_entry(_pkt *pkt, struct  net_device *pnetdev);
> -void r8712_SetFilter(struct work_struct *work);
> +void r8712_set_filter(struct work_struct *work);
>  int r8712_xmit_resource_alloc(struct _adapter *padapter,
>  			      struct xmit_buf *pxmitbuf);
>  void r8712_xmit_resource_free(struct _adapter *padapter,
> -- 
> 2.30.2
> 
> 

Did you try test-building your change?  Always do so :(



