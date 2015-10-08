X-GM-THRID: 6201868537095520256
X-Received: by 10.129.74.198 with SMTP id x189mr5275116ywa.53.1444296823486;
        Thu, 08 Oct 2015 02:33:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.233 with SMTP id 96ls1021536qgl.15.gmail; Thu, 08 Oct
 2015 02:33:43 -0700 (PDT)
X-Received: by 10.31.148.206 with SMTP id w197mr5039534vkd.9.1444296822976;
        Thu, 08 Oct 2015 02:33:42 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id o73si3458016ywd.6.2015.10.08.02.33.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 02:33:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [64.88.227.134])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 63ABD164D;
	Thu,  8 Oct 2015 09:33:40 +0000 (UTC)
Date: Thu, 8 Oct 2015 09:58:12 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Cristina Moraru <cristina.moraru09@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Remove extra line
 from kernel-doc
Message-ID: <20151008085812.GA10462@kroah.com>
References: <1443984978-87338-1-git-send-email-cristina.moraru09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443984978-87338-1-git-send-email-cristina.moraru09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 04, 2015 at 09:56:18PM +0300, Cristina Moraru wrote:
> Fix 'bad line' kernel-doc warning
> 
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/octeon/ethernet.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

You have now sent over 4 patches for the same file, but I don't know
what order to apply them in.  Can you please resend them in a patch
series, properly numbered, so that I have a chance to figure this out?

thanks,

greg k-h

