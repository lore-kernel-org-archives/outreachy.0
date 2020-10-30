X-GM-THRID: 6889248551394607104
X-Received: by 2002:a02:9543:: with SMTP id y61mr1034355jah.64.1604044645198;
        Fri, 30 Oct 2020 00:57:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:a981:: with SMTP id q1ls684318jam.4.gmail; Fri, 30 Oct
 2020 00:57:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyxiJpS8e9tfnISyf+50TpLNQXBY/8HJYiMzWZLGR7qDyv+xbim0SvD5G7QBJAnuvLrbICM
X-Received: by 2002:a05:6638:1a2:: with SMTP id b2mr1014715jaq.118.1604044644137;
        Fri, 30 Oct 2020 00:57:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604044644; cv=none;
        d=google.com; s=arc-20160816;
        b=ocqayPd7+/0EHmCeVeelhqfic+h7bkmMYtPrmJwP0DUT1zi04qE+1zBX33Aaol7TPZ
         IrUriShEMEjvpj21ktQXRQb4+5I85dyQGmye+Nc5FxcJgiI5ulxePyekuyhHzWKZk0Kr
         RmiLcGmuthPsZrf1J/5G3KCZkBNdwUMdzNcZFtQZCpZMt4fgs2mPVMMH0jjDfSmyuf+f
         C9OcGY+CBRFvwEC6F/eecrNmneJ0YoX3mWnynD9WvicUYpZKzxqZXyxBJOSbMM+/waVC
         RpwIME7XmTODPwKRMVnZPJzwXUn0cDKVZJXEkZ8zmu2cH2bekVpi2ORH6Bss2qVU13h5
         wmYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=muDviu7LdHJg+SSfbczNSfqTYUnVpBS3s+/TDHUMTTw=;
        b=FK5ZmfbEI1ncQhgzmBKXZ51NwVOQJJq+9TjYLDSPXsB60gBqZJuT6rWuEVZsINm4rI
         natN6zic6g/hryIc65pmJs7pNyFMwS7id8wWiF83BGiSECE9lzPB/VO2V9nGkXIBHkny
         FDmWklxpVoaDIf8nD6NHFDmPKseWmmx0brXApqCThAuVwSHEY4AtcpuyY4blFlrZxbj8
         ZmMJJbX/ZXO/LfMuyQCFnvj7txG3V+7ekoBpNi1etDdKlqgnLaHlbudDDHjPR9Ptw16m
         Nr0CcVBz3i9H+jmTXZmtKSE7LHhhvp0asB0p7EoMWFyZRg2JeRzk8LVzordr2uJpMx6R
         WvIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jgIk3kQq;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id p5si315807ilg.3.2020.10.30.00.57.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 00:57:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jgIk3kQq;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id k9so2832025pgt.9
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2020 00:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=muDviu7LdHJg+SSfbczNSfqTYUnVpBS3s+/TDHUMTTw=;
        b=jgIk3kQqh6b5u8IMVHEg6AdHPuuke3JzirHkuNrOCCNKpeMK257DsLUoeFprqFh8Sz
         U+jweagDc8j2KnmzKdNbiv9B/CABxAw8RwQf2qsGFlB8ClYhnXz/4xTlrrK82ReaaXCY
         FyF8uYsKUx+Jsg+bWsN1VQ2OguKv7klzVR3JjwRuXzccW0KIzLmXlexdRAiUVePEvg44
         K27mHToHsf5LnJ4r4314ZbAbDvHCgXXPKKlXuyksDHrUVcrenfOVSAOwGtxPk6Z7MgKb
         3S6OHQKikdKPcJdpZz8QZYr2keQGpGGu2LplB/t9syqbHEhtrSYrpkZLRBg5RjmtI/cC
         djBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=muDviu7LdHJg+SSfbczNSfqTYUnVpBS3s+/TDHUMTTw=;
        b=TXMnJ8vhLi1eIRs08yolZ7Me7suclsnv+6x6Dl2mCW+oHEHYXwzzYdPn2QT0l6SGwc
         CTmTa/NL8e1XSXRTx9GqPWYZJVccQYGF6JqEkf3Cbx7F1nR5lMQhgHr32eeypjxoRDAj
         DFs8glYlIBaGlT34ToN61uRtVX7nltN6mIRP9qxzTcvn1ZbxY8Yr2m6IazLRF6cv0+82
         mhVPFhypRAKAvj3B4iouJ/U+yzUjcKc98LmJZop4uMVle35uWWjZYvMj5WjFhSOZbWKO
         P1dsGj/I9F5yUD0N3nHx+DRfGIjnMoyINLUwH6cxwWcFm9AwN2h/6jRCMpUKfLxllBA3
         Tk5Q==
