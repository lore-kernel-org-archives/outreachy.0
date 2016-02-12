X-GM-THRID: 6249471421100064768
X-Received: by 10.50.43.166 with SMTP id x6mr1434760igl.1.1455247710931;
        Thu, 11 Feb 2016 19:28:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.247 with SMTP id e110ls1253973qga.44.gmail; Thu, 11 Feb
 2016 19:28:30 -0800 (PST)
X-Received: by 10.129.109.197 with SMTP id i188mr44692726ywc.8.1455247710206;
        Thu, 11 Feb 2016 19:28:30 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u66si1385525pfa.2.2016.02.11.19.28.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 19:28:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id DBF7DE63;
	Fri, 12 Feb 2016 03:28:29 +0000 (UTC)
Date: Thu, 11 Feb 2016 19:28:29 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lustre: osc: Modify
 right hand side of an assignment
Message-ID: <20160212032829.GA27873@kroah.com>
References: <20160210064015.GA4712@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160210064015.GA4712@janani-Inspiron-3521>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Feb 10, 2016 at 01:40:15AM -0500, Janani Ravichandran wrote:
> This patch modifies an assignment of the form a = (a <op> b);
> as: a <op>= b; where <op> is << or >>.
> Coccinelle script used:
> 
> @@
> identifier i;
> expression e;
> @@
> 
> - i = (i >> e);
> + i >>= e;
> 
> @@
> identifier i;
> expression e;
> @@
> 
> - i = (i << e);
> + i <<= e;
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/lustre/lustre/osc/osc_request.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

The subject line is very "odd", it doesn't say what you are doing.
Well, it does, but it doesn't make much sense.

I understand the changes here, but why are you making them?  They aren't
"fixing" anything, nor making the code "simpler" or "cleaner" or
anything else.  We don't have any coding style rules that forces someone
to write this type of expression only one way, and I don't want to start
doing that either.  So I really don't want to accept patches like this.

Yes, I know I already did, sorry, I'll stop that now.  There has to be
lots of other "real" types of fixes / cleanups that you can do instead,
this code needs a lot of work :)

thanks,

greg k-h

