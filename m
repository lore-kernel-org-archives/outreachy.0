X-GM-THRID: 10695893581824
X-Received: by 10.66.65.228 with SMTP id a4mr56317650pat.16.1427963256099;
        Thu, 02 Apr 2015 01:27:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.82 with SMTP id m76ls694082qgd.23.gmail; Thu, 02 Apr
 2015 01:27:35 -0700 (PDT)
X-Received: by 10.236.62.193 with SMTP id y41mr54894393yhc.38.1427963255873;
        Thu, 02 Apr 2015 01:27:35 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id oc12si528102pdb.1.2015.04.02.01.27.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 01:27:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A9C44ACF;
	Thu,  2 Apr 2015 08:27:34 +0000 (UTC)
Date: Thu, 2 Apr 2015 10:27:29 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Remove zero testing
 pointer typed value
Message-ID: <20150402082729.GA18468@kroah.com>
References: <20150401165826.GA3615@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150401165826.GA3615@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Apr 01, 2015 at 10:28:26PM +0530, Amitoj Kaur Chawla wrote:
> Removes variable comparison with 0. Done using following
> coccinelle script.
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
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

You sent multiple patches for the same file, but they were not numbered,
so I don't know which to apply in which order :(

Please take all of them and properly number them when resending.

thanks,

greg k-h

