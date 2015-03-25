X-GM-THRID: 9347595763712
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1564ac45bb5dd367
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.229.36 with SMTP id sn4mr10185582pac.32.1427282171672;
        Wed, 25 Mar 2015 04:16:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.37 with SMTP id g34ls136750qgf.45.gmail; Wed, 25 Mar
 2015 04:16:11 -0700 (PDT)
X-Received: by 10.140.231.139 with SMTP id b133mr9993314qhc.1.1427282171469;
        Wed, 25 Mar 2015 04:16:11 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id oc12si279987pdb.1.2015.03.25.04.16.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 04:16:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 93E15AF5;
	Wed, 25 Mar 2015 11:16:10 +0000 (UTC)
Date: Wed, 25 Mar 2015 12:16:08 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Remove typedef
 hfa384x_t
Message-ID: <20150325111608.GA24140@kroah.com>
References: <20150324081634.GA30469@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150324081634.GA30469@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 24, 2015 at 01:46:34PM +0530, Vatika Harlalka wrote:
> Remove typedef hfa384x_t and replace its uses in the code
> using script.
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

This still doesn't apply :(

