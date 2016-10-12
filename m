X-GM-THRID: 6340275166389469184
X-Received: by 10.157.39.11 with SMTP id r11mr1829934ota.140.1476252239126;
        Tue, 11 Oct 2016 23:03:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.58.69 with SMTP id h66ls601517ioa.29.gmail; Tue, 11 Oct
 2016 23:03:54 -0700 (PDT)
X-Received: by 10.107.13.17 with SMTP id 17mr406010ion.45.1476252234795;
        Tue, 11 Oct 2016 23:03:54 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id a143si1132422pfa.2.2016.10.11.23.03.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 23:03:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 23A3E8CC;
	Wed, 12 Oct 2016 06:03:54 +0000 (UTC)
Date: Wed, 12 Oct 2016 08:04:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Add space around '*'
Message-ID: <20161012060402.GA23951@kroah.com>
References: <1476210334-9677-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1476210334-9677-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Tue, Oct 11, 2016 at 09:25:34PM +0300, Dilek Uzulmez wrote:
> Add space around operators '*'. Problem found using checkpatch.pl
> CHECK: spaces preferred around that '*' (ctx:VxV)
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Any reason you didn't also cc: the correct maintainers for your patches?
Please resend all of them by following the instructions in the tutorial
to determine how to properly figure out who they are.

thanks,

greg k-h

