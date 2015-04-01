X-GM-THRID: 10535493959680
X-Received: by 10.182.135.230 with SMTP id pv6mr47867515obb.17.1427901937317;
        Wed, 01 Apr 2015 08:25:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.74.229 with SMTP id x5ls135619obv.99.gmail; Wed, 01 Apr
 2015 08:25:37 -0700 (PDT)
X-Received: by 10.182.248.227 with SMTP id yp3mr53630428obc.22.1427901937119;
        Wed, 01 Apr 2015 08:25:37 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si244293pac.2.2015.04.01.08.25.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 08:25:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3D001B52;
	Wed,  1 Apr 2015 15:25:36 +0000 (UTC)
Date: Wed, 1 Apr 2015 17:25:33 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rtl8712: Fix
 zero-testing pointer typed value
Message-ID: <20150401152533.GB21691@kroah.com>
References: <20150331200743.GA31108@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150331200743.GA31108@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Apr 01, 2015 at 01:37:43AM +0530, Amitoj Kaur Chawla wrote:
> Removes variable comparison with 0 by using if statement. Done using following coccinelle script.
> 
> @ disable is_zero,isnt_zero @
> expression *E;
> expression E1,f;
> @@
> 
> E = f(...)
> <...
> (
> - E == 0
> + !E
> |
> - E != 0
> + E
> |
> - 0 == E
> + !E
> |
> - 0 != E
> + E
> )
> ...>
> ?E = E1
> 
> @ disable is_zero,isnt_zero @
> expression *E;
> @@
> 
> (
>   E ==
> - 0
> + NULL
> |
>   E !=
> - 0
> + NULL
> |
> - 0
> + NULL
>   == E
> |
> - 0
> + NULL
>   != E
> )
> 
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_mp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

I don't see a patch 1/2 anywhere :(

Confused.  Please resend properly.

greg k-h

