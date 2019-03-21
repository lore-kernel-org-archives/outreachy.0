X-GM-THRID: 6670524587430641664
X-Received: by 2002:a63:6cc1:: with SMTP id h184mr5417262pgc.151.1553203178217;
        Thu, 21 Mar 2019 14:19:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:92d1:: with SMTP id k17ls2682567pfa.8.gmail; Thu, 21 Mar
 2019 14:19:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwdPOPoSZLbc5RgUBOkx4+o/uU00p5SgV7mEGsMz+PUpXtPvmEylR60gpCiHMRpFdiw6Zep
X-Received: by 2002:a63:cc43:: with SMTP id q3mr5427442pgi.387.1553203177638;
        Thu, 21 Mar 2019 14:19:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553203177; cv=none;
        d=google.com; s=arc-20160816;
        b=k4SpKb9gWWTloFUNVgjWrJKeEL3z7LQVEhzr3+1N9N0McK/2nL92p3ykbsC74QhKJr
         6Y1EJo1Z3oBi9Uqd7eayOcKW2Jyt2v/k++eLuF1nWJaZRWDE4qOdgaWAbpLo6b9YnqvP
         8OQNN2yjn3gNmsPxsUsUE1sCpuHWhGHkp2xsWsetr74e4UKInDLLCwIlvy2WcD2K4EXx
         ImRMnGhP2PHhNWTmcfRymixir3Wxp+odGWFCgYKLqoNPWWHGrRHCDVfgsuhy2Iudan/f
         CbeKIuc1vfO3sXSucFwBA/yJ10S2SwMbXKp0XHk0RfNYJFO1g52RQCvb2eAOOPYrrYcz
         s+Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ChaojSKgvzpct9KLkcKLK60mFBaojDDmHu/t+Y640Os=;
        b=Jm2ZfrICqiUapPow69BcaFDN0pNh65tLUOPbsovy+RhOLhjw5KDK/GN6EErreJ318X
         4WWbXcx1Q6Su052FU1ps4mQfomPvL0djWoAgFNzJPma7SkzcsLdvO8ZhPwBB9wdKqd7U
         n/I9ipj3F7jTiBZqAF3gJMtXx83mHnghyvBIdzS8ArQRRte13o4bIKUkdM+1eoez/ABl
         BQJoA3C5BBgGdLP9kwfvlxTSsPXVgK7CQ/plhE2N5bswwjglOpLs9gR36i8n8QPenL7m
         XEjTrgi70zIyiTp4J5LRGpCxJ8zcmQx/fRFq91TxstPe/7vWIu/qynmRifEhYOGfEueR
         Au/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pV2LPa1H;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-it1-x141.google.com (mail-it1-x141.google.com. [2607:f8b0:4864:20::141])
        by gmr-mx.google.com with ESMTPS id t63si275324pfb.5.2019.03.21.14.19.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 14:19:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) client-ip=2607:f8b0:4864:20::141;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pV2LPa1H;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x141.google.com with SMTP id e24so536295itl.1
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 14:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ChaojSKgvzpct9KLkcKLK60mFBaojDDmHu/t+Y640Os=;
        b=pV2LPa1HR6zKDCYgY/ZpJCbQfpI78P+rtEuQP1ak2b1trdRdDLwVU9bXD//51DKXBb
         o7pQmLSZQHAhgdx/y40ANYkrcx1cbh2y9K9C3feoSiTvIMTbzMhIUi0v91y8oapT8p+V
         1E7T40CYzSPKImwCQq7YHIi/LXCSf0qULfl0RDn/J6Ih4bWEBZ3mgzD5Tn4wZhhaRmrf
         uqb5nsnkRjA3jujn11aPVyf62lbcZ+08U9sRXW/nQbe6CZtGR9XjJCf7VOnV4ntGDmDd
         SUe8LXYIFg0Y1Aour+Nm9kCx8FBW/oQHzAGfiYjcHRbmLwWtiwaHsPhhDIKcM9/eLvF7
         91DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ChaojSKgvzpct9KLkcKLK60mFBaojDDmHu/t+Y640Os=;
        b=A63Wegx/dqv/BRhJM5u6zQc8sraK2Hi3ORSWq8Urlwv/nKxEv+f27mhn1XUmOUV2s2
         oGarQeZzLYgV9hpcJNRz5HZcELE0NQaYOi+ah749f2d+ruevXy9TOInCXvUNiTdtZnOw
         Q/eidSy04AQzQ5XhmaGSFpwVz3V74X+bC4CX2ywYH+QYOxOQZFzR6k2oRFEIunLSAtTL
         0F/5uzMW396sc0WNX44tbgurZ+rxBZfJq739C40Ab8GSUBB0HFkeA6nEywsgjuMR9L20
         H1eNcXWMajLw5Nem7xGlzMyGazej0rl9/vyIOPM7l9IctvZW+5P0Wk8pR5r5xvnB+gi/
         yDNA==
X-Gm-Message-State: APjAAAVi0axW/Lwm/QD4nsnkd8+DYjPi+ppYJRCP1bzUXHgP16+LFouW
	7ecz6xz2MZhlVjmYK09fLg==
X-Received: by 2002:a02:1e46:: with SMTP id m67mr4549208jad.69.1553203177358;
        Thu, 21 Mar 2019 14:19:37 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from Test-Virtual-Machine (CPEac202e096223-CMac202e096220.cpe.net.cable.rogers.com. [99.244.27.167])
        by smtp.gmail.com with ESMTPSA id o17sm2520560iob.62.2019.03.21.14.19.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Mar 2019 14:19:36 -0700 (PDT)
Date: Thu, 21 Mar 2019 17:19:35 -0400
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/2] staging: wlan-ng: malformed SPDX-License-Identifier
Message-ID: <20190321211935.GB17315@Test-Virtual-Machine>
References: <cover.1553099252.git.brandonbonaby94@gmail.com>
 <56aaa0231a140e99ac024570a95c860890c3a58a.1553099252.git.brandonbonaby94@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <56aaa0231a140e99ac024570a95c860890c3a58a.1553099252.git.brandonbonaby94@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 20, 2019 at 12:53:22PM -0400, Branden Bonaby wrote:
> Correct malformed SPDX-License-Identifier so that it
> matches Linux kernel comment coding style.
> 
> Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x_usb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
> index 6261881e9bcd..75acdfc30f6a 100644
> --- a/drivers/staging/wlan-ng/hfa384x_usb.c
> +++ b/drivers/staging/wlan-ng/hfa384x_usb.c
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: (GPL-2.0 OR MPL-1.1)
> +/* SPDX-License-Identifier: (GPL-2.0 OR MPL-1.1) */
>  /* src/prism2/driver/hfa384x_usb.c
>   *
>   * Functions that talk to the USB variantof the Intersil hfa384x MAC
> -- 
> 2.17.1
>

Hi

Please ignore this, it sent again after resuming my VM.
The patch has already been accepted.

Thank you


