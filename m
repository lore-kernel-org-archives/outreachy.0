X-GM-THRID: 6258482142571921408
X-Received: by 10.140.92.69 with SMTP id a63mr4020573qge.14.1457720030528;
        Fri, 11 Mar 2016 10:13:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.230 with SMTP id j93ls2696805qgd.64.gmail; Fri, 11 Mar
 2016 10:13:50 -0800 (PST)
X-Received: by 10.140.39.229 with SMTP id v92mr8107129qgv.25.1457720030050;
        Fri, 11 Mar 2016 10:13:50 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si1539472pab.0.2016.03.11.10.13.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 10:13:49 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A54DDC18;
	Fri, 11 Mar 2016 18:13:49 +0000 (UTC)
Date: Fri, 11 Mar 2016 10:13:49 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging:octeon:ethernet-rx.c: Fix
 comparison with constant warning
Message-ID: <20160311181349.GA18388@kroah.com>
References: <20160305082703.GA5425@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160305082703.GA5425@domino-MS-16Y1>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Mar 05, 2016 at 10:27:03AM +0200, Muraru Mihaela wrote:
> Fix the comparison with a constant on the left side, by checking if the
> variable is not null
> 
> It also reduce to silence the checkpatch.pl warning.
> 
> Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/octeon/ethernet-rx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Does not apply to my tree :(


