X-GM-THRID: 9068395626496
X-Received: by 10.66.151.101 with SMTP id up5mr78995931pab.10.1426748039875;
        Wed, 18 Mar 2015 23:53:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.71 with SMTP id d65ls1002508qgf.17.gmail; Wed, 18 Mar
 2015 23:53:59 -0700 (PDT)
X-Received: by 10.236.47.136 with SMTP id t8mr80058118yhb.44.1426748039649;
        Wed, 18 Mar 2015 23:53:59 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l3si105907pdo.0.2015.03.18.23.53.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 23:53:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 918F4982;
	Thu, 19 Mar 2015 06:53:58 +0000 (UTC)
Date: Thu, 19 Mar 2015 07:53:55 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove unused
 extern declarations.
Message-ID: <20150319065355.GA7725@kroah.com>
References: <20150319044856.GA32197@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150319044856.GA32197@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 19, 2015 at 10:18:56AM +0530, Vatika Harlalka wrote:
> These externs are defined but not used anywhere in the code.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/include/rtw_security.h | 4 ----
>  1 file changed, 4 deletions(-)

You sent 3 patches for the same file, but no clue as to which patches
should be applied in which order :(

Please resend all of them as a patch series, properly numbered, so that
I have a chance to get it correct.

thanks,

greg k-h

