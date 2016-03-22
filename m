X-GM-THRID: 6261663196843606016
X-Received: by 10.182.233.170 with SMTP id tx10mr25958076obc.18.1458610834128;
        Mon, 21 Mar 2016 18:40:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.90.103 with SMTP id w94ls1525955qgd.13.gmail; Mon, 21 Mar
 2016 18:40:33 -0700 (PDT)
X-Received: by 10.13.214.13 with SMTP id y13mr17777318ywd.24.1458610833369;
        Mon, 21 Mar 2016 18:40:33 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h69si3770200pfj.0.2016.03.21.18.40.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 18:40:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [38.111.11.2])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D1CE971;
	Tue, 22 Mar 2016 01:40:32 +0000 (UTC)
Date: Mon, 21 Mar 2016 21:40:31 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: olpc_dcon: Add space around
 '<<'
Message-ID: <20160322014031.GA21751@kroah.com>
References: <1457907064-6493-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1457907064-6493-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Mar 14, 2016 at 12:11:04AM +0200, Dilek Uzulmez wrote:
> Add space around operator '<<'. Problem found using checkpatch.pl
> CHECK: spaces preferred around that '<<' (ctx:VxV)
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/olpc_dcon/olpc_dcon.h | 30 +++++++++++++++---------------
>  1 file changed, 15 insertions(+), 15 deletions(-)

This driver is no longer even in the kernel tree :(

Please be sure to always work from the correct branch.

thanks,

greg k-h

