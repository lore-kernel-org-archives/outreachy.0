X-GM-THRID: 6746422022313607168
X-Received: by 2002:adf:82ad:: with SMTP id 42mr11718051wrc.209.1570784399270;
        Fri, 11 Oct 2019 01:59:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:c408:: with SMTP id v8ls2315097wrf.10.gmail; Fri, 11 Oct
 2019 01:59:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzFDL58XWcwCIb8O1By+VWCjmYiXr529yTwUFpYTVDK58Umh2P8+Ho9JI9JFtgFBkzo60K6
X-Received: by 2002:a5d:6a4e:: with SMTP id t14mr12688327wrw.286.1570784398208;
        Fri, 11 Oct 2019 01:59:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570784398; cv=none;
        d=google.com; s=arc-20160816;
        b=uQ49++zmrCoQr71Cewl45OC13nH+2K7BA3+bL4Cczl3T9pi4dlihdLhlEU4yewTRYp
         ws48ioK+P3HjZR1ZfT6uLgRGpPJQqIxq/n9s6g98vSAA8zsDVCQJ07RrcN6dde2l2MYN
         IQ6HgMM36V9BzzGJsF02cBf2gj7cBPqF1FPK2Tw7bSMfUK7WSlEy32ZW9HrqgK0tUZQm
         v3WOlUXof/Cbn8Qyt9zkZ4ZF/ijKYfhxcVAOACn+x+yHH6iBUvRhIX9Pmmothn2BfkOT
         /TgS57aLMIIHEUG2miHTnK4dNKS5PtPQvTjLB2+VgML87NvUdch4/U/dawoZSEAn4BnK
         Jp5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=VxVxglgeL3qKEjfGtgRUEcui49ts/sXRyc9+Ru8EifA=;
        b=1JiYXwYJRyKXL5LfdWedr3DgXFOYGcAXB1A5E+A18Er/DCqz1XwIprfbBfdeXrKElC
         TQ2OefrvNHWWvTVc49J/HLlm8uIHKclMmNR9kTKrftS+ldSitR5vBzUwdX3HCNQjcinl
         TeO39yoY0X2KggThwUhd3ouqJdXReVLr6uQ7C/26Uu5eLtsDxt9lUbQXq0ThPdxZ6ne1
         VMcRLdIJtMKzMpOrvPpwtOvyt5p1VXjPWOyIKbIxl18fYY/JwF9CPNAwLK5iwDSTHqY4
         4tNPjmeZ1ZhvsChsYx0EYm/fCjvbngExEPXDLKCbIU0qQbL1dO6pop3zbsSTUHkOxYQ/
         X3Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZYC3+Ay0;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id p5si384667wmg.0.2019.10.11.01.59.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 01:59:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZYC3+Ay0;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id h4so10984416wrv.7
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Oct 2019 01:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VxVxglgeL3qKEjfGtgRUEcui49ts/sXRyc9+Ru8EifA=;
        b=ZYC3+Ay0TTFta5z+ySOxT1yy5LpFRPW45F3DLzdLsSnFcssZD5FOIoGQzZIffj9PRE
         Xp7tSexxRRmFAfnkZnIO/H9xELp4WVgYngxAfGg8CAkMhxaspm/T7nIm0G2TR3GBanTM
         HqldEpDOP6i/fQq5iP7PdzKUQ73+2B+htlySlLloN30Ckav9CMDVbj8L/1jq8qHlMuEz
         YSYFbHAkouAl/MqRdWYzltEq+OMpzt0VkOObZO2U4wKuaPGaxKGOQoWrgL6uV88JNJd/
         sUUF0JmM2ZIyFw0Yiq/i0uyoqVA3RTqSFnfGEK+4ptYDsw83NTiLM6z1t2Wu9kKgKTSh
         Y0CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=VxVxglgeL3qKEjfGtgRUEcui49ts/sXRyc9+Ru8EifA=;
        b=YBmIpijWfzgfrz55hCdhY/BiAl/+BZUXl0pJ3o4j4rwlc/REqjR1Rv/MpchwlLbfX5
         11lQ/Au7rTd3zAIU4tN9dyfOfmBh5CKLuOAR/wP4xLOMAPiyjZgxQId/7IfeFAesh0Pv
         wmkNHKjNCyQnofyOaJPwpmB+yNpDg4S3X2VKZVyxoAivZasv37kexMf3qLnCuUMQr1dB
         vvjbgJ53r4c/m0tiLzGnavbogy26GzxQ9Ep2SmidJL4116x7BkJQoDYtwExo7BFDpwjy
         3V3CYEwuW6p6cAXw1ZafxDRK8o2Fa/Rx5dxRgfcqLWIedtYdjx4C1e2B8aw7e2xXRATA
         b4kg==
X-Gm-Message-State: APjAAAVop8CyvbGQz6NPQagIE0/KlYBin865lCy/9MjR5f54kAlb7QiZ
	jnbyQtSrVB1f1iflLbfF2wM=
X-Received: by 2002:adf:f48c:: with SMTP id l12mr11609168wro.99.1570784397867;
        Fri, 11 Oct 2019 01:59:57 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui ([197.237.61.225])
        by smtp.gmail.com with ESMTPSA id b186sm11494222wmd.16.2019.10.11.01.59.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 01:59:57 -0700 (PDT)
Date: Fri, 11 Oct 2019 11:59:52 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: octeon: remove typedef
 declaration for cvmx_wqe_t
Message-ID: <20191011085952.GA9748@wambui>
Reply-To: alpine.DEB.2.21.1910110817340.2662@hadrien
References: <cover.1570773209.git.wambui.karugax@gmail.com>
 <1b16bc880fee5711f96ed82741f8268e4dac1ae6.1570773209.git.wambui.karugax@gmail.com>
 <alpine.DEB.2.21.1910110817340.2662@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910110817340.2662@hadrien>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Oct 11, 2019 at 08:18:25AM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 11 Oct 2019, Wambui Karuga wrote:
> 
> > Remove typedef declaration from struct cvmx_wqe_t in
> 
> You can remove the _t from the name as well.
Should I remove the _t from all the enums/structs?
> 
> > drivers/staging/octeon/octeon-stubs.h.
> 
> It's not really necessary to give the name of the file in the log message,
> as it can easily be seen below.
> 
> julia
> 
Okay, thought it would be clearer for the commit messages/git log.
Thanks

