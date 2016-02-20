X-GM-THRID: 6252987180306661376
X-Received: by 10.112.201.104 with SMTP id jz8mr2673934lbc.13.1456010927988;
        Sat, 20 Feb 2016 15:28:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.208.200 with SMTP id h191ls83523lfg.106.gmail; Sat, 20 Feb
 2016 15:28:47 -0800 (PST)
X-Received: by 10.112.150.105 with SMTP id uh9mr1025279lbb.17.1456010927346;
        Sat, 20 Feb 2016 15:28:47 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w10si620043wmw.3.2016.02.20.15.28.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 15:28:47 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 01A2410E1;
	Sat, 20 Feb 2016 23:28:45 +0000 (UTC)
Date: Sat, 20 Feb 2016 15:28:45 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: nvec: Add space around '<<'
Message-ID: <20160220232845.GA13402@kroah.com>
References: <1455887021-6535-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455887021-6535-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 19, 2016 at 03:03:41PM +0200, Dilek Uzulmez wrote:
> Add space around operator '<<'.Problem found using checkpatch.pl
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/nvec/nvec.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)

This patch doesn't apply to my tree, are you sure you are using the
correct branch?

thanks,

greg k-h

