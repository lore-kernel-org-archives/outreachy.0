X-GM-THRID: 5447739244544
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3803f49973626918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.246.198 with SMTP id xy6mr22861043obc.26.1425251982919;
        Sun, 01 Mar 2015 15:19:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.130.200 with SMTP id og8ls546391obb.15.gmail; Sun, 01 Mar
 2015 15:19:42 -0800 (PST)
X-Received: by 10.182.199.66 with SMTP id ji2mr24343398obc.14.1425251982737;
        Sun, 01 Mar 2015 15:19:42 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si1299245pbc.0.2015.03.01.15.19.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 15:19:42 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6DC062C;
	Sun,  1 Mar 2015 23:19:42 +0000 (UTC)
Date: Sun, 1 Mar 2015 15:19:42 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] Staging: wlan-ng: Remove unused
 variables.
Message-ID: <20150301231942.GA9171@kroah.com>
References: <cover.1425223729.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425223729.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 01, 2015 at 09:04:31PM +0530, Vatika Harlalka wrote:
> These patches were detected by the following
> Coccinelle script :
> @@
> identifier f, ret;
> type T;
> @@
> (
> - ret =
> + return
>   f(...);
>   - return ret;
> 
>   |
> 
>   - T ret =
>   + return
>     f(...);
>     - return ret;
> )
> 
> Vatika Harlalka (3):
>   Staging: wlan-ng: Remove unused variable
>   Staging: wlan-ng: Remove unused variable
>   Staging: wlan-ng: Remove unused variable

3 patches all with the same name, please fix up and resend.

thanks,

greg k-h

