X-GM-THRID: 6473412482924806144
X-Received: by 10.46.9.197 with SMTP id 188mr203419ljj.36.1508333205350;
        Wed, 18 Oct 2017 06:26:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.224 with SMTP id g93ls622363lji.13.gmail; Wed, 18 Oct
 2017 06:26:44 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RXhMT3MS49DRcbrWrLzMAud9eltLmmwWMiwRC5ykE30g0I4hTTTz1oGt3OPC3zs/KpbwBk
X-Received: by 10.46.2.217 with SMTP id y86mr197560lje.27.1508333204752;
        Wed, 18 Oct 2017 06:26:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508333204; cv=none;
        d=google.com; s=arc-20160816;
        b=WKYm+OKv44qShdZ9iVMwuOwNART9l6tmlg6LmZdna8I5zbC0Jdita2HmLlXdCoFRGl
         PP47x/xuCrbQLNwGom5L71jJoabxlk7uLRn8ky0yaIbUzqN/G+VjfHxzaZdislGizflL
         MPxSxsLUgpGjwEWYA9Fc7hHOn2SHzF0S0HRBOOLeBEb+s6qXKNtJ5VbT4+uACJXDcuOA
         /3cB4Cu2+9glwZtWrkDOSEkohXSHAXP6GebDULpXbcvkDm4yWdLKh6PTeQyOtYraSBAv
         R0CiJKt6jzEBpZKjqGhqEvEp1tNBcymUoAMbZHS2e4jlwsDConfohLxM6I6k5crHOqPQ
         tggw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=X/+d+DHFAVr/mGlZ5AAIb/GTMXUjvwHemlzKZ4eBrDo=;
        b=GTJyjXXI4KdZiFm71BXATeLasmhz7dapDwMzMz9DX/U03CXkngyIHrqfQjkmd8yuQN
         iBddQ2IZx9AKlYIuKBBvbIF/Shc8+KTBmA2iA5NPVlssn5NC3sGP93fq9Vrsxy0cqZvf
         3CM5pcEIIwWU1zwmeLu0A4MQoOJLxuEBVFbjtIEq7aeyq6Ypzyt6u4naENqPd1sCA1jF
         wR8Cskrkia0WJ7PnseyB+8ACy1RlDcePNFk+2EHr1LxV3+3s2fBGjk1euIRj5SLwYl3k
         b1yQVMBaBmphPNoWHOeBv6XAgMced/oXABnPeVasMjae6UP4fY85TQjddJo1+MmvChmb
         j/Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w14si608636lfk.2.2017.10.18.06.26.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 06:26:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C73F5BAF;
	Wed, 18 Oct 2017 13:26:42 +0000 (UTC)
Date: Wed, 18 Oct 2017 15:26:51 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/7] staging: rtl8188eu: use pr_info() instead of printk()
Message-ID: <20171018132651.GA11879@kroah.com>
References: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507208787-18008-4-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1507208787-18008-4-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Thu, Oct 05, 2017 at 06:36:23PM +0530, Aastha Gupta wrote:
> Fixes checkpatch.pl warning:
> WARNING: printk() should include KERN_ facility level
> 
> Replaced printk() without any KERN_facility level with pr_info().
> The statements before use pr_info and the new line character is to be
> appended to them.
> Could have used printk() with KERN_INFO level, but used pr_info() just to use the same function as that had been used before in the code.
> 
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/rtl8188eu/include/rtw_debug.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/include/rtw_debug.h b/drivers/staging/rtl8188eu/include/rtw_debug.h
> index 9cc4b8c..33bc7f5 100644
> --- a/drivers/staging/rtl8188eu/include/rtw_debug.h
> +++ b/drivers/staging/rtl8188eu/include/rtw_debug.h
> @@ -106,9 +106,9 @@ extern u32 GlobalDebugLevel;
>  					 (((__i + 1) % 4) == 0) ?	\
>  					 "  " : " ");	\
>  				if (((__i + 1) % 16) == 0)		\
> -					printk("\n");			\
> +					pr_info("\n");			\

No, this isn't doing what you think it is...

It should be a 'pr_cont()', right?

thanks,

greg k-h

