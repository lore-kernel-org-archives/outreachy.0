X-GM-THRID: 6338401470738595840
X-Received: by 10.200.53.101 with SMTP id z34mr5006272qtb.72.1476024951427;
        Sun, 09 Oct 2016 07:55:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.4 with SMTP id y4ls550822iod.48.gmail; Sun, 09 Oct
 2016 07:55:48 -0700 (PDT)
X-Received: by 10.36.230.68 with SMTP id e65mr2233486ith.26.1476024948077;
        Sun, 09 Oct 2016 07:55:48 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si7296761pab.2.2016.10.09.07.55.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:55:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 54E52892;
	Sun,  9 Oct 2016 14:55:47 +0000 (UTC)
Date: Sun, 9 Oct 2016 16:55:42 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: rts5208: xd: remove unused function
 xd_check_err_code
Message-ID: <20161009145542.GA26139@kroah.com>
References: <1475774068-22447-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1475774068-22447-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Oct 06, 2016 at 10:44:28PM +0530, Bhumika Goyal wrote:
> Remove the function xd_check_err_code as it is not used anywhere in
> the kernel. Function detected using Coccinelle but removed by hand.
> Script:
> 
> @initialize:python@
> @@
> def display(name,p):
>         print(name,p[0].file)
> 
> @r1@
> identifier func;
> type T;
> position p;
> @@
> static T func@p(...)
> {
> ...
> }
> 
> @r@
> identifier r1.func;
> @@
> func
> 
> @script:python depends on !r@
> func << r1.func;
> p << r1.p;
> @@
> display(func,p)
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rts5208/xd.c | 7 -------
>  1 file changed, 7 deletions(-)

Patch does not apply to my tree :(

