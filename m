X-GM-THRID: 6803293292760924160
X-Received: by 2002:a05:600c:2942:: with SMTP id n2mr5426758wmd.87.1584030088838;
        Thu, 12 Mar 2020 09:21:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls3182809wrp.11.gmail; Thu, 12
 Mar 2020 09:21:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvb3RL6oyw6pdIrCo7MB7CVe0gckM3A18TJFuzSavweT1QLPyHnzsqY4eHcbbhe8R+gozHo
X-Received: by 2002:a5d:660d:: with SMTP id n13mr11288031wru.383.1584030087545;
        Thu, 12 Mar 2020 09:21:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584030087; cv=none;
        d=google.com; s=arc-20160816;
        b=0Dn9K5oSCGiUYI8GeLXu4+IkGld6ENrv1EWzcwZqLcak22GbJwdwD/ROIyTG0W4xzh
         V3ISVeq3Kl/eOpbwFMzcaXuSqUYQfJDoFMdKGPYQa0jh7x2fBKGptG/DiMGBC4u8wP5j
         iSHIG3zkkyg06F4ebJqZjcswEJJ0+alO9SC1zv2cgzT8201hkq05YFVBdnId6scyYIHL
         c1EzyzUnCMxLd79DY2SVkmFiufnNMbquyYw5DIvoCzPCxtb5ave2liE8LqWnBgTCDywm
         kKPv+9L2RXv6mmpmaFIX3J9TN9A7Tkcb90txer39+E/1hMxBTVS/78q67X/Yfi3bt3tO
         Qg7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+Tv92ERSbqbjxIf/0c7NMX0YHd/XVFywVCeQfVG2uLw=;
        b=w/3Qh3I66xlH2Mv9VJBFSRZpdkEz/0zaA+k6Qol2h+xLliFi4KMuYJJB32TNdWfFDd
         RRI/uMOk2oIW2OPau6baKc2pJjiJE1bG7Mhl49pgxWpYPBU19Cy+qdW0Gfxl/juiw+oB
         WJh6UxShbcrUhNDNT+bLpVuuzwFOKhWEJaBAHPIlQAXGWeL04FpJfSUX4qTQOX7ZgaXu
         eO34G7orqB1aSpV62dWficsphoOcDtdVy3ER1KBeOfjmSoIDguJPjIDSZBmB/Hb3XJDA
         rAbOcKrfmDQCMFUdfLyuWPDUHr8kAafAujxu5RhMpr9+CBqNLKFqhhGLUHKo091ie/ES
         Q6mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=QdzBamMl;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id h15si501450wml.4.2020.03.12.09.21.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 09:21:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=QdzBamMl;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x343.google.com with SMTP id g62so7041349wme.1
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 09:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+Tv92ERSbqbjxIf/0c7NMX0YHd/XVFywVCeQfVG2uLw=;
        b=QdzBamMlR3P/GnBtsin/mMeJL8CFYEyXo+jyWTlk1bZPeh7XjGXSi/GkDO4YhH+i6Y
         Z8v3nPaLp8/5EJssygUUnYAIiJxRxetrAP1QUYz6iWihsD5tmNUelxTtvoNWRaoP4EH9
         rrzQBSYCn85PEE9Q8WN5Gsr6+AM9OBTKDWKu4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+Tv92ERSbqbjxIf/0c7NMX0YHd/XVFywVCeQfVG2uLw=;
        b=VyJTn5H2QmUxYplsSRV8cPDZeP0gnbP4nyWnRcXqfoi9s9RXN4W+FXs7gglNFHTfqV
         3rnayVF5rYtjG95VDGl8cMqT1I+ix8io8RAeXz+uKaVcRqZbmdjTRwueAINJqC7huu7h
         9nCS7fFdOlO01rnu8KEiUSkQCwR5CAQNxkbuCNlt/nRgpY8cwXpAlDVPftaN3twbd4fi
         0afaLXBsqB7umde8E4zw0+cfTAgwI6iHRmG1BLME8xmwMgwa/+9SSxBiI1Z1AnwLYoVp
         qBZfwqt4ZIRBy2BD1WmeP2loz8kGN3HTSm54sY69wKLSFiHzIUHKhaBlQKAJpw2t/hVG
         bYaw==
X-Gm-Message-State: ANhLgQ3s3FjDR/iih2NSsMfICU2D2YsJ1dO2p0fy1wpAaQOswG3YO/lu
	X23TFdpECcUJJ2uxTh2BPKxu3g==
X-Received: by 2002:a1c:df07:: with SMTP id w7mr5397619wmg.7.1584030087216;
        Thu, 12 Mar 2020 09:21:27 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id g12sm1017886wrm.87.2020.03.12.09.21.25
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 09:21:26 -0700 (PDT)
Date: Thu, 12 Mar 2020 17:21:19 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	vireshk@kernel.org, johan@kernel.org, elder@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: i2c: remove unused
 pointers
Message-ID: <20200312162119.GA6485@supernova>
References: <20200312121222.6609-1-lu@pplo.net>
 <alpine.DEB.2.21.2003121339270.2418@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003121339270.2418@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 12, 2020 at 01:41:40PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 12 Mar 2020, Lourdes Pedrajas wrote:
> 
> > Remove unused pointers in gb_i2c_functionality() and int gb_i2c_probe()
> > functions.
> 
> There is no connection to gb_i2c_functionality.  Diff doesn't provide the
> right location information when the code extract covers two top level
> entities.
> 
> You can refer to gb_i2c_probe without the return type.
> 
> It could be helpful to mention how long this code has been commented out.
> You can find this with git blame.
> 
> julia
> 
I agree, thank you, Julia.

Lourdes.

