X-GM-THRID: 9347595763712
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1564ac45bb5dd367
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.229.233 with SMTP id h99mr50035646yhq.42.1427901369949;
        Wed, 01 Apr 2015 08:16:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.208 with SMTP id i199ls253884ioi.47.gmail; Wed, 01 Apr
 2015 08:16:09 -0700 (PDT)
X-Received: by 10.66.253.225 with SMTP id ad1mr22777790pad.0.1427901369445;
        Wed, 01 Apr 2015 08:16:09 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si255361pac.0.2015.04.01.08.16.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 08:16:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7FF57B41;
	Wed,  1 Apr 2015 15:16:08 +0000 (UTC)
Date: Wed, 1 Apr 2015 17:16:05 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Remove typedef
 hfa384x_t
Message-ID: <20150401151605.GA27427@kroah.com>
References: <20150324081634.GA30469@akanksha>
 <20150325111608.GA24140@kroah.com>
 <CAHjTdYcHKsWxzJpbNPjrDN7-tU0XPfJ-91vhuzi4kMsFQhzOsA@mail.gmail.com>
 <20150326204017.GA5122@kroah.com>
 <CAHjTdYf1Ais+xc1mJCb-XbvMg+O_ouGHikkcrNydNszEXk678Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHjTdYf1Ais+xc1mJCb-XbvMg+O_ouGHikkcrNydNszEXk678Q@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 27, 2015 at 02:37:17PM +0530, Vatika Harlalka wrote:
> Hi Greg
> 
> I refreshed my branch against yours and successfully
> applied the patch with git apply. To double check, I also
> cloned the repo again and applied it there as well and applied
> it there again and it was not giving me any error.
> I have attached the patch that I used for this checking.
> 
> Kindly guide me as to what could be the possible reasons for this?
> Thanks :)

> From b50c4a4fe89fdb0ca7c0c5f8f891388b30d955c6 Mon Sep 17 00:00:00 2001
> From: Vatika Harlalka <vatikaharlalka@gmail.com>
> Date: Fri, 27 Mar 2015 12:29:21 +0530
> Subject: [PATCH] Staging: wlan-ng: typedef
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>

This patch worked, as an attachment.  I don't know, try sending it
again, I can't take it like this (hint, no changelog, wrong subject,
etc.)

thanks,

greg k-h

