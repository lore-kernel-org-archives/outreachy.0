X-GM-THRID: 6330925606572654592
X-Received: by 10.129.113.196 with SMTP id m187mr1918417ywc.106.1474147890807;
        Sat, 17 Sep 2016 14:31:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.24 with SMTP id o24ls7715526otb.35.gmail; Sat, 17 Sep
 2016 14:31:30 -0700 (PDT)
X-Received: by 10.157.1.164 with SMTP id e33mr806215ote.33.1474147890532;
        Sat, 17 Sep 2016 14:31:30 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z4si3638610pam.0.2016.09.17.14.31.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 14:31:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 625378D7;
	Sat, 17 Sep 2016 21:31:29 +0000 (UTC)
Date: Sat, 17 Sep 2016 23:31:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 1/6] staging: ks7010: Use #include <linux/atomic.h>
 instead of <asm/atomic.h>
Message-ID: <20160917213134.GA16722@kroah.com>
References: <cover.1474032241.git.karniksayli1995@gmail.com>
 <3a2a38b1b291ac0dea9d5ca60387e3788fd0991f.1474032241.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3a2a38b1b291ac0dea9d5ca60387e3788fd0991f.1474032241.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Sep 16, 2016 at 08:14:49PM +0530, sayli karnik wrote:
> This patch replaces <asm/atomic.h> with <linux/atomic.h>, as suggested
> by checkpatch.pl.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/ks7010/ks7010_sdio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

One patch here says "v3" yet others say "v2", so they can't be sorted in
order :(

Please fix up the series, make them all the same version (as they are),
and resend the whole thing.

thanks,

greg k-h

