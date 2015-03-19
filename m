X-GM-THRID: 9068395626496
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3ccb23f0bdae8042
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.1.199 with SMTP id 7mr31722241obo.49.1426749213765;
        Thu, 19 Mar 2015 00:13:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.214 with SMTP id 83ls763794ioq.75.gmail; Thu, 19 Mar
 2015 00:13:33 -0700 (PDT)
X-Received: by 10.66.236.74 with SMTP id us10mr57626910pac.28.1426749213538;
        Thu, 19 Mar 2015 00:13:33 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gu4si101145pac.1.2015.03.19.00.13.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 00:13:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7A6F5982;
	Thu, 19 Mar 2015 07:13:32 +0000 (UTC)
Date: Thu, 19 Mar 2015 08:13:29 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove unused
 extern declarations.
Message-ID: <20150319071329.GA8454@kroah.com>
References: <20150319044856.GA32197@akanksha>
 <20150319065355.GA7725@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150319065355.GA7725@kroah.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 19, 2015 at 07:53:55AM +0100, Greg KH wrote:
> On Thu, Mar 19, 2015 at 10:18:56AM +0530, Vatika Harlalka wrote:
> > These externs are defined but not used anywhere in the code.
> > 
> > Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> > ---
> >  drivers/staging/rtl8188eu/include/rtw_security.h | 4 ----
> >  1 file changed, 4 deletions(-)
> 
> You sent 3 patches for the same file, but no clue as to which patches
> should be applied in which order :(

Should have said "driver", two patches were for the same file, which
triggered this worry.  Please resend all 3.

thanks,

greg k-h

