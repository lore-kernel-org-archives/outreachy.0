X-GM-THRID: 6804214248261025792
X-Received: by 2002:a17:906:aad2:: with SMTP id kt18mr180165ejb.204.1584465394198;
        Tue, 17 Mar 2020 10:16:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:c049:: with SMTP id u9ls13903428edd.7.gmail; Tue, 17 Mar
 2020 10:16:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtSMWD198snXzqaZQt94KjbLfbS8voRCda/4OqsryniL/kXc8bp2ByzPMqh6QMveHDhrWvO
X-Received: by 2002:a50:f743:: with SMTP id j3mr6633659edn.22.1584465392631;
        Tue, 17 Mar 2020 10:16:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584465392; cv=none;
        d=google.com; s=arc-20160816;
        b=TEz3jzSm00rkUnl6M2xcQcyIml0H5PBaPLmd1bYa7QtzYJhtSnD3NPh6qgTWbiaNXY
         KtoeFDbxFytg90A8+Xane10XI8Lpqys8uGG+mKsyivEbDNNsvS7XRz5b1gLYamcYhVKw
         +PvGXfi2bR8eD/2P+CGwwxQCjXnjp4cL9KTu5QsyPSuGsbVwsA+cgoTDiOpze21IMqvy
         C6NmYhTrvU2y7ikGi1b5o6pzwkfqTxL4q+j9lfsOhmd/T4KaqLm4ROCoKwUHAES9wtje
         +XqCPTZE6xBgmEtHYA/4ZpjnPheBiDk+VSMkFRg8dr6Tw3PeuNQVNp46xVycXIC0VoN2
         B4Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bwI3c4pzRdpHkGlQiWdpWhb4eePSleRiKDeOaB4hn6s=;
        b=dTQRtaNZ10lQTrwcHAuezsgf/nI+9KnpRp5kE9NTZ4OfhsHaaasvlZE3Gl5WizeRe8
         lJV7qSpOu3P9fdQfAUkJg2w5yqDoVRfjYHdyma8eolve29xhS818WdpG2LwIk8gZuPOf
         iJ0NUBYQ8LSZrAMZYdR10Gz+bdOW5gaIe8j89U4NWp4fLOeWNjXUhNCJ/6BZwx6W5S35
         RolNJAtR2hzy/YjNUNYEmzQ62wwlqTZFABxPrEXD0Aapj7xpVkXtivFD2p8VG2czd8sg
         uR5jQjHnRCdbUfcmVMYZKEQdEYjPBFPN+ns/qRfUisixLunaxrc/AC+aCTvqGz077r/O
         bfvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=NWlG3Whu;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id dc25si173392ejb.1.2020.03.17.10.16.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 10:16:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=NWlG3Whu;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-ed1-x542.google.com with SMTP id a24so27552972edy.7
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2020 10:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bwI3c4pzRdpHkGlQiWdpWhb4eePSleRiKDeOaB4hn6s=;
        b=NWlG3Whuq6OWFrQ1t9EwJFPfuqSMN+gdvgoXi72sJclpmq9KAuaAZ9VW4D57kJP8O4
         arWVyRaAv7cB2VeEa7QLW49inQkF3DJCu4Z2yzFpULFib3yXULLsn7O11E+nma+oU2S9
         bvXGEOL/o0Pi5QDM32D81m43PZJOvHexreYFM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bwI3c4pzRdpHkGlQiWdpWhb4eePSleRiKDeOaB4hn6s=;
        b=IGo06jzNxUQzjKePwCgyQMLg53FCSoyLoOVsX4JUqoYQsD8foEumczMmvR46MDLv7G
         FqQqF3wdJ4DwireWh9uP9O9ZF9z0GOjVBmBKBoNRBmF8cvRq5r1tf4RnwbokdcO5sEd0
         hlEVbjDEyi1n3kZO1gv5+oL0vxD13rqBfXCk2g4LFz+tfszleATDygtVMsm0M/jc5OnJ
         0/pQApY4qn7SxRxKTHVUZHevJOUtX9ulrUcU4S7QHkDWUkR4lmcOVEUEWIJ0eGklI1KS
         RFuBIy2+mhN1OtfW/TMnkKbDdX8g1KtYI84nFrgIIT1mMbnl9nYvHVRw3IaNBq2CoZA1
         3N5Q==
X-Gm-Message-State: ANhLgQ2Z4qLYiteK0cQMCO3nVXjmJRRDAgq5LFYhdxwrsavnDimSzLM0
	jA0/XUh/mttByceNSJxENetctQ==
X-Received: by 2002:a50:930e:: with SMTP id m14mr6155129eda.256.1584465392377;
        Tue, 17 Mar 2020 10:16:32 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id j12sm256528edn.86.2020.03.17.10.16.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Mar 2020 10:16:31 -0700 (PDT)
Date: Tue, 17 Mar 2020 18:16:22 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	GR-Linux-NIC-Dev@marvell.com, manishc@marvell.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: qlge: qlge_dbg: remove
 unneeded spaces
Message-ID: <20200317171622.GA6454@supernova>
References: <cover.1584228792.git.lu@pplo.net>
 <9a7c4bef601322c2c4d58d09b277a4a6ab82bd93.1584228792.git.lu@pplo.net>
 <20200317132247.52f84f6b@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200317132247.52f84f6b@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 17, 2020 at 01:22:47PM +0100, Stefano Brivio wrote:
> On Sun, 15 Mar 2020 00:46:07 +0100
> Lourdes Pedrajas <lu@pplo.net> wrote:
> 
> > Remove spaces after type casting operators in order to comply codding
> 
> with coding?
> 
> > standards.
> 
> I personally don't care about typos in commit messages unless it's
> changes that fix typos, though.
> 
> -- 
> Stefano
> 
Agreed, that was funny. I will take more care the next time! :)

Thank you,
Lourdes

