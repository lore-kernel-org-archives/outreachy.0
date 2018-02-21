X-GM-THRID: 6525083396428791808
X-Received: by 10.31.147.143 with SMTP id v137mr2308508vkd.28.1519248992076;
        Wed, 21 Feb 2018 13:36:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.73.107 with SMTP id a40ls227624uad.9.gmail; Wed, 21 Feb
 2018 13:36:30 -0800 (PST)
X-Google-Smtp-Source: AH8x224ra33tmy7aH1M9msKNGlvtyDvEUlLO4LIcaxTSlaSEsROJjcfQ57dDcTKL9mCBdK2D5J2H
X-Received: by 10.159.58.214 with SMTP id q22mr2165559uag.90.1519248990971;
        Wed, 21 Feb 2018 13:36:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519248990; cv=none;
        d=google.com; s=arc-20160816;
        b=oDOfmhWIVwIhL1JAvt25GjEuxI7ufH1r3xp+OeMZ3AoKP7XgbfFpgaJ7D3RxP5NovN
         jP2svGHik4cYGY3BuycF132gi+iIeN7hZpnaMlDM225otUPYvC7eIlE8+T3cZv1sPv/v
         jnCLcOg1cmeOMIXljbYYG9cJ1g1I8OMlXsyq+CUt7uTbTomwC7oxv3P7meu847TbYt9w
         p6fvP/0A/LhHXLhfeW8DQlaEsbdLsUb3Nt87GhdTMfO6bGzqyHNCqOiYfep3Ox6MsNLe
         54CAweD0k3g48DMuych3nbg+NAlX8hfjVe7INnz8HrBtSHo293KUl8FSGq+8XzEjDxjz
         SaiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=H1w3B02Gnt1/zZF+855kwLAc7G31jKhnryfOzAw/heA=;
        b=h84A6QlqVFHpv8E69W5iM5vudUZk7ThDhCRztTl+lNlqyWgsBnOi3WeYOawy4qneQK
         F/C2U0KG+M7YSf7QfwMQjz1etE76ymUzpsNxsn+NCZEV0NSLEJRaDU02Qgg2FDmw8gO5
         0wv5S4YHw0i2Q3K75WngBYhc5le6fZTOxHTribUeFHZTORHod4abKk0QAKJgy8Jx+Nt3
         k9+NXyOJyh09WDrdO5RVd3jRi5OQ5TLeSAzq8SoWpNFgrDz6p1MgGjrFAi33lt5KngX9
         lt+EZXmafu8xFXplY081OgdgCQ4LImCQ8NtLH8HEyVgY3kpEsGwCQD5H0OH22bnu5isn
         n1OQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fJfW2U6t;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::231 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pg0-x231.google.com (mail-pg0-x231.google.com. [2607:f8b0:400e:c05::231])
        by gmr-mx.google.com with ESMTPS id 143si579996vkl.0.2018.02.21.13.36.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 13:36:30 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::231 as permitted sender) client-ip=2607:f8b0:400e:c05::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fJfW2U6t;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::231 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x231.google.com with SMTP id l4so1164550pgp.11
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 13:36:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=H1w3B02Gnt1/zZF+855kwLAc7G31jKhnryfOzAw/heA=;
        b=fJfW2U6thOCPnczR7gMEOSkBZCqPCv44vt53aQ72WBhNpgg/xKRgywqoPAPGHHFKwI
         TWZcFHkmgj1S8fTXEYMIOQqlujZ1QymLxg6P9uSwRAeWD1TZXY65CSPLxuqCpm5ZgnuV
         ZGV3pLCJY+gVgkDI2Z1AnRay4CHszWyjjwC7t2m1QHjOEhRTbdmb+dTjMmrJmlzoRq4N
         pQdX/hq47K8BNi7azD8oaV7PSy0LtzBktgjE6J15IWqyLDUx0Nsv9sZ9vT4JHzPo/eBZ
         O3DRTyql4oRsdSlef9k3ayhi6zAPvcFARkeZYx+OyAJ3k6qrsRpq++S7gzTevVKuibgN
         2qOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=H1w3B02Gnt1/zZF+855kwLAc7G31jKhnryfOzAw/heA=;
        b=JgqqD1xTQAr1D3LTBNKKPFaXYDJdruabcgH75hcI2sLX4jfFOg2ebqbwm1IT2BJcB4
         ApRfCQ39HFhsoyVB32Fe795q3IoffGJg1VTQV1dWDx5h5ivnTqxQqmP02unen1h3w8fm
         +Byr5x1TxucdAsykXt9MvNiaeiMw3D3RXDpc87LnsvoahEDgQY6a3i3QXRd1X4kY11R2
         oIFUq2q8s7QlowhdxuJq1JToOKg7krly3t7KuT4FEgCES6EakkBOJvXcvtRJ908dnqwl
         a6Fa1kRK3Bh5KRZR3qQjc+nx08agY7F0LPtDynIi7MuHW5rgrSmoMnvQ3T0C/JJwvrJs
         IZPA==
X-Gm-Message-State: APf1xPCBQFPYzbOKVJ1QcwF9gKa37uQM6EQMW+BZubXAFBH52RScXfFh
	D0U4IDFWekrFj6CEYGH3l3k=
X-Received: by 10.101.93.73 with SMTP id e9mr3858971pgt.264.1519248990106;
        Wed, 21 Feb 2018 13:36:30 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from ubuntu (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id 186sm63585479pfe.2.2018.02.21.13.36.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 13:36:29 -0800 (PST)
Date: Wed, 21 Feb 2018 13:36:27 -0800
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/3] Cleanup in staging speakup
 driver
Message-ID: <20180221213627.GA3516@ubuntu>
References: <1519246723-2977-1-git-send-email-santhameena13@gmail.com>
 <alpine.DEB.2.20.1802212210440.2292@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1802212210440.2292@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Feb 21, 2018 at 10:12:10PM +0100, Julia Lawall wrote:
> Actually, you should put a v2 in every patch, saying that nothing has
> changed if that is the case.  Sorry that the tutorial is not more clearon
> this point.
> 
> julia

I have added the note in all patches. Please check if it's in the proper
format.

Best,
Santha 

