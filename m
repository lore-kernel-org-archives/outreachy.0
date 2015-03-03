X-GM-THRID: 5931983175680
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bd66ad1392ef0d48
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.70.100 with SMTP id o64mr35334009yhd.9.1425388110241;
        Tue, 03 Mar 2015 05:08:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.33.10 with SMTP id n10ls176598igi.25.gmail; Tue, 03 Mar
 2015 05:08:30 -0800 (PST)
X-Received: by 10.66.216.195 with SMTP id os3mr7820586pac.11.1425388110009;
        Tue, 03 Mar 2015 05:08:30 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si118803pac.0.2015.03.03.05.08.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 05:08:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (mobile-166-171-248-081.mycingular.net [166.171.248.81])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4A4BD9AC;
	Tue,  3 Mar 2015 13:08:29 +0000 (UTC)
Date: Tue, 3 Mar 2015 05:08:26 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Somya Anand <somyaanand214@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: media: omap24xx: Merge
 quoted string across lines
Message-ID: <20150303130826.GA16219@kroah.com>
References: <1425310712-16755-1-git-send-email-somyaanand214@gmail.com>
 <1425310712-16755-2-git-send-email-somyaanand214@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425310712-16755-2-git-send-email-somyaanand214@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 02, 2015 at 09:08:32PM +0530, Somya Anand wrote:
> This patch fixes a coding style issue by merging a splitted
> quoted string across lines for better readability.
> 
> Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> ---
>  drivers/staging/media/omap24xx/omap24xxcam.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

This file isn't even in Linus's tree anymore, please be sure to always
work against the latest kernel tree.

thanks,

greg k-h

