X-GM-THRID: 60860399616
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e52331c5d8e7e604
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.1.200 with SMTP id 48mr106711yhd.41.1424816024117;
        Tue, 24 Feb 2015 14:13:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.203 with SMTP id i194ls1765155ioi.62.gmail; Tue, 24 Feb
 2015 14:13:43 -0800 (PST)
X-Received: by 10.66.233.198 with SMTP id ty6mr159861pac.24.1424816023885;
        Tue, 24 Feb 2015 14:13:43 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bx1si3741552pdb.2.2015.02.24.14.13.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 14:13:43 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [216.239.55.136])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 89DF7B12;
	Tue, 24 Feb 2015 22:13:43 +0000 (UTC)
Date: Tue, 24 Feb 2015 14:13:41 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] Cover letter
Message-ID: <20150224221341.GA15981@kroah.com>
References: <20150216213219.GA21926@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150216213219.GA21926@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Feb 17, 2015 at 03:02:19AM +0530, Vatika Harlalka wrote:
> Code cleanups in dgnc staging driver. 
> Cleanups include removing trailing whitespace and reindenting for increasing readability.
> 
> Vatika Harlalka (3):
>   Staging: dgnc: Fix warning of code style
>   Staging: dgnc: Removed trailing whitespace to improve readability.
>   Staging: dgnc: Indented code to increase readability.
> 
>  drivers/staging/dgnc/dgnc_cls.h    |  4 ++--
>  drivers/staging/dgnc/dgnc_driver.c |  4 +++-
>  drivers/staging/dgnc/dgnc_driver.h | 12 ++++++------
>  3 files changed, 11 insertions(+), 9 deletions(-)

I only saw one of these 3 patches on the list, what happened to the
other two?

confused,

greg k-h

