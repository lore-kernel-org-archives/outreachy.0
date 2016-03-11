X-GM-THRID: 6256430491232108544
X-Received: by 10.67.30.161 with SMTP id kf1mr7953447pad.21.1457717226257;
        Fri, 11 Mar 2016 09:27:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.97 with SMTP id f94ls936739iod.62.gmail; Fri, 11 Mar
 2016 09:27:05 -0800 (PST)
X-Received: by 10.50.36.68 with SMTP id o4mr2761351igj.7.1457717225964;
        Fri, 11 Mar 2016 09:27:05 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si1413940pfa.2.2016.03.11.09.27.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 09:27:05 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A0EF8A70;
	Fri, 11 Mar 2016 17:27:05 +0000 (UTC)
Date: Fri, 11 Mar 2016 09:27:05 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 4/4] staging: rtl8192e: Remove NULL
 test before vfree
Message-ID: <20160311172705.GA28090@kroah.com>
References: <20160228203102.GA2645@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160228203102.GA2645@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 29, 2016 at 02:01:02AM +0530, Bhaktipriya Shridhar wrote:
> vfree frees the virtually continuous memory area starting at addr.
> If addr is NULL, no operation is performed. So NULL test is not needed
> before vfree.
> 
> This was done using Coccinelle:
> 
> @@
> expression x;
> @@
> -if (x != NULL)
>     vfree(x);
> 
> @@
> expression x;
> @@
> 
> -if (x != NULL) {
>    vfree(x);
>    x = NULL;
> -}
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

Patch does not apply :(


