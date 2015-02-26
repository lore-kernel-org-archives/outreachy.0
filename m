X-GM-THRID: 2371778248704
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,778d1abd8ead7987
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.229.233 with SMTP id h99mr10103755yhq.42.1424992606151;
        Thu, 26 Feb 2015 15:16:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.68.104 with SMTP id v8ls138712obt.77.gmail; Thu, 26 Feb
 2015 15:16:45 -0800 (PST)
X-Received: by 10.182.28.104 with SMTP id a8mr9662521obh.15.1424992605930;
        Thu, 26 Feb 2015 15:16:45 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id hs7si295408pad.1.2015.02.26.15.16.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:16:45 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A30E0B3F;
	Thu, 26 Feb 2015 23:16:45 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:16:45 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Remove braces from single statement
 block
Message-ID: <20150226231645.GA1562@kroah.com>
References: <20150222104213.GA1215@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150222104213.GA1215@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Feb 22, 2015 at 04:12:13PM +0530, Vatika Harlalka wrote:
> This patch is to remove braces from single statement if condition
> to follow kernel coding convention.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/fw.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Please resend and change the Subject: to show that you are working in
the staging directory on the rtl8188eu driver.

thanks,

greg k-h

