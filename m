X-GM-THRID: 6525083396428791808
X-Received: by 10.46.9.80 with SMTP id 77mr281298ljj.11.1519247556206;
        Wed, 21 Feb 2018 13:12:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.89.218 with SMTP id g87ls243285ljf.16.gmail; Wed, 21 Feb
 2018 13:12:34 -0800 (PST)
X-Google-Smtp-Source: AH8x225I6OXCPs+L1CVkXPb844lmXA2wkrL4pVYMQcnrAkyzrUDv7to5vcPOPIOFlf4Mwang7esQ
X-Received: by 10.46.34.196 with SMTP id i187mr268598lji.10.1519247554980;
        Wed, 21 Feb 2018 13:12:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519247554; cv=none;
        d=google.com; s=arc-20160816;
        b=ZvY9dkyf8zyPg01cQYLv79V2czU94uP7hZngDzn+9qaQRvinpFxtv5aPp3ot+MzHYp
         H/jck1jE5ZqelQWhYLoteLKeaBK7AHq4ur2WfWiHuUxY4+ZCFk4/G3G3Z18//2uvalEu
         JICcCeiJ3A8Kcz8Te7bRKifK2FpKCh6JTtnSoFhqx2MasxofbB5LqJD3nn5Nyss7UHtU
         vtDQN8ZXPly0EqSJXR9WywM5patzBuagokDY4Wx3MseC8hf0Qj/OcKZJzF9jzMgscdkV
         lII/tQ8SIhV8zCKF87PXQq0ZuuOBYT0Txz26FsxWY2NKiu4uZ/dM4yIhU1jImdHWne9N
         HCLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=nHJgnGzEQsZ8sXSu3ooEyl0mWNE7QgiG3r6rVbL/Veo=;
        b=F1Ud3xcZo9P8EqMr+rJfl5v6IcvEmc2l0s5ryZP3jY1FFDy3+Vcrdl3tPUqkwmMQMm
         slghOcD2F7YDgvufwclIwLIMmg01XRi3yrBS2nHnWeBMxMYNC6kZfkYYOU9+boxWOa6o
         3K9tpUh9tjulNGK1WIVjZmLu6I0mn7nYGt1OcPhmta2zEMx/45Yh/HAqds++UiFfvkHh
         4oxw5NCVhmFbDo/CIeypCZXxLEw+VKr5RZd2yLNKXT+Y3jv8GNTQerSl5NBNx3NRst9Y
         2zoeFXYxxLHtBBlBuLtSILHZK0X9SvNVdMcNLQco/KJR/d4wlCMcAgp3WuEYlyPFlDQw
         wiww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w7si358041ljw.4.2018.02.21.13.12.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 13:12:34 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,375,1515452400"; 
   d="scan'208";a="255674033"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2018 22:12:10 +0100
Date: Wed, 21 Feb 2018 22:12:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
cc: gregkh@linuxfoundation.org, w.d.hubbs@gmail.com, chris@the-brannons.com, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/3] Cleanup in staging speakup
 driver
In-Reply-To: <1519246723-2977-1-git-send-email-santhameena13@gmail.com>
Message-ID: <alpine.DEB.2.20.1802212210440.2292@hadrien>
References: <1519246723-2977-1-git-send-email-santhameena13@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Actually, you should put a v2 in every patch, saying that nothing has
changed if that is the case.  Sorry that the tutorial is not more clearon
this point.

julia

