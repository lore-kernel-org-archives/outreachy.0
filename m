X-GM-THRID: 6335134925218381824
X-Received: by 10.107.142.4 with SMTP id q4mr8263732iod.87.1475055510930;
        Wed, 28 Sep 2016 02:38:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.220 with SMTP id w28ls564404otw.27.gmail; Wed, 28 Sep
 2016 02:38:30 -0700 (PDT)
X-Received: by 10.200.36.41 with SMTP id c38mr8719534qtc.21.1475055510558;
        Wed, 28 Sep 2016 02:38:30 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si1976176pfw.1.2016.09.28.02.38.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 02:38:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.202.203.52])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CECDE3EE;
	Wed, 28 Sep 2016 09:38:29 +0000 (UTC)
Date: Wed, 28 Sep 2016 11:38:33 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: outreachy-kernel@googlegroups.com, amsfield22@gmail.com,
	daniel.baluta@intel.com, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com
Subject: Re: [PATCH] staging: sm750fb: conform to block comment style
Message-ID: <20160928093833.GA17074@kroah.com>
References: <20160927215857.GA23865@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160927215857.GA23865@localhost>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Tue, Sep 27, 2016 at 02:58:59PM -0700, Elizabeth Ferdman wrote:
> Fix two checkpatch errors:
> "Block comments use * on subsequent lines" and
> "Block comments use a trailing */ on a separate line"
> to conform to block commenting style.
> 
> Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_display.h |  49 ++++++++-------
>  drivers/staging/sm750fb/ddk750_hwi2c.c   |   2 +-
>  drivers/staging/sm750fb/ddk750_mode.c    |  27 ++++-----
>  drivers/staging/sm750fb/ddk750_sii164.c  |   7 ++-
>  drivers/staging/sm750fb/ddk750_swi2c.c   |  12 ++--
>  drivers/staging/sm750fb/sm750.h          |  16 ++---
>  drivers/staging/sm750fb/sm750_accel.c    | 100 ++++++++++++++++++-------------
>  7 files changed, 113 insertions(+), 100 deletions(-)

Doesn't apply to my tree :(

Please rebase and resend, thanks.

greg k-h

