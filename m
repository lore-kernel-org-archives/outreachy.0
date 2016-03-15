X-GM-THRID: 6262299386982694912
X-Received: by 10.129.104.69 with SMTP id d66mr23163680ywc.33.1458056682037;
        Tue, 15 Mar 2016 08:44:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.46.72 with SMTP id j66ls360468qga.0.gmail; Tue, 15 Mar
 2016 08:44:41 -0700 (PDT)
X-Received: by 10.140.31.102 with SMTP id e93mr22942774qge.27.1458056681511;
        Tue, 15 Mar 2016 08:44:41 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si4310460pab.0.2016.03.15.08.44.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 08:44:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2C688C50;
	Tue, 15 Mar 2016 15:44:41 +0000 (UTC)
Date: Tue, 15 Mar 2016 08:44:40 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com, tj@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] iio: light: tsl2563: Remove
 flush_scheduled_work
Message-ID: <20160315154440.GA23557@kroah.com>
References: <20160315151951.GA5890@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160315151951.GA5890@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Mar 15, 2016 at 08:49:51PM +0530, Amitoj Kaur Chawla wrote:
> flush_scheduled_work is scheduled for deprecation. 
> Replace cancel_delayed_work and flush_scheduled_work with
> cancel_delayed_work_sync instead to ensure there is no pending or
> running work item.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/iio/light/tsl2563.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Please only touch files in drivers/staging/ for the application process,
I can not take any patches outside of that area.

thanks,

greg k-h

