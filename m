X-GM-THRID: 7826491572224
X-Received: by 10.66.136.175 with SMTP id qb15mr47530241pab.11.1426416325915;
        Sun, 15 Mar 2015 03:45:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.169 with SMTP id b38ls2393538qge.31.gmail; Sun, 15 Mar
 2015 03:45:25 -0700 (PDT)
X-Received: by 10.236.43.146 with SMTP id l18mr56582141yhb.23.1426416325750;
        Sun, 15 Mar 2015 03:45:25 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si1272919pdb.1.2015.03.15.03.45.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 03:45:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 952138CF;
	Sun, 15 Mar 2015 10:45:24 +0000 (UTC)
Date: Sun, 15 Mar 2015 11:45:21 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtbt: Move variable
 declarations to improve codestyle
Message-ID: <20150315104521.GA543@kroah.com>
References: <20150312070407.GA5718@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150312070407.GA5718@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 12, 2015 at 12:34:07PM +0530, Vatika Harlalka wrote:
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/fbtft/fb_agm1264k-fl.c | 24 +++++++++++-------------
>  1 file changed, 11 insertions(+), 13 deletions(-)

The headers of this email were messed up, and you need a changelog body
text (looks like it ended up in the "reply-to:" section...

