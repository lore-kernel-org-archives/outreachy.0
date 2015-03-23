X-GM-THRID: 9347595763712
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1564ac45bb5dd367
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.245.169 with SMTP id xp9mr2106915obc.44.1427152969152;
        Mon, 23 Mar 2015 16:22:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.46 with SMTP id k43ls2708432qgk.27.gmail; Mon, 23 Mar
 2015 16:22:49 -0700 (PDT)
X-Received: by 10.236.111.4 with SMTP id v4mr1998828yhg.55.1427152968999;
        Mon, 23 Mar 2015 16:22:48 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si291420pac.0.2015.03.23.16.22.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2015 16:22:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D8955982;
	Mon, 23 Mar 2015 23:22:47 +0000 (UTC)
Date: Mon, 23 Mar 2015 22:42:22 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: wlan-ng: Remove typedef
 hfa384x_t
Message-ID: <20150323214222.GA19606@kroah.com>
References: <cover.1426920752.git.vatikaharlalka@gmail.com>
 <7fada4b1037c765507108b6f57a9be906086538f.1426920752.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7fada4b1037c765507108b6f57a9be906086538f.1426920752.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Mar 21, 2015 at 12:27:40PM +0530, Vatika Harlalka wrote:
> Remove typedef hfa384x_t and replace its uses in the code.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h     |  64 ++++++------
>  drivers/staging/wlan-ng/hfa384x_usb.c | 178 +++++++++++++++++-----------------
>  drivers/staging/wlan-ng/prism2mgmt.c  |  20 ++--
>  drivers/staging/wlan-ng/prism2mgmt.h  |   4 +-
>  drivers/staging/wlan-ng/prism2mib.c   |  36 +++----
>  drivers/staging/wlan-ng/prism2sta.c   |  40 ++++----
>  drivers/staging/wlan-ng/prism2usb.c   |   8 +-
>  7 files changed, 175 insertions(+), 175 deletions(-)

This fails to apply to my tree for some reason :(

Can you please fix it up and resend?

thanks,

greg k-h

