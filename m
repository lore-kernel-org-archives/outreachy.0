X-GM-THRID: 6208838944103071744
X-Received: by 10.182.72.166 with SMTP id e6mr25484302obv.47.1445761585747;
        Sun, 25 Oct 2015 01:26:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.149.147 with SMTP id x141ls234295iod.3.gmail; Sun, 25 Oct
 2015 01:26:25 -0700 (PDT)
X-Received: by 10.50.62.49 with SMTP id v17mr10845068igr.1.1445761585525;
        Sun, 25 Oct 2015 01:26:25 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sm2si1676570pab.0.2015.10.25.01.26.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:26:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B3BC790;
	Sun, 25 Oct 2015 08:26:24 +0000 (UTC)
Date: Sat, 24 Oct 2015 18:25:18 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: wilc1000:
 coreconfigurator: Remove irrelevant wrapper function
Message-ID: <20151025012518.GC7654@kroah.com>
References: <cover.1445607754.git.shivanib134@gmail.com>
 <a636533cae194224d97d3ef1290fd299ae6bc8f8.1445607754.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a636533cae194224d97d3ef1290fd299ae6bc8f8.1445607754.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Oct 23, 2015 at 07:16:20PM +0530, Shivani Bhardwaj wrote:
> Remove the function get_current_channel() and replace its calls by
> get_current_channel_802_11n() as the former function's definition
> involves only returning the value of latter function.
> Semantic patch used to find out the issue:
> 
> @@
> identifier f,g;
> @@
> 
> *f(...) {
>  return g(...); }
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.c | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)

This replaces a previous patch you sent, right?

I'm totally confused as to what patches you want applied, please resend
all of them for this driver, the latest versions, with proper version
information so I have a hint as to what to do...

thanks,

greg k-h

