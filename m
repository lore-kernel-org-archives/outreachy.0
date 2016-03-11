X-GM-THRID: 6255862679722786816
X-Received: by 10.129.145.130 with SMTP id i124mr7662557ywg.8.1457717133488;
        Fri, 11 Mar 2016 09:25:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.137 with SMTP id z9ls2844875qgd.75.gmail; Fri, 11 Mar
 2016 09:25:32 -0800 (PST)
X-Received: by 10.129.132.16 with SMTP id u16mr7844745ywf.32.1457717132862;
        Fri, 11 Mar 2016 09:25:32 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si1526369pac.1.2016.03.11.09.25.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 09:25:32 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9064BD1A;
	Fri, 11 Mar 2016 17:25:32 +0000 (UTC)
Date: Fri, 11 Mar 2016 09:25:32 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: G Pooja Shamili <poojashamili@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192e: Clean up tests
 on the results of functions that return NULL on failure.
Message-ID: <20160311172532.GA19547@kroah.com>
References: <20160306091858.GA31543@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160306091858.GA31543@localhost>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 06, 2016 at 02:48:58PM +0530, G Pooja Shamili wrote:
> Functions returning NULL as a return value on failure can be tested for
> as !x, NULL == x or x == NULL. As !x is commonly used, all the tests
> need to be modified to use !x for a consistent coding style. In this
> patch, the function kzalloc is considered.
> 
> Coccinelle is used to achieve this, the semantic patch being:
> 
> @@
> expression E;
> statement S;
> @@
> 
> E = kzalloc(...);
> 
> if (
> (
> +	!
> 	E
> -	== NULL
> |
> +	!
> -	NULL ==
> 	E
> )
>  ) S
> 
> Signed-off-by: G Pooja Shamili <poojashamili@gmail.com>
> ---
> Changes from Version 1:
> 	    * Changed the name in the From: and Signed-off-by: to full
> name.	    

You sent me 2 patches with pretty much the identical subject line, yet
they all did 3 different things.  Please fix up and resend as a patch
series.

thanks,

greg k-h

