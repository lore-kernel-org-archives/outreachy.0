X-GM-THRID: 6803014756528553984
X-Received: by 2002:a1c:df07:: with SMTP id w7mr5780568wmg.7.1584653452147;
        Thu, 19 Mar 2020 14:30:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:548b:: with SMTP id h11ls1556703wrv.9.gmail; Thu, 19 Mar
 2020 14:30:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsxJ7UMvIcENJmoJrkq/OpUTDRG3yVYqWf5PMqMSd4TXxHyxvAhJqZxlrVK55NIynlatGYX
X-Received: by 2002:adf:fcce:: with SMTP id f14mr6629929wrs.200.1584653450922;
        Thu, 19 Mar 2020 14:30:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584653450; cv=none;
        d=google.com; s=arc-20160816;
        b=vu02Cw5rcKoGXgr/W19mRx5yZeuZUnqFXQUmzo1W/3PrZDLF4F8bBSDXFMePpESdbE
         E54+p+v6xYx47ChuybaOl9w+lTKHsFHl3lD9RxwxUTWj/Vc91FhY7r8S0OkDF3Oilrs0
         xJ2GdDaoquRl4EhyRNFX7sXhigDAlSrsg/chqNLzK8jpGwWK+idx4ZwiiXYdYx1hvW+M
         fjZo6mVnad6YjXHQ27NME4gULCy2Q6C+ICulboevjEVJALb+ap/luzjiK8sE2B0zdal+
         X/ozdvyOq3h36Y4Kft4ZsBXIoVqTDMAR6pvN1F14NLoXiTlJ0wWKNFN0aNcLgdDgZcoz
         AARw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=B1LJgZ+5d6u91J+z+TYshExDhHLKa9N3iB6tuTtarsQ=;
        b=p/uZbycRjk38HG+OEQtsK759rEFKpJrZrh24XjeRKkQ3W6QLlyi9Mmfilmn4onIj5K
         2ZxCig47DmGL/vOITXC7y0jZJL7gWZ4Cgw7BtDa3MlPsZVeO4ZxpBYJjWNfhsPQmfThx
         Bm4GLYjAqbIiXByQ0+9gJUCzWcImYxbKtQvO8t+M/uctKeT5IITpHdVVTw+173gtFx0J
         7mPnuWNlohYdjK4uXaespq6bNGaGiSukiGebn4QDZk2JEXZXD5OpRd3uIkSUn8LG9z4f
         1FIbOSAFSdLw1vk0dkmdQLC/QgIUVfIiGq9pnyqiRAvMWBOrMYw7rNRgCvsMI1LA0AX6
         FgZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Jsg6X16S;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id v12si130017wrp.5.2020.03.19.14.30.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 14:30:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Jsg6X16S;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-ed1-x541.google.com with SMTP id u59so4513960edc.12
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2020 14:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=B1LJgZ+5d6u91J+z+TYshExDhHLKa9N3iB6tuTtarsQ=;
        b=Jsg6X16SMiN22nHL50kyDFbg5pKGZkaKlgEw3UyXRa6b1Sc8G088KNU6+Hpp/noQcM
         6rmYlcgG3IQDyf3SdFIISTBwJyaOKpgar7/8zwZglFkX4Ad9uBuXNDHcoDI1YtbGispD
         LLutcmEii/z2DZyfaVX+PVyMAfKNIPl23NwdM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=B1LJgZ+5d6u91J+z+TYshExDhHLKa9N3iB6tuTtarsQ=;
        b=L6TN5bj4CltuntSA+cx9/oFsEf4Ree0iL4ynhutzjbCp1SMgiwU3d3/anDxym3o1oy
         reqWwuJQxjppoIBnuHOXlmx9iNFIjdt3RU07UhgMMWFAzgDX8Z2M7OC4ND7O25OvBblQ
         jrU3Tbr7A80CJoZfwyrdgVQkuIYrRnwKYWOuofQ5jD2hA6iXKhmjYu8URVzK10dzEbfk
         RfuDlqpw705jrtg5KtFJXlBFJ7Ky0ESVhQHVD6/pr0bjL2RR1AtZjAhg4814pPUYLjS1
         iNZ3yzhOHXFZE9VcXCQzdl4Rqswvf2oJKYKtN32hImndrZcv7gMfOvalMaPSpZkAzl9U
         BXRQ==
X-Gm-Message-State: ANhLgQ2aLOmqyjrUQeli4rjDF594e1Mla9pZNiDMJod+ucAlH9ogHQ3Z
	JbotMAahVugV98rsxZtLG/wsnA==
X-Received: by 2002:a50:fc93:: with SMTP id f19mr4889741edq.72.1584653450515;
        Thu, 19 Mar 2020 14:30:50 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id u61sm233367edc.13.2020.03.19.14.30.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 19 Mar 2020 14:30:50 -0700 (PDT)
Date: Thu, 19 Mar 2020 22:30:47 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Stefano Brivio <sbrivio@redhat.com>,
	Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
Message-ID: <20200319213047.GB10911@supernova>
References: <20200313094046.GB3844@supernova>
 <20200316150829.370975f2@elisabeth>
 <alpine.DEB.2.21.2003161527020.5216@hadrien>
 <20200316153629.0fde04f8@elisabeth>
 <alpine.DEB.2.21.2003161543170.5216@hadrien>
 <20200316162343.36bacaa7@elisabeth>
 <alpine.DEB.2.21.2003161631270.5216@hadrien>
 <20200316164440.54fe16a8@elisabeth>
 <20200319201553.GA10911@supernova>
 <20200319214321.2060a5ef@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319214321.2060a5ef@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 19, 2020 at 09:43:21PM +0100, Stefano Brivio wrote:
> On Thu, 19 Mar 2020 21:15:53 +0100
> Lourdes Pedrajas <lu@pplo.net> wrote:
> 
> Can you just run this spatch command:
> 
> > Running (8 in parallel): /usr/local/bin/spatch -D patch --very-quiet
> > --cocci-file ./scripts/coccinelle/api/atomic_as_refcounter.cocci
> > --include-headers --very-quiet --patch . --dir ./drivers/staging/.
> > -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include
> > -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi
> > -I ./include/uapi -I ./include/generated/uapi
> > --include ./include/linux/kconfig.h --jobs 8 --chunksize 1
> > coccicheck failed
> > Makefile:1740: recipe for target 'coccicheck' failed
> > make: *** [coccicheck] Error 255
> 
> alone, from the same directory? The issue (okay, I'll send a patch) is
> that the coccicheck script suppresses stderr for it.
> 
> -- 
> Stefano
> 

It says "274 files match" and if I suppress the "--very-quiet" part of
the command, it outputs many files preceded with the word "HANDLING:".

After that, If I try, by example, this command:

/usr/local/bin/spatch -D patch
--cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci
--no-includes --include-headers -I ./arch/x86/include
-I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi
-I ./arch/x86/include/generated/uapi -I ./include/uapi
-I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 8
--chunksize 1 drivers/staging/qlge/qlge_mpi.c

It says:

HANDLING: drivers/staging/qlge/qlge_mpi.c

But nothing more.

The command Julia suggest has similar results.

Is this correct? I thought it outputs reports or patches.

Thank you,
Lourdes

