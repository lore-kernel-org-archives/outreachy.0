X-GM-THRID: 6803294176512311296
X-Received: by 2002:a2e:b018:: with SMTP id y24mr6238816ljk.146.1584046637831;
        Thu, 12 Mar 2020 13:57:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3188:: with SMTP id i8ls1082456lfe.4.gmail; Thu, 12
 Mar 2020 13:57:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtXcQ6z5yJlDD0UzM4E3HX5UfIXuQN92jXoMnzQdgwOrhZxdtgRWas6xPszaITe4Gju6GEP
X-Received: by 2002:ac2:4316:: with SMTP id l22mr6365877lfh.150.1584046636054;
        Thu, 12 Mar 2020 13:57:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584046636; cv=none;
        d=google.com; s=arc-20160816;
        b=L6IkUvbL+7H1P0WjkJ2yZPwu0gKI2EzOPygi1IaJQcmMsNk145iam/sRN51LOEG2zK
         mh1A1Tx2KSGnVCxM4G5VemNEhlTZbXsmei5sIPSj1S1O03C+3CHu0HRs2f6bE6/jwwBq
         cqW552jyOao1kHl1TvP84jF5eTQbt2Bgw0zJeQ2zzJnEqondBt0pXMUz1/50fr1Lq3Vz
         Btsxg+5Y8hYjXcPVYEwmcHkv7y+YvoALH15VlpNe2LyEyA8ze0YbIBg81TXyVCqP1sf8
         JANNY5gJ1TkJXfjKqTQkRdEj+/f/M6HPE3E+ZiXhksE6/KCsnv94Rt1EwFetUxts0E7I
         NZ1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6378GH+VagTsYawhUyrEPK4Z6phFHe6sPuhEY8Vyqvw=;
        b=sq+gJnULPxeV9lzbrtRkZ2cRxV/OB+KoUw2PeUZlXUoaX6N89SBWbEuFqyJZKwOoAw
         s87TYdsgDzw5ugHaT7ACkWTsaeCH73hubs2b6DN0iHEGFP0Skm0P5kA3R6oPj9wV7mYr
         fg9rpO5klOzhXWRtGUnqr27xO7MbYYESFt8r5QxvBSCO3BCKqcJGdWrbDzxLGpqTWs1Y
         6W0XLGANWtH/byANV0N6GN9Uo5L1lu8UkLdEs6OMwMODINQZhkMwt/bu/U3rZgh97EcC
         3yCUh9XmSkJn3W+SG2UXO5VNfqQpKgr0aLxZkDhFCWKfwmsI2v/WJFL+zDZVKQcH53Sm
         4oaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=SbJLUxPf;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id u8si306790lfu.3.2020.03.12.13.57.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 13:57:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=SbJLUxPf;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-ed1-x544.google.com with SMTP id df19so3040686edb.6
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 13:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6378GH+VagTsYawhUyrEPK4Z6phFHe6sPuhEY8Vyqvw=;
        b=SbJLUxPfKdTZNV3qy+jgXI4Jnt6h9vWi6S6ZnlUkSLKukGJ1R3s11B5XATjQFWOLSK
         CMYUX/4niohUP25lyG6/T56/ipvNYWjORJPst7pA1O8SelMIESEC73hY3lVwL9bX4V9W
         KelBgHItQmBD4q5FpH61m+gqTU0kHxD658z+M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6378GH+VagTsYawhUyrEPK4Z6phFHe6sPuhEY8Vyqvw=;
        b=JwWT8LL9zqhzO32UplkEcwogsq1SbRMxpYf3LUYTaDu2z5HgKsYDYcPy9frqCI4C9x
         uJFmkERR1aLfyfl326s4TJVb37DEdyEP6COQ5RWaWDSMshr+E1Ihq/fvEzi8y7PMT17l
         l8L5/PEC4z60fVb3iKsuByWzW8xvpAnaa1gZoBZ8c0iLnBNkKq7HbEx+1B6hh2kFl4mq
         QGTF6v8CmAZtS0VnHp+c9NfQukSjGgBkCyVxrg7C3oooB6twPa1xm59E6Bj1/CHD9b5r
         wgqrhNiRNrseXONVHWuMTnrBxbyFMsRX13Th9RZNwG3n5rXe2dhhM++PIQIlvClUeUXU
         NVZw==
X-Gm-Message-State: ANhLgQ0aj1XomtLDYIWUoCr/hWS00rB3jTxt/TW4l3B60OSYNq/Eqx9W
	IVfRu94OntwXmkuQLXUvWknEjtD672Tu+A==
X-Received: by 2002:a17:907:4241:: with SMTP id np1mr347171ejb.247.1584046635310;
        Thu, 12 Mar 2020 13:57:15 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id u20sm143839ejx.80.2020.03.12.13.57.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 13:57:14 -0700 (PDT)
Date: Thu, 12 Mar 2020 21:57:06 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com,
	matthias.bgg@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: mt7621-dma: mtk-hsdma: make
 a variable non-volatile
Message-ID: <20200312205706.GA9113@supernova>
References: <20200312121548.6719-1-lu@pplo.net>
 <20200312133112.4f61c60b@elisabeth>
 <20200312194329.GC6485@supernova>
 <20200312204316.GB590925@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312204316.GB590925@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 12, 2020 at 09:43:16PM +0100, Greg KH wrote:
> On Thu, Mar 12, 2020 at 08:43:29PM +0100, Lourdes Pedrajas wrote:
> > On Thu, Mar 12, 2020 at 01:29:52PM +0100, Greg KH wrote:
> > > On Thu, Mar 12, 2020 at 01:15:48PM +0100, Lourdes Pedrajas wrote:
> 
> If you are new to programming, I would focus on other things.
Thank for your advice.

> Concurrency and locks are not exactly "simple" things, but they are
> essencial to learn to be a kernel programmer.
I know, I am willing to learn it. Thanks for your patience!
> 
> good luck!
> 
> greg k-h