X-Gm-Message-State: AOAM5300b+jD+p1Ab7mKtev4frKFYfoQ6ESfiVD5Q11Gah0PfKmR1qM7
	qeymBKb5utUceqWYCOGNe5s=
X-Received: by 2002:a62:6044:0:b029:151:1a04:895 with SMTP id u65-20020a6260440000b02901511a040895mr8132347pfb.34.1604044643581;
        Fri, 30 Oct 2020 00:57:23 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.98.79.70])
        by smtp.gmail.com with ESMTPSA id j5sm2253085pjb.56.2020.10.30.00.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2020 00:57:23 -0700 (PDT)
Date: Fri, 30 Oct 2020 13:27:16 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, melissa.srw@gmail.com,
	daniel.vetter@ffwll.ch, mh12gx2825@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] drm/amdgpu: use
 DEFINE_DEBUGFS_ATTRIBUTE with debugfs_create_file_unsafe()
Message-ID: <20201030075716.GA6976@my--box>
References: <20201030032245.GA274478@my--box>
 <20201030071120.GA1493629@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201030071120.GA1493629@kroah.com>

On Fri, Oct 30, 2020 at 08:11:20AM +0100, Greg KH wrote:
> On Fri, Oct 30, 2020 at 08:52:45AM +0530, Deepak R Varma wrote:
> > Using DEFINE_DEBUGFS_ATTRIBUTE macro with debugfs_create_file_unsafe()
> > function in place of the debugfs_create_file() function will make the
> > file operation struct "reset" aware of the file's lifetime. Additional
> > details here: https://lists.archive.carbon60.com/linux/kernel/2369498
> > 
> > Issue reported by Coccinelle script:
> > scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > ---
> > Please Note: This is a Outreachy project task patch.
> > 
> >  drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c | 20 ++++++++++----------
> >  1 file changed, 10 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > index 2d125b8b15ee..f076b1ba7319 100644
> > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > @@ -1551,29 +1551,29 @@ static int amdgpu_debugfs_sclk_set(void *data, u64 val)
> >  	return 0;
> >  }
> >  
> > -DEFINE_SIMPLE_ATTRIBUTE(fops_ib_preempt, NULL,
> > -			amdgpu_debugfs_ib_preempt, "%llu\n");
> > +DEFINE_DEBUGFS_ATTRIBUTE(fops_ib_preempt, NULL,
> > +			 amdgpu_debugfs_ib_preempt, "%llu\n");
> 
> Are you sure this is ok?  Do these devices need this additional
> "protection"?  Do they have the problem that these macros were written
> for?
> 
> Same for the other patches you just submitted here, I think you need to
> somehow "prove" that these changes are necessary, checkpatch isn't able
> to determine this all the time.

Hi Greg,
Based on my understanding, the current function debugfs_create_file()
adds an overhead of lifetime managing proxy for such fop structs. This
should be applicable to these set of drivers as well. Hence I think this
change will be useful.

I will wait for comments from other experts for driver specific
consideration / behavior.

Thanks,
drv


> 
> thanks,
> 
> greg k-h

