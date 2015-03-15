X-GM-THRID: 8019664437248
X-Received: by 10.236.41.73 with SMTP id g49mr64334356yhb.57.1426416461589;
        Sun, 15 Mar 2015 03:47:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.50.233 with SMTP id f9ls954991obo.11.gmail; Sun, 15 Mar
 2015 03:47:40 -0700 (PDT)
X-Received: by 10.182.1.199 with SMTP id 7mr8324172obo.49.1426416460982;
        Sun, 15 Mar 2015 03:47:40 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si1287240pac.0.2015.03.15.03.47.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 03:47:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D729813;
	Sun, 15 Mar 2015 10:47:39 +0000 (UTC)
Date: Sun, 15 Mar 2015 11:47:37 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtbt: Removed unneeded
 print messages
Message-ID: <20150315104737.GA856@kroah.com>
References: <20150313042053.GA3146@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150313042053.GA3146@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 13, 2015 at 09:50:53AM +0530, Vatika Harlalka wrote:
> These print messages are removed as only indicate entry
> into the function or print the arguments but not any 
> potential errors.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/fbtft/fb_agm1264k-fl.c | 10 ----------
>  1 file changed, 10 deletions(-)

This patch fails to apply to my tree :(

