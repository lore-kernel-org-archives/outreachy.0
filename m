X-GM-THRID: 6209880020994752512
X-Received: by 10.182.95.101 with SMTP id dj5mr21265096obb.13.1445932149687;
        Tue, 27 Oct 2015 00:49:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.133 with SMTP id j5ls1108705igx.3.canary; Tue, 27 Oct
 2015 00:49:09 -0700 (PDT)
X-Received: by 10.50.142.103 with SMTP id rv7mr19627154igb.2.1445932149427;
        Tue, 27 Oct 2015 00:49:09 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id vy6si3931575pbc.1.2015.10.27.00.49.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 00:49:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.250])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 725F367;
	Tue, 27 Oct 2015 07:49:08 +0000 (UTC)
Date: Tue, 27 Oct 2015 16:49:05 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Burcin Akalin <brcnakalin@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: Add space around '+'
Message-ID: <20151027074905.GA17988@kroah.com>
References: <1445850352-6976-1-git-send-email-brcnakalin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445850352-6976-1-git-send-email-brcnakalin@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 26, 2015 at 12:05:52PM +0300, Burcin Akalin wrote:
> Add space around operator '+'. Problem found using
> checkpatch.pl
> CHECK: spaces preferred around that '+' (ctx:VxV)
> 
> Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
> ---
>  drivers/staging/vt6656/dpc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

You sent two patches, with identical subjects, but no hint as to what
order to apply them in :(

Please fix up, and send as a patch series.

thanks,

greg k-h

