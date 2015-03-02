X-GM-THRID: 4335556624384
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,70e644f069875ab
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.196.11 with SMTP id ii11mr24850330pac.37.1425255596521;
        Sun, 01 Mar 2015 16:19:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.137 with SMTP id k9ls1401118qge.6.gmail; Sun, 01 Mar
 2015 16:19:56 -0800 (PST)
X-Received: by 10.236.40.112 with SMTP id e76mr27043127yhb.5.1425255596345;
        Sun, 01 Mar 2015 16:19:56 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si1324940pdc.0.2015.03.01.16.19.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:19:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EC5CD475;
	Mon,  2 Mar 2015 00:19:55 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:19:55 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: Remove
 redundant if conditions
Message-ID: <20150302001955.GA11204@kroah.com>
References: <20150227062337.GA10321@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150227062337.GA10321@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 11:53:37AM +0530, Vatika Harlalka wrote:
> Remove redundant if blocks as is2t is always false.
> Variable rf is always 1 as is2t is false.
> Variable value32 is unused after removing redundant code.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  Changes in v2: Added one new unused if() block.
> 
>  drivers/staging/rtl8188eu/hal/phy.c | 55 ++-----------------------------------
>  1 file changed, 2 insertions(+), 53 deletions(-)

Does not apply :(

