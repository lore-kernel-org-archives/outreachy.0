X-GM-THRID: 6888359188938883072
X-Received: by 2002:a17:902:aa4c:b029:d5:e527:654c with SMTP id c12-20020a170902aa4cb02900d5e527654cmr6439554plr.24.1603875009127;
        Wed, 28 Oct 2020 01:50:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:7b05:: with SMTP id w5ls1673977pfc.11.gmail; Wed, 28 Oct
 2020 01:50:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxznaGdxD0HpxY31PCRPw0jPM+JyTpv5rGMF6qSRWQ9SNPiXZanGOyDAWGkbjAmaf0Tji7r
X-Received: by 2002:a63:4f63:: with SMTP id p35mr5588750pgl.450.1603875007572;
        Wed, 28 Oct 2020 01:50:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603875007; cv=none;
        d=google.com; s=arc-20160816;
        b=Alt4UYWS1mdk+bSB3NYMynVmIwC8q12f7vRBkuT3+CJR+0HAQ2DiXkdrWtdvSN9Nl6
         PwR5Hn7TAnaCsOL7f0t3vtqbzG/zQzp5RtS+l0VZzNv206JoAAq1FzC2aM5WOrzAkzal
         CpOGa1fd/UxmMuQkeWWqkeRv+a+HBqbOb2rS7HKDGG0xlkuAR6k68lPDiy0kVqwv/PbO
         vO4FsXkyD1V3oXxE/JcsZ2NBymh9nnjGskqSHjqWRvdwB1qP60fNg3FSkAkPSATS49rO
         9HoYhHVPkSvKy7qP/+URoCPcTU54jfI9L0m7Ou681hyk6JQXTbfdHK6GanQiu6s1FwfY
         KQzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=i1imC2awRTKwdad6fmes2cNRdrwOHNeiVY1lzOl4fc8=;
        b=gQ2AlcCoA0w74P1MWAds8jPsRIFs3P+172jR4QR2tyFzvWG+SsctfrawLnaUdcGiuh
         vuMPaK0Gxh1k3BLBuRwu+ULpBuHPzpMHpvJSkmy++B911yjOpwINoGJ9ExGhirRk7888
         /Ji29u6OYoay2heQHhm/1/SJEpPMkJU0sw/skP1sG7ois+6wCXfaoxgV1FEpRX4oCHht
         V+AY0oOH0nzW+1+SyTMFxbQlHwU5rw7ynItNX7D0Sx6PYnjUUdYzXwsB2U6FDUNJbn5m
         FUguugBrfBk368mBFjod3WQInEotL3Z107o9VLb1MCFv64h3pirDkZXt7hrC/jnBhJ4G
         pejw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="jlwAXL/n";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z15si234507plo.4.2020.10.28.01.50.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2020 01:50:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="jlwAXL/n";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5BCD324679;
	Wed, 28 Oct 2020 08:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1603875007;
	bh=1ZXlbDkqrHKidKJ5g/9ISYLjqvBXkKTU/rD6vwsZsYk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jlwAXL/nHzFBgK0UiB/KQSH8CGIBYbsEViUwT4xjaYutBrrWbdHze+u4UX/zjY3+N
	 0qmZsIiydz49A2KGXr1Nsr9ZzQWoYFHf5f2WtffdP2h26Rda9sucoZtxUNP7pSBRUZ
	 kd+YCukBNSX4+hvI/UEME6sAYNYGE8mc+8K+pDlM=
Date: Wed, 28 Oct 2020 09:50:58 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Amarjargal Gundjalam <amarjargal16@gmail.com>
Cc: nsaenzjulienne@suse.de, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/3] staging: vc04_services: fix missing a blank line
 after declarations
Message-ID: <20201028085058.GA1858494@kroah.com>
References: <20201027175117.32826-1-amarjargal16@gmail.com>
 <20201027175117.32826-4-amarjargal16@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201027175117.32826-4-amarjargal16@gmail.com>

On Wed, Oct 28, 2020 at 01:51:17AM +0800, Amarjargal Gundjalam wrote:
> Fix checkpatch warning "missing a blank line after declarations".
> 
> Signed-off-by: Amarjargal Gundjalam <amarjargal16@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c  | 3 +++
>  .../staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h    | 1 +
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index f500a7043805..e7b2263c47be 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -1056,10 +1056,12 @@ static inline int vchiq_get_user_ptr(void __user **buf, void __user *ubuf, int i
>  	if (in_compat_syscall()) {
>  		compat_uptr_t ptr32;
>  		compat_uptr_t __user *uptr = ubuf;
> +
>  		ret = get_user(ptr32, uptr + index);
>  		*buf = compat_ptr(ptr32);
>  	} else {
>  		uintptr_t ptr, __user *uptr = ubuf;
> +
>  		ret = get_user(ptr, uptr + index);
>  		*buf = (void __user *)ptr;
>  	}
> @@ -1832,6 +1834,7 @@ static long
>  vchiq_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  {
>  	void __user *argp = compat_ptr(arg);
> +
>  	switch (cmd) {
>  	case VCHIQ_IOC_CREATE_SERVICE32:
>  		return vchiq_compat_ioctl_create_service(file, cmd, argp);
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> index 86d77f2eeea5..4d0df4ff022e 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> @@ -54,6 +54,7 @@ struct vchiq_await_completion {
>  	struct vchiq_completion_data __user *buf;
>  	unsigned int msgbufsize;
>  	unsigned int msgbufcount; /* IN/OUT */
> +
>  	void * __user *msgbufs;
>  };
>  

This last chunk doesn't need to be made, checkpatch is incorrect there.

thanks,

greg k-h

