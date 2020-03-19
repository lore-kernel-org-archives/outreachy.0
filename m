X-GM-THRID: 6805913239014080512
X-Received: by 2002:a05:6214:9d1:: with SMTP id dp17mr3156282qvb.34.1584626864546;
        Thu, 19 Mar 2020 07:07:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b7c4:: with SMTP id h187ls1311117qkf.1.gmail; Thu, 19
 Mar 2020 07:07:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt2vjgfLulcnIwcVqQ6ahwitlXBHrebTobn1LPR9gQTvAuIKQ3t4Vd73/KZIpHjl4afKskW
X-Received: by 2002:a37:4fd2:: with SMTP id d201mr3174988qkb.190.1584626863307;
        Thu, 19 Mar 2020 07:07:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584626863; cv=none;
        d=google.com; s=arc-20160816;
        b=li+8Nh/tg56xZQQR/cdm8C1Po32kQJhO3IqISQFpQRDDx6AL9HHbAV9dnU9FKZafuw
         F3NeuaCfRH4goUWQzCL4L9xV9kuQUytjrH/LXwGAdOuXCSvnwfRkxDuU6zOph9VxgWKf
         azfH20IHC0LHrOkLwR7AAAEhRBA2/aGJzVitRI1Ah7QXINt7Tkq/1VDc3FbM+NgWxzAd
         WHFqmZ76g2klvt6n2qA5pPdAIQ7CAVwpDE1paPwHfSBN8Hs0CiOFdSy5ytX7znuW0NP0
         XiaiM/fRqcG4IT/osEubq7aCRr+KhANeC4OKKkC0dxbZUBJTGepuxcRITWWscgSVqf0C
         p0Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AkKKpp7GpijaobOh0bgeU1UqO/IKKe9+N7EZrtumRGQ=;
        b=TjT0Ai5DZrkduGeAzgBueJs4CowB6+hcf7OOV+f+/q1DUHUBKmeoqn1Md6S+yR5DH9
         m4MmppMa/1a3og+v2plrv3thdC9l9E2TgopNIHvBYCOmBfzq2R5GFoO7AE+s3Sqmdux3
         nkH7U/TFcgI0QYUynvj0GpyANPVtohhf+mn26NpsXGsudI6PJTIpfbffnMPcoyU9KXpT
         2UzLH9IX0T+uiHj9Ls+tWYYwNrhS3DDDRvaZxWPPCOBn0X4YBddWcQJvnLmxh0FqLda3
         muiGWtw4E/wH4WjCer44mvKa3FaW7l3VSeXr1Uy306+MIwcTvi0r3r+W4kfA4SANYXgz
         6huw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Qa0TDSBE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v85si118044qka.6.2020.03.19.07.07.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 07:07:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Qa0TDSBE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D48F22137B;
	Thu, 19 Mar 2020 14:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584626862;
	bh=GL0T6jxt2MYvTMIF3pGLe9B/OBS4dRqWXVCNYivHSAA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qa0TDSBEfOeamMHa2FGXKLGZaWbLUOuv1cabIcjkBD9X3ALRXe7JyV3NfgzHorPMx
	 m02XexMxPFuEE2Rgb9qTZLmCSgN51maWVKE+f/uNQOm1nJz1S9Np4fMKcaApVCCXBZ
	 mhM2x5k2DlciEEY+6nbJLFUrLMp/u4HWVzCbuHuI=
Date: Thu, 19 Mar 2020 15:07:40 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 0/2] Correct typos and long line comments
Message-ID: <20200319140740.GA4192874@kroah.com>
References: <cover.1584624834.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584624834.git.vkor@vkten.in>

On Thu, Mar 19, 2020 at 07:08:58PM +0530, R Veera Kumar wrote:
> Correct typo in comments found using checkpatch.pl.
> 
> Correct long line comments to match coding style.

Nit, you forgot "staging: rtl8723bs" in your subject line here for 0/2.
You can fix that up when you resend this patch series.

thanks,

greg k-h

