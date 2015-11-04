X-GM-THRID: 6211184706500689920
X-Received: by 10.50.111.81 with SMTP id ig17mr3741914igb.9.1446663912375;
        Wed, 04 Nov 2015 11:05:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.9 with SMTP id a9ls225668qga.99.gmail; Wed, 04 Nov 2015
 11:05:11 -0800 (PST)
X-Received: by 10.13.220.4 with SMTP id f4mr2612556ywe.22.1446663911897;
        Wed, 04 Nov 2015 11:05:11 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sm2si285429pab.0.2015.11.04.11.05.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 11:05:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.10.71])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 33BA89A;
	Wed,  4 Nov 2015 19:05:11 +0000 (UTC)
Date: Wed, 4 Nov 2015 11:05:09 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove unused
 function
Message-ID: <20151104190509.GA32396@kroah.com>
References: <20151029212847.GA23256@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151029212847.GA23256@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Oct 30, 2015 at 02:58:47AM +0530, Amitoj Kaur Chawla wrote:
> Drop function that is declared but not called anywhere.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 15 ---------------
>  1 file changed, 15 deletions(-)

Someone else sent this patch 2 days before you did, sorry.

