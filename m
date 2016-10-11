X-GM-THRID: 6337746804060192768
X-Received: by 10.107.181.144 with SMTP id e138mr496531iof.95.1476145755129;
        Mon, 10 Oct 2016 17:29:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.98 with SMTP id 89ls405261ota.5.gmail; Mon, 10 Oct 2016
 17:29:14 -0700 (PDT)
X-Received: by 10.31.3.105 with SMTP id 102mr294686vkd.30.1476145754652;
        Mon, 10 Oct 2016 17:29:14 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id p70si101834vkd.0.2016.10.10.17.29.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 17:29:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id b186so255289vkb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 17:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cQ3gMbiXi4RndAUrgsmm6uBhoFBxjv2LOmvt9oftf64=;
        b=AKfa/mvDzp5G5YwoJcFttdBArl7Q9RLRUXe8GaLQWCi29+/ESUwbyfCupNdN2cgnZn
         G/km6vBiGavxmvGzeqOIDxHQJ2/Wna3r/wQh60X4QLpmTCXDfaLp4GqulKx1p/KMQMXh
         ExtaVP9a++nKB3VpC1W3Ff0gt2U4Zn9AMIqEqD+1Hhen/dPXWq942lWFhpsahd2Egqpv
         t+nNiHpruBfKiLt6VEDavmPfs9WHBYtbs3j8voV8kFT5EhkGNB1LC6aH160tY0IguNbJ
         2u7TeXaWe792V94BPVZOLLW1z48BaHlvea34NbhkTlb+A23JYEZs3MHYx8KpFH9BYnvu
         n61w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cQ3gMbiXi4RndAUrgsmm6uBhoFBxjv2LOmvt9oftf64=;
        b=G/wAqNp66un1SvfNqlTxfIyrMjwmSmLMKJQ+5fG6dV5ohVfS2ewJ997USWVfIUSFw4
         bZ9A29TA4Dvhr7Cotz8yKcU2a//ReOWQyZUdFdIuwgPv2mf/AW763L90BqANrlbjwP8x
         FpUOj2sRaKuhj/XmK9xDaLwQFahxA96iHuwDr2gRsrWeqlrou3SsOmFl6Ov9tppKOd+c
         lrbeQBisfv4uFbvFyTK7REd789D/nAg2pBObdX4aE7nEKfDCPLXLOSMRv5oi3FvTeLs4
         vafpqb3285c4ObeH/DGuYC07mcVoet2yCto25LBYSoeSMMjdpiCNwySFZvqN188voFn1
         j/hQ==
X-Gm-Message-State: AA6/9RlLWty0l8bMp7jWOOs0bAIouoIwdQXOhqvzxVrefUCIkbKlT46NhvW3xrzo0M7k4g==
X-Received: by 10.31.242.130 with SMTP id q124mr871788vkh.134.1476145754491;
        Mon, 10 Oct 2016 17:29:14 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id q135sm345984vka.8.2016.10.10.17.29.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 17:29:14 -0700 (PDT)
Date: Mon, 10 Oct 2016 21:29:07 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v3] staging: sm750fb: Replace
 printk() with pr_info().
Message-ID: <20161011002907.GB16781@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

In-Reply-To: <alpine.DEB.2.10.1610090748050.3134@hadrien>

> 
> Maybe the information is available in a function that calls this one, and
> you can add an extra parameter?
> 
> julia
> 

You're right, the function that calls it has the device pointer.

It already passes 3 attributes of the device by value, I could pass
a fourth one to use it with dev_info().

I think that passing a copy of the whole device struct makes the code
clearer, is there any great drawback of doing that instead of
passing only the 4 used attributes?

thank you,

elise

