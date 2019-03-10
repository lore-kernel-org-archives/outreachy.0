X-GM-THRID: 6666842031928639488
X-Received: by 2002:aca:3409:: with SMTP id b9mr24418519oia.29.1552246148700;
        Sun, 10 Mar 2019 12:29:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:2c04:: with SMTP id f4ls4747098otb.1.gmail; Sun, 10 Mar
 2019 12:29:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxiRakRug16kA31hHpf0ikNJsGWGFN3blv4Pq7d89jl7e8jz7hnSPrMw3lqAtQsh8ZaSwMQ
X-Received: by 2002:a9d:ee4:: with SMTP id 91mr16209732otj.50.1552246148251;
        Sun, 10 Mar 2019 12:29:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552246148; cv=none;
        d=google.com; s=arc-20160816;
        b=mEQ19lczVmWjJ78vHEE53+/AWsVsWNy6m1c/3pltiHJT5b2HbzKjSas6PZiHG073eM
         Yn0qFWX/HkH2X6py+so7z00fJ8pLjUgLjdwUeQHTj9Ig0Q+BMf39zhH2UYO3ca7EGHsA
         CiF8GV4VSWVdXkPqrgYAD8lxpJbzQuOeS+BCqhDz8YWOLjUprBSBD+uZReKpQX1IFTFB
         TC/1oML5MA+HruF79sQZLjlhRmcmUtvHwj6dp1ZjebRw/vpsMWYo2dBuP/moV/Tmj0Jf
         PLtNPJLblfBueWYrmIeOqZ+Vp9kcCAsBBbbLuxN8YqfAEZWkp4RsfmL/laPaDdD6B0y6
         kAhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mtNNxYq+PhozdJEwBtdtPEiAIMqu9Uqv54rH1GZtLB4=;
        b=Ryrg2sGZUQJFt1CAO/3wH23YqDTHF1p+ufHIK3DbC8rHMKljysQdELtpbOsO/F4RgJ
         1aJVutOpB/hcCYWGJbcont6/vcHVPjD9OCcX768JDguAzH2RXvbszijrvpja6kAh1RPy
         i0MV0phJq9ziRnEvC6a6U5Mce92PvKC9E4i3g3eNSW3LjN1yZ108no+e1x4ZV8srVMii
         bc/hoWInAd6WN+6e/Rv810q0RaN0pFh5QlrVcyTU0EoA/OTkt8ROvAeynqnNwskJq9vu
         mJZxX6xMbd1Lw/jH5bfnOJS0jedaDjsYr3PBUAWWZcReC0SS2aOAuhb0tgFGHDkZ6r4K
         DPNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W5rSrdHK;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id 135si243405oia.1.2019.03.10.12.29.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 12:29:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W5rSrdHK;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd34.google.com with SMTP id u12so2158856iop.11
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 12:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mtNNxYq+PhozdJEwBtdtPEiAIMqu9Uqv54rH1GZtLB4=;
        b=W5rSrdHKV63QwkgiUSuXTEXss3qRKAe5qFdCAFAGJlM+CipbPSGCjtVKfnFYjWlv4G
         +WSvtObrxXlEfv66ngEg37lBv1WykzXYEC95hrQVAaYeaGmwNP14OBeJT1mbZvKgRIVY
         m7zpvmzIXzJ/HEiGXCtkHFwCEHMCCL3abLTX8AmdlDeONjHfjrWKgJqV++npveeLcE/u
         nsAt9PysoJYsJZidf6GdrWAp2tstGdWh7bp7yFB2OVveqxBvNg2lvjIkRxuza/CiIH84
         D6IVJzLQVyp5z5ITiK7iszOT/P3TcXMVjsjZqyevCceZIvWubvDEAXV5L0nLq2t3RTYv
         DEiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mtNNxYq+PhozdJEwBtdtPEiAIMqu9Uqv54rH1GZtLB4=;
        b=MtEf+DuYVjcrORDyGtcUTRlsQkNRXLKMHnW9GBelcHj4IeKoTqHZZm2TsFnreQI+Yq
         JW7ThJDfeoS4peTPiDydtDHqIpLAwBR2dC+ubtEUWK9ttLHrYpECxoRsOD6VFDoxrihy
         QeqRVoaOinYluu0DTKT5KMTIiigDeRZ+soq2lLW89CRZJlPAkOvY0R2fufBv0arjJKQN
         tOm+VtK1L/P1tl6Hg3G6XhSdl4ecK4BQRhyLZDAezQ26sfPHTROn9XnZ12aJ8YqcesjE
         n+1379TZynnQoAWliwhYavkBmjtPLd38T2ZqN12IUKYUGeYV0uZkybBW/eVucrmbHH6j
         PXbg==
X-Gm-Message-State: APjAAAXP3sM8OFpCGotCkk0E15poq+BeK3xd9WrRmBEdNuBu7MK0X6cT
	4flpDyJ8mi3pJ8qw39Q+kX80iu05hdEG
X-Received: by 2002:a6b:cf0b:: with SMTP id o11mr15166939ioa.227.1552246147711;
        Sun, 10 Mar 2019 12:29:07 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:d93d:e73d:b219:4764])
        by smtp.gmail.com with ESMTPSA id i198sm7069692iti.18.2019.03.10.12.29.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 10 Mar 2019 12:29:07 -0700 (PDT)
Date: Sun, 10 Mar 2019 15:29:05 -0400
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Question about Checkpatch.pl errors
Message-ID: <20190310192905.GA25967@branx011-Vostro-430>
References: <20190310191158.GA25717@branx011-Vostro-430>
 <alpine.DEB.2.21.1903102013380.3131@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903102013380.3131@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Mar 10, 2019 at 08:14:57PM +0100, Julia Lawall wrote:
> 
> It's a good question, but there is no real answer.  You need to use your
> judgement.  And perhaps your judgement will be wrong, and someone will
> tell you :)
> 
> julia
>

Yea you're right I guess it's just a learning curve and something we'll
get better at with the help of the community looking at our patches.

Thanks Julia 



