X-GM-THRID: 6615419425157808128
X-Received: by 2002:ab0:9d8:: with SMTP id e24mr44912422uah.12.1540280192859;
        Tue, 23 Oct 2018 00:36:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:3404:: with SMTP id b4ls380815vka.2.gmail; Tue, 23 Oct
 2018 00:36:32 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60pb5icdqSsNuypfVR/zJFW7vDZeKrCzpoeItXykyFGJGVZxCeZl8Q0MfhUXqsL0YEFtw2y
X-Received: by 2002:a1f:a243:: with SMTP id l64-v6mr44216395vke.23.1540280192166;
        Tue, 23 Oct 2018 00:36:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540280192; cv=none;
        d=google.com; s=arc-20160816;
        b=Dme4qclMTT7RrnhrikR+uWNph0jVvnhu5rtUNY+nKtxIBPRNCL/bVVpAoyCefnz67n
         XEqID0AlldTIg/qHarq4qWuEBP+wjgcat0nT21nBSJjacYrgk48FJhOpOalsfVuKY0NS
         AzcBiWzTpgzsY0hlrPlP+8edVeOm7RzF1/nxtON9P/Kdvgo+MpRqOmW2dXmi8N6lUfY3
         wKI3rZVNnyGWHxde2HJoeZRYFtSanOGfhlW/WVJrf5gqQmEmXxLBM2BJFB1aaHsnLBm1
         1Hjo6SJ8NjdEFFx914q2PAT3a0U1Ox/uGRvcwu0AS6kEt4SvYmfX9Nu5f6jYsLfr5W88
         7N3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Gjem15khP21wBy4BiucabnPNSb6qfLwV49EqYMiw4bI=;
        b=ZBlSHruWOVststHjvQH+ljMnrWrU4eVYnYysJ1/ixDj+eMNUuDDIWMjiWNwsW9Z6rw
         68fB0F2QMMZUIPvlp/Y4zsJ56Vy35gkPaBR33+L/6TDLtSM85lfYnBdBxpit6CwYbcGn
         8Hha2+cVGljILtzz0v+AYpyQbdpKrcCWMlO7R9qXeX5wlku7cNsfjWpYJbCdq1AmXAEx
         jhRpP8ofH0kIRmjphhICxPp3cBSj/ffqhUYy7n3BBfYYlxrK5XsoJClRiRXOpgh/N1Sb
         4SkDoh/TlFLlyfHFxXrAckFcfOTYMtKm3OzmvWK0SvMv8fbdQGpOze6RijJeUKfrnhg0
         6q1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="H225/vbz";
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id g126si21280vke.0.2018.10.23.00.36.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 00:36:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="H225/vbz";
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x529.google.com with SMTP id d8-v6so231922pgv.10
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 00:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Gjem15khP21wBy4BiucabnPNSb6qfLwV49EqYMiw4bI=;
        b=H225/vbzff8IkoDeIdIhqoDqQRFmoqttNgs69qmK3nLJjmOEruUF38xW4imGdbjWDT
         4UcGWMDUnelxt53p+UpxpqVDoacY6wTL7trw9+KITluC7Ad3mVdIuaqO8H0reLenh4Ul
         YYIjq7KCgRevUIxfwbXjHVjTpNab+Ql/UP0nyys/PSm4sh6+LO9L0pv7V04bw59KX4lT
         yl0X3RMVxA44CPqW/ibqawm2W+WpKoFCTHk2FDeKqW4QUSXdn8KeqGubsoVz0QIc5+Cr
         oNMtsHnX6WFRN8gMIL5hlfJ0kJ8fhmSfHSNOpgn2VFTID0HSoLFVV7c0lDla6PVJVO2O
         Tg1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Gjem15khP21wBy4BiucabnPNSb6qfLwV49EqYMiw4bI=;
        b=QJVDQedHycg+FAZv8sNxdQnFuTIfsmzLADonxN2AKLs7OaS5KpJqLBahpRtY+OBz51
         HymMcX9G1zcSIJDvTyLKSDxHDIbFHzw7TVspZitQ5MAy7dh7w+JN3wbib7wCQJyhgsbd
         mcru9oJra4awdziDToeUgQo54c0fh/P4zSALPFPq8bzODcalN/j8I+Z8AdHOBBt3Vqex
         KlCACWO3NbXQ1pcFoShUmkA5HzHstin2s+qejK9sYQlFYddDg5XRptT1DPwwd9VadRVa
         2Sddn2wkKj/Oys2kWigVx0t5mVjUmeJzwsgmlLmAR4erMERFL50vy8jEPOh4uFiHg26r
         hYaw==
X-Gm-Message-State: ABuFfogkP7nH1OV0q+gFW5a9KN/i/gkQd8JQUpNI3WFx4RCiQFJexRih
	iVAtESGOrW8H4jGTLTUfFdw=
X-Received: by 2002:a63:450b:: with SMTP id s11-v6mr46818827pga.301.1540280191580;
        Tue, 23 Oct 2018 00:36:31 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id u124-v6sm2847458pgc.0.2018.10.23.00.36.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Oct 2018 00:36:30 -0700 (PDT)
Date: Tue, 23 Oct 2018 13:06:22 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Zach Turner <turnerzdp@gmail.com>
Cc: gregkh@linuxfoundation.org, hwentland@gmail.com,
	manasi.d.navare@intel.com, daniel.vetter@ffwl.ch,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Add
 SPDX-License-Identifier - Style
Message-ID: <20181023073622.GA5542@himanshu-Vostro-3559>
References: <20181023052559.GA12944@venus>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181023052559.GA12944@venus>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Oct 22, 2018 at 11:25:59PM -0600, Zach Turner wrote:
> Add SPDX-License-Identifier tag to the start of the file. This is
> a coding style change which should not impact runtime code execution.
> 
> Signed-off-by: Zach Turner <turnerzdp@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
> index bc45cf098b04..8cfc2a1a5c48 100644
> --- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
> +++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
> @@ -1,5 +1,5 @@
> -/*
> - * Host AP crypt: host-based CCMP encryption implementation for Host AP driver
> +// SPDX-License-Identifier: GPL-2.0-or-later

I believe it should be:

// SPDX-License-Identifier: GPL-2.0+

considering MODULE_LICENSE("GPL")

check Documentation/process/license-rules.rst

Also, the purpose of SPDX tag was to remove bolierplate text:

```
    * This program is free software; you can redistribute it and/or modify
    * it under the terms of the GNU General Public License version 2 as
    * published by the Free Software Foundation. See README and COPYING for
    * more details.
    */
```

But this above text suggest GPLv2 which is inconsistent with MODULE_LICENSE("GPL");
present at the bottom of the file.

Lastly, for these copyrights changes Cc the author of the file too.


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

