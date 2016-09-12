X-GM-THRID: 6329492802868609024
X-Received: by 10.129.165.14 with SMTP id c14mr16755641ywh.48.1473706818262;
        Mon, 12 Sep 2016 12:00:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.21.49 with SMTP id u46ls3025038otf.43.gmail; Mon, 12 Sep
 2016 12:00:17 -0700 (PDT)
X-Received: by 10.13.225.71 with SMTP id k68mr16452043ywe.14.1473706817721;
        Mon, 12 Sep 2016 12:00:17 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id si10si2421643pab.1.2016.09.12.12.00.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 12:00:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9A0D798D;
	Mon, 12 Sep 2016 19:00:16 +0000 (UTC)
Date: Mon, 12 Sep 2016 19:25:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: comedi_pcmcia: Fixes
 multiple blank lines issue
Message-ID: <20160912172516.GB32613@kroah.com>
References: <CAFrQyDEjFOCD2WZmVWedeRcasU_48CmaTpOCKT3QJWbRB5zFgQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAFrQyDEjFOCD2WZmVWedeRcasU_48CmaTpOCKT3QJWbRB5zFgQ@mail.gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Mon, Sep 12, 2016 at 10:34:21PM +0530, Namrata A Shettar wrote:
> This patch fixes the checkpatch.pl issue:
> -Please don't use multiple blank lines
> 
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
> �drivers/staging/comedi/comedi_pcmcia.c | 1 -
> �1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/comedi/comedi_pcmcia.c b/drivers/staging/comedi/
> comedi_pcmcia.c
> index d7072a5..ec8a0ad 100644
> --- a/drivers/staging/comedi/comedi_pcmcia.c
> +++ b/drivers/staging/comedi/comedi_pcmcia.c
> @@ -18,7 +18,6 @@
> 
> �#include <linux/module.h>
> �#include <linux/kernel.h>
> -
> �#include "comedi_pcmcia.h"

That's not a multiple blank line :(


