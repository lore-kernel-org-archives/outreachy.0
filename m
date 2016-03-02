X-GM-THRID: 6256254448614506496
X-Received: by 10.112.181.33 with SMTP id dt1mr3331210lbc.22.1456935925415;
        Wed, 02 Mar 2016 08:25:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.80.199 with SMTP id e190ls218121lfb.16.gmail; Wed, 02 Mar
 2016 08:25:24 -0800 (PST)
X-Received: by 10.25.153.196 with SMTP id b187mr3224463lfe.3.1456935924822;
        Wed, 02 Mar 2016 08:25:24 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id v68si234663wmd.1.2016.03.02.08.25.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:25:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 68A21DB9;
	Wed,  2 Mar 2016 16:25:23 +0000 (UTC)
Date: Wed, 2 Mar 2016 08:25:23 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: unisys: Remove function
 visorchannel_debug
Message-ID: <20160302162523.GA987@kroah.com>
References: <1456647735-15584-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1456647735-15584-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 28, 2016 at 01:52:15PM +0530, Bhumika Goyal wrote:
> The function visorchannel_debug is not used anywhere in the kernel so
> remove the function definition, prototype and the export symbol.
> Grepped to find the occurences.
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/unisys/include/visorbus.h      |  2 -
>  drivers/staging/unisys/visorbus/visorchannel.c | 74 --------------------------
>  2 files changed, 76 deletions(-)

This patch adds a build warning to the build, so I can't take it.
Please fix that up :(

thanks,

greg k-h

