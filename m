X-GM-THRID: 6749942525265444864
X-Received: by 2002:a25:aaa3:: with SMTP id t32mr8453129ybi.221.1572114761017;
        Sat, 26 Oct 2019 11:32:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c7c9:: with SMTP id w192ls2033589ybe.8.gmail; Sat, 26
 Oct 2019 11:32:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwa1MunEfgebmGJApCDWR2mLnMw5/M2UUJMVzqeAL3fnRNdRNLih6WfXbsLXnr4vaoB0clx
X-Received: by 2002:a25:be48:: with SMTP id d8mr8731535ybm.353.1572114759556;
        Sat, 26 Oct 2019 11:32:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572114759; cv=none;
        d=google.com; s=arc-20160816;
        b=aYZCj9CndpSf0WYAC7F9VuVKgJ6sdruiqWQyYoEyHhkLRoFtcDawlPYswshO/RGoDp
         jWt4gEryvB0Q61O/Zz+UrWqrkqH2SHqa2A+RPPVk/5/88zPo1aNpRHo7pmqu7IifiLYF
         OdN2zfBZjJw0Xv7Mk+3booWquXZd++s90QJ9cUDV41B/eQK4GpQlH1vuV4Dn9nGLtS54
         wE1VEfsAL36SgR28yYmdK801k9G4XOwctfgMqaAJRoi7cMli9ppDxAFWWcWxuaXnWHMc
         ldVPFiq4Jnxrb+nnjsva4GUiLqAkOMUh9zGTpEevQoKMMxFPAnm8U98SGREKAPfnz2pe
         XWcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yDb/bZxBS90S88jsflf7WcUVKtLs478428CKX2xqpxc=;
        b=VK5odsoUpK9ixyml+BxV6xYtmcrEob3uFqdAihCZuN3GmzsKomjSV5E9EHaX3DZlZS
         CYdNm6aoDA3rLeu8dMwVhzqVHadgXyY0aicd0IZ/P5HaZms4RL0igane77S4ePpldjo5
         2Q0Gvjh7n1tlj9Jn8lvzt+PEH1h+VqVxwv/W4NE3ldXceC11PS+1ZKQFWHAherhnaAB0
         Jxili0B+FXe8X8FSrwNdcfjDfZTATry5+apJOKvVTkjmdmrMgDqFQnzH/quvlcOhsjuD
         2pfmh+IiqDol5DwAtg/Qi12URvnEv8he9rWjU/Lr2lmnPfdIup5GDl77t9R7O0vMSYwO
         G8+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gNVqLvV8;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id r185si406542ywe.2.2019.10.26.11.32.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 11:32:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gNVqLvV8;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id o25so8422285qtr.5
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 11:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yDb/bZxBS90S88jsflf7WcUVKtLs478428CKX2xqpxc=;
        b=gNVqLvV82F5TkmzS1t4c1XrQJ8GJfkSJTNdkwzr3YYPvEDbQv6YMX1C6tm8a6RZeMx
         jsTiqznQ4SxlpyZD0FXrULevKbGeCWfsbZoZHCfQGjfPgq5XVstclXE+z9IL6FdQvwLr
         1AQKu0g1ZcxP4aDxcmTJj4Lhdg+OkhIJegZiBN4kL6SkfgBIqjL684wMS74/fVrYvx+Y
         eVC4ITjjgBTf/u4Pjt4JZhm5kobbjAUAV6SxGigjpjG2DVIzmoOonYY3izhEwuwhdsiD
         ghidC4XIK+8eIUZarAh4w35ERhsCvsnhfu7oitNNOosEjud/hLH35jEeGBgJqdRJsAlR
         PvlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yDb/bZxBS90S88jsflf7WcUVKtLs478428CKX2xqpxc=;
        b=keEJDgg/4/Hqhq70XWIiJh2ckRoYMloqdT4ZNhpN076AzOUq2/FaYhUnR5Hfb3I3Ko
         oA21QEPrVXRquSjEolY1Vc4RwVYM/4sN9z+pLJKhVz3Ofs0Zm3VUFYQvb+lVFD9jshXg
         R6u02LbQiJ6HKaua3qwpycuTJImN9KC0m5O4f/qKc2bx8Ebqx2P45IH++iRzSm7OZ/B5
         RYbmJ/UD6DT7jaTfHO3++EOo0uL6WQlN40uFX7GaNFL7A+Pmqt16ubPPNULKKqStweUy
         29Y4XEIzrim1V++H3l1gmiaFw/P5uwfoK9PBiNZ7TjdEAi59HQ1+JeFIw86BgKNefgZ1
         ndng==
X-Gm-Message-State: APjAAAWD0pAO5oNDI7C6rUR5h/mk6Bvu2lbTtxB5/oZOzsRYYRMFcpqI
	f2aqegfNf03jopeU+dSX1cb+Kj6EvkhMJQ==
X-Received: by 2002:a0c:9873:: with SMTP id e48mr9558687qvd.115.1572114759137;
        Sat, 26 Oct 2019 11:32:39 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id d10sm2844318qko.29.2019.10.26.11.32.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 11:32:38 -0700 (PDT)
Date: Sat, 26 Oct 2019 15:32:35 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [RESEND PATCH] staging: gasket: Fix line ending with a '('
Message-ID: <20191026183235.GA8685@cristiane-Inspiron-5420>
References: <20191025233909.GA1599@cristiane-Inspiron-5420>
 <20191026180225.GA645771@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191026180225.GA645771@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 26, 2019 at 08:02:25PM +0200, Greg Kroah-Hartman wrote:
> On Fri, Oct 25, 2019 at 08:39:09PM -0300, Cristiane Naves wrote:
> > Fix line ending with a '('
> > 
> > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > ---
> >  drivers/staging/gasket/gasket_ioctl.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> Why is this a "RESEND"?  Did nothing change in it?
> 
> Always version your patches, as the documentation suggests, and list
> below the --- line what changed from the previous version.
> 
> Please fix up and resend it as a v3 (this is v2, right?)
> 
> thanks,
> 
> greg k-h

The only thing that changed was that was conflicting between the
author and signed-off-by, so I fixed it. I will send v3 explaining this
change and joining the two patches 'Fix lines ending with (' because
they are similar.

Thanks for the feedback!



