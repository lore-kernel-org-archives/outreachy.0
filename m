X-GM-THRID: 6661032131712516096
X-Received: by 2002:a9d:65d5:: with SMTP id z21mr6636198oth.37.1550974586593;
        Sat, 23 Feb 2019 18:16:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6485:: with SMTP id g5ls4226629otl.6.gmail; Sat, 23 Feb
 2019 18:16:25 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYnmlaMI2I7lgrgO6AeFm4KqgamsqLnFIuAirleUp8HfORPIF+CYCq9Siu60fmSfeaHsWpM
X-Received: by 2002:a9d:6d14:: with SMTP id o20mr7176656otp.23.1550974585879;
        Sat, 23 Feb 2019 18:16:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550974585; cv=none;
        d=google.com; s=arc-20160816;
        b=Q9H+Cl2jfQAW6AejrU+SkMjsvXft74ImlbzZsZngHhEz/zkYbvCU/hDH7u4unbkzSF
         9wofCt002x3QvFul5qedm/BwaWjT9iKXYj6zlF9+Fsp+OA0nV6K4cLIecWJYxZUXW9Re
         dZDVKoA+wos7aEcZ0CgZxmJ3hqDU+vYPWejgMvkAqoqxxZCXTOmNrN6vLg7+pK6NIfUn
         b9LwIItILQtxMfBnQ8X9+jTLc2ROlIvfXFse42XQktpv13XKS8IqdoblxzuH0T5Av2LT
         YC5d6cZP1+VmQuCb6un+idHPlgnljWPokaJ/bkZ891ueLNlxFs3QAIM+Gz4LxaUuabPT
         iUng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=EJ41t0LPmrjW1yVkx1wTgsLd6OdJCmTLs24ZGYPn8ns=;
        b=TwTgoTaiplW0OfnnzRAbfei/+zGpHsbU2EvZTQmCE46IiEXrNco6mlh+DK5vyPEy0V
         GvLILOBTrMe8iUgDSxoZbB/um76Ksq1+mLmXWIufqvhJpGVjNJ6YlJ9vdoC8UHZnGQBk
         XOSUAez107dHZgIdO3v7ta+MEFjelgduO8Urj7h3soMPc/gPvSKIUFUIsWWAQRu5YRpa
         zV/3KXalQzdtJuBIpeDHad0oZ9r6iS3+QTWHYiIvcT/HtQcX2BXx9WTAAycrCfdbm69u
         GCUAgrcywFMwbz0djDfZV4WDXvk37DGJJoeGC8zzz25cQi+ETCz+S0mVeVGCpMKTJW/M
         IYTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OTIrKrz1;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32c as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com. [2607:f8b0:4864:20::32c])
        by gmr-mx.google.com with ESMTPS id q206si251233oic.2.2019.02.23.18.16.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 18:16:25 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32c as permitted sender) client-ip=2607:f8b0:4864:20::32c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OTIrKrz1;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32c as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32c.google.com with SMTP id z19so5118505otm.2
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Feb 2019 18:16:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=EJ41t0LPmrjW1yVkx1wTgsLd6OdJCmTLs24ZGYPn8ns=;
        b=OTIrKrz12e/YkiiDyyAWko7mxqKLTb5HqypRIp0EAy+44cz05jlaJ2K52V5S5ckdkY
         Z5Kh83IVZnDrEyhAFldy1rIGKXyhI7iDxMAGr9X22sL7UvNOic7KgvH5+21Ekv/PN/qM
         HvTXeTh4Gy1PaIsrtWnqmBlAC90L2MD+7Kx+ReSSHGVAB9IOSYIs3S8cLZbxQ+93ssoI
         /QVfeOsJKDsXjh+nLK0BnjpAOrmXtPEufv5pmtJciCOL1ny+jdh/2xaa6MgsmRumD+LV
         ZGuKCI3Y6BnTYfpjM6AwwPR0+mDnryrvUCxaaWB/Kbr3nWtGAzBVE3piS5pVR3ukYU22
         /Vyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=EJ41t0LPmrjW1yVkx1wTgsLd6OdJCmTLs24ZGYPn8ns=;
        b=MxlmRPx1VSK2CKQctQTjGZ2z4TpgtNkCACsLJWzbVysJqJDoX60xpWEnu05Y1m1uCe
         ZM2HsJQThUcNoA1CMMPmdYPJ/OCj2IfuoGZB99xUJdmHb2+rip5n5FjzbxwByMmn7sfM
         YPTPguSPBNk1PP0jaj5M7ZRJBYsOHNiwS1U1mrnE9QBb/zWAKm9lGkFmOium8+avAr+s
         +SJI3Siulp0TnP472isfS4JthVsW9yKr8wopI5Nxd6iT9ZNNvikoEoAq0snanYz11IN9
         zNAlwwsBa8Pk/83pXECwXPg6zHV2ZZaSHxmJ6O+BEZ/NKdZ+5LAtwvpZ55lz9jw4HtPv
         jjNg==
X-Gm-Message-State: AHQUAuYri8/uVOULbY6TqFeg9Mr4nYaxuisfaMkDk2PkCazN2tF7gAkq
	yyF1XnnUH11h5jG30aebpAeTB8Q0vLyYbQ==
X-Received: by 2002:a9d:7d85:: with SMTP id j5mr6847729otn.5.1550974585568;
        Sat, 23 Feb 2019 18:16:25 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id j21sm2466715otr.28.2019.02.23.18.16.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 23 Feb 2019 18:16:24 -0800 (PST)
Date: Sat, 23 Feb 2019 20:16:22 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: sm750fb: Fix missing a blank line after
 declarations
Message-ID: <20190224021621.GB27173@madhuleo>
References: <20190223032632.18892-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190223032632.18892-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Feb 22, 2019 at 09:26:32PM -0600, Madhumitha Prabakaran wrote:
> This patch fix a warning
> WARNING: Missing a blank line after declarations
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750_accel.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/sm750fb/sm750_accel.h b/drivers/staging/sm750fb/sm750_accel.h
> index c4f42002a50f..018adf3d82a1 100644
> --- a/drivers/staging/sm750fb/sm750_accel.h
> +++ b/drivers/staging/sm750fb/sm750_accel.h
> @@ -223,4 +223,5 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
>  		 u32 fColor,   /* Foreground color (corresponding to a 1 in the monochrome data */
>  		 u32 bColor,   /* Background color (corresponding to a 0 in the monochrome data */
>  		 u32 rop2);
> +
>  #endif
> -- 
> 2.17.1
> 
I will leave this patch alone and work on another one

