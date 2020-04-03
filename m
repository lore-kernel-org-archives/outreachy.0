X-GM-THRID: 6811027108156932096
X-Received: by 2002:a62:8247:: with SMTP id w68mr6964521pfd.146.1585891384436;
        Thu, 02 Apr 2020 22:23:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:9e2:: with SMTP id 89ls5339916pjo.2.canary-gmail;
 Thu, 02 Apr 2020 22:23:03 -0700 (PDT)
X-Google-Smtp-Source: APiQypLdrElQYCOY7CBFzSMNPa68hWcqGmPz077XO6sNO+b2FKOh6l4g53u+ErJ04Yve7h1GIOv3
X-Received: by 2002:a17:902:6bc3:: with SMTP id m3mr6457398plt.27.1585891383010;
        Thu, 02 Apr 2020 22:23:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585891383; cv=none;
        d=google.com; s=arc-20160816;
        b=RnqLtJzLUgY0mkD6a+oAKGLDWVFk+jDFEvjLm5QCAeZRmCqzwmeUgFo0NXE3lkv1iy
         Zrw/+EaykqVIbEC7+qe/KknwVjr94tR3riUpAo3aD1iH9x41cfYiuqxl3MCpJNGETKMl
         jZB4Dc53u1BmsbmoT8NViPODIJgfVYzVNh5VMaDXoQ3HWJzb2SGZ0wRy4/b75CXOObjS
         uN5YiRR2SbGzRyK36ZYQnMZfxN4Q72pZkxfnCUD7ruV3V6+ocvgnS1T0ah0G0TSxblfi
         nNZ2dvybK8zk/LaFDYEYJoVDPAfYiIzgY7L0MS3aUxsJJyk40jVivroEQeJgIlrB4QCi
         kzpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=n7WXYVF47BQJhKtKGzKWSX3ZKkYaoopJSrioAp/OCLo=;
        b=gijX0Om0LzL3LPL4lCNQb2P4sycMTKSgrHcA5SHPQwoGvf1fGv3K9lSGwu1+P+Irhp
         TfvlWHgnF3sUopJJzHRgZTP2ym8vTf9VHOuNLeD6jlnQP4c88NLkr0avJ6tniG+R1OPt
         zu6gWc6I4eSdyZuZhPhKvYe5g0px8dnU1XEXMRqbLqVepxIfOEuGxamX4vzjS/bpHcXQ
         n3QdoF4hWrAR/jcRZjepHYMgTBmWKoJgkVr5xrasLPo6RIm6G96tKxOAMDsP6qjDSvGB
         SA3AGq7eN1BPNU65osVn92Lxe0Ad56ucrweiIeahoP6L1vTII83L4RYgynk0dLUqJrvO
         ub/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BeXTWfyI;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id y1si748571pjv.2.2020.04.02.22.23.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 22:23:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BeXTWfyI;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id d24so2260916pll.8
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 22:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=n7WXYVF47BQJhKtKGzKWSX3ZKkYaoopJSrioAp/OCLo=;
        b=BeXTWfyIUcUIo3bdYXFIoGvDQpVtzgh8P6PjFCA2EQcONphmawZ0bCjzzzty4tyb9a
         tLatqFcezBxaWRxJjkXrLzXCvkSZcR20wtgd0NaBR+QcyWYp/pSaDMEOLp/R662u0dyy
         UuyIU8nBa/tuKOyJqjJNve8cNxVGAsHLh4wb5tC7hr88ebwpaqw2RCDN+GsLr/b4hIME
         QWBS7O8EI9Nw00ZdfbRy7BtEKCzcr/i9JxsQo1326tVx6odKvuz1eSokwkSp1wx05kEg
         bNRNS9O+GMrsiPoJ/V5ZH9+wR7U6dMOJGEdfddzz1rsJCG2bfi7IUvvkyDrqBKHnqF02
         xkyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=n7WXYVF47BQJhKtKGzKWSX3ZKkYaoopJSrioAp/OCLo=;
        b=QBeKIBMUvhTfNrqsyfTGEFLVw1qIT9PDSjVfm9vitle5cNJu5+7mi7tTFQxBrTUXsq
         MdmZn7dDbdOltI8B6ZR7kC8oKLZywwT39Qeba9Jre3jiwLTuivQ01SWozhgpObwYcBqY
         FXDFzbd7KWhQjm2mPfhQtdUbA60tyntB/u+Tx3Vtj6U1IatZcpaNQ5zXxVToi1cwofM0
         zBb6JRt0oQV4yNvJA46OvfQmVMtvQYCQLkh8UEV5uCzUx+7xNMihL4xjtC1AvCXOahVH
         AnDqFPjsDpuiZFoTXvQHF6QokbSJgtwgXyE8gF1dPCy95ez3iGm++7/VhcRFiCBpxSAf
         mTSA==
X-Gm-Message-State: AGi0PuYLP5ARKjKztHYeFWHvjHZfTNjO7YC1C184dV51j9ULlKZIo80W
	Vuz0wJT+DiLxr8jQyCFeOGo=
X-Received: by 2002:a17:90a:c790:: with SMTP id gn16mr7793416pjb.146.1585891382626;
        Thu, 02 Apr 2020 22:23:02 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id z8sm4930568pju.33.2020.04.02.22.23.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 22:23:02 -0700 (PDT)
Message-ID: <d614f0bdaa7be1f839d9f0209743a7c49096fec0.camel@gmail.com>
Subject: Re: [PATCH] staging: ralink-gdma: Move blank line to fix warning
From: John Wyatt <jbwyatt4@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, Harold =?ISO-8859-1?Q?Andr=E9?=
 <harold.andre@gmx.fr>, YueHaibing <yuehaibing@huawei.com>, "Gustavo A. R.
 Silva" <gustavo@embeddedor.com>, Nishka Dasgupta
 <nishka.dasgupta@yahoo.com>, Stephen Boyd <swboyd@chromium.org>
Date: Thu, 02 Apr 2020 22:22:56 -0700
In-Reply-To: <20200402173213.GD3218351@kroah.com>
References: <20200402082309.839063-1-jbwyatt4@gmail.com>
	 <20200402173213.GD3218351@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2020-04-02 at 19:32 +0200, Greg Kroah-Hartman wrote:
> On Thu, Apr 02, 2020 at 01:23:09AM -0700, John B. Wyatt IV wrote:
> > Move a blank line within a struct to fix/silence a style warning.
> > 
> > Reported by checkpatch.
> > 
> > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > ---
> > Note:
> > ralink-gdma does not build; even with make allyesconfig.
> > I did not find a menu option with make menuconfig.
> > 
> >  drivers/staging/ralink-gdma/ralink-gdma.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c
> > b/drivers/staging/ralink-gdma/ralink-gdma.c
> > index eabf1093328e..9c398048daac 100644
> > --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> > +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> > @@ -122,9 +122,9 @@ struct gdma_dma_dev {
> >  	struct gdma_data *data;
> >  	void __iomem *base;
> >  	struct tasklet_struct task;
> > +
> >  	volatile unsigned long chan_issued;
> >  	atomic_t cnt;
> > -
> >  	struct gdma_dmaengine_chan chan[];
> >  };
> 
> That's a funny style warning, and this patch isn't correct, sorry.
> 
> Please see the archives for the many times this has come up.
> 
> Remember, checkpatch is just a guide, it's not always right, you
> always
> have to use your brain in considering what it is telling you.

Understood.

I saw one of the messages in the archives, but I wasn't sure on how to
address this.

I have submitted a v2 that just removes the blank line.

> 
> thanks,
> 
> greg k-h


