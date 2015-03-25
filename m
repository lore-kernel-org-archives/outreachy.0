X-GM-THRID: 9605342035968
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b7d3cad435928ba1
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.148.68 with SMTP id 65mr10004154qhu.6.1427282146376;
        Wed, 25 Mar 2015 04:15:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.94.203 with SMTP id de11ls198359obb.35.gmail; Wed, 25 Mar
 2015 04:15:46 -0700 (PDT)
X-Received: by 10.182.63.80 with SMTP id e16mr10575344obs.13.1427282146009;
        Wed, 25 Mar 2015 04:15:46 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id t6si279876pbs.0.2015.03.25.04.15.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 04:15:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1BC65AF5;
	Wed, 25 Mar 2015 11:15:44 +0000 (UTC)
Date: Wed, 25 Mar 2015 12:15:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: iio: use the BIT macro in
 adc
Message-ID: <20150325111542.GA24082@kroah.com>
References: <20150323212503.GA17603@kroah.com>
 <1427211295-26140-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1427211295-26140-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 24, 2015 at 06:34:55PM +0300, Haneen Mohammed wrote:
> This patch replaces bit shifting on:
>  0,1,2, and 3 with the BIT(x) macro.
> Issue addressed by checkpatcg.pl.
> This was done with the help of Coccinelle:
> 
>     @r1@
>     constant int g;
>     @@
> 
>     (
>     0<<g
>     |
>     1<<g
>     |
>     2<<g
>     |
>     3<<g
>     )
> 
>     @script:python b@
>     g2 <<r1.g;
>     y;
>     @@
>     coccinelle.y = int(g2) + 1
> 
>     @c@
>     constant int r1.g;
>     identifier b.y;
>     @@
> 
>     (
>     -(1 << g)
>     +BIT(g)
>     |
>     -(0 << g)
>     + 0
>     |
>     -(2 << g)
>     +BIT(y)
>     |
>     -(3 << g)
>     +(BIT(y)| BIT(g))
>     )
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
> v2: addressed compiler warnings due to prev change by undoing the change that triggered them

This patch doesn't apply to my tree, please redo it against a "clean"
version of my staging-testing branch of staging.git and resend.

thanks,

greg k-h

