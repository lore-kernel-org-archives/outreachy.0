X-GM-THRID: 7869323804672
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8bcb4050a5d2ab24
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.207.230 with SMTP id n66mr42521077yho.30.1426167088849;
        Thu, 12 Mar 2015 06:31:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.51.17.7 with SMTP id ga7ls741383igd.7.gmail; Thu, 12 Mar 2015
 06:31:28 -0700 (PDT)
X-Received: by 10.67.15.103 with SMTP id fn7mr43273626pad.24.1426167088425;
        Thu, 12 Mar 2015 06:31:28 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si1309712pac.2.2015.03.12.06.31.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 06:31:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4548B981;
	Thu, 12 Mar 2015 13:31:26 +0000 (UTC)
Date: Thu, 12 Mar 2015 14:31:23 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drivers: power: Replace use of
 devm_kzalloc instead of kzalloc
Message-ID: <20150312133123.GB31417@kroah.com>
References: <20150312124643.GA16399@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150312124643.GA16399@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 12, 2015 at 06:16:43PM +0530, Vatika Harlalka wrote:
> This patch moves shared private data kzalloc to managed devm_kzalloc and
> so kfree is not required.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/power/intel_mid_battery.c | 3 +--

I can not accept patches outside of drivers/staging/ for any outreachy
application submissions, sorry.  There's nothing I can do with this at
this time.

Please stick with drivers/staging/* for now.

thanks,

greg k-h

