X-GM-THRID: 6205239190814195712
X-Received: by 10.66.240.138 with SMTP id wa10mr29523184pac.43.1444772325836;
        Tue, 13 Oct 2015 14:38:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.214 with SMTP id 80ls3280570qgj.64.gmail; Tue, 13 Oct
 2015 14:38:45 -0700 (PDT)
X-Received: by 10.31.165.84 with SMTP id o81mr30656500vke.11.1444772325493;
        Tue, 13 Oct 2015 14:38:45 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id vy6si533515pbc.1.2015.10.13.14.38.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 14:38:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (50-76-40-150-ip-static.hfc.comcastbusiness.net [50.76.40.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 133C997;
	Tue, 13 Oct 2015 21:38:45 +0000 (UTC)
Date: Tue, 13 Oct 2015 14:38:44 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: host_interface:
 Remove unnecessary NULL test
Message-ID: <20151013213844.GA31201@kroah.com>
References: <20151013205704.GA10385@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151013205704.GA10385@ubuntu>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 14, 2015 at 02:27:04AM +0530, Shivani Bhardwaj wrote:
> Remove a NULL test on variable hif_drv as it is already preceded by one.
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c | 5 -----
>  1 file changed, 5 deletions(-)

Doesn't apply at all :(

