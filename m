X-GM-THRID: 6208412714735239168
X-Received: by 10.107.16.9 with SMTP id y9mr23347652ioi.7.1445761580435;
        Sun, 25 Oct 2015 01:26:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.165 with SMTP id k5ls565919igx.37.gmail; Sun, 25 Oct
 2015 01:26:19 -0700 (PDT)
X-Received: by 10.68.253.136 with SMTP id aa8mr10816059pbd.14.1445761579916;
        Sun, 25 Oct 2015 01:26:19 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id fa8si3046903pab.1.2015.10.25.01.26.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:26:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 07D3E90;
	Sun, 25 Oct 2015 08:26:18 +0000 (UTC)
Date: Sat, 24 Oct 2015 18:23:27 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: wilc1000:
 coreconfigurator: Drop unneeded wrapper functions
Message-ID: <20151025012327.GA7654@kroah.com>
References: <20151022125927.GA21271@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151022125927.GA21271@ubuntu>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 22, 2015 at 06:29:27PM +0530, Shivani Bhardwaj wrote:
> Remove the wrapper functions get_address1, get_address2 and get_address3
> as they are not required and replace their calls by suitable functions.
> Semantic patch used:
> 
> @@
> identifier f,g;
> @@
> 
> *f(...) {
>  g(...); }
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.c | 48 ++++++++++++++---------------
>  1 file changed, 23 insertions(+), 25 deletions(-)

What changed from v1?


