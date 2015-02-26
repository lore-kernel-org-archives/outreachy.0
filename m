X-GM-THRID: 244740784128
X-Received: by 10.236.18.232 with SMTP id l68mr8992714yhl.16.1424976512942;
        Thu, 26 Feb 2015 10:48:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.219 with SMTP id f88ls298175ioj.60.gmail; Thu, 26 Feb
 2015 10:48:32 -0800 (PST)
X-Received: by 10.70.45.49 with SMTP id j17mr9204235pdm.4.1424976512749;
        Thu, 26 Feb 2015 10:48:32 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si234646pbc.0.2015.02.26.10.48.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:48:32 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 70FCABE4;
	Thu, 26 Feb 2015 18:48:32 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:48:32 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: parport: remove
 unused variable
Message-ID: <20150226184832.GA5329@kroah.com>
References: <20150218003417.GA16982@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150218003417.GA16982@localhost.localdomain>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Feb 18, 2015 at 02:34:17AM +0200, Aya Mahfouz wrote:
> This patch uses the following coccinelle script to remove
> a variable that was simply used to store the return
> value of a function call before returning it:
> 
> @@
> identifier len,f;
> @@
> 
> -int len;
>  ... when != len
>      when strict
> -len = 
> +return 
> 	f(...);
> -return len;
> 
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> ---
>  drivers/staging/media/parport/pms.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)

This file is no longer in Linus's tree :(

