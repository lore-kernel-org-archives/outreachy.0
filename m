X-GM-THRID: 1059734945792
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8070df28e35d8d4b
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.196.209 with SMTP id r200mr9256694qha.0.1424976858511;
        Thu, 26 Feb 2015 10:54:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.153.70 with SMTP id b67ls230127ioe.88.gmail; Thu, 26 Feb
 2015 10:54:18 -0800 (PST)
X-Received: by 10.66.100.198 with SMTP id fa6mr9288826pab.31.1424976858224;
        Thu, 26 Feb 2015 10:54:18 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id xj4si199626pbc.2.2015.02.26.10.54.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:54:18 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id F293DB31;
	Thu, 26 Feb 2015 18:54:17 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:54:17 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Remove spaces before
 tabs
Message-ID: <20150226185417.GA17202@kroah.com>
References: <20150219224214.GA1311@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150219224214.GA1311@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 20, 2015 at 04:12:14AM +0530, Vatika Harlalka wrote:
> This patch is to remove unneeded spaces before tabs so as to
> follow kernel coding conventions.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/media/tlg2300/pd-common.h | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)

Also not in the tree :(

