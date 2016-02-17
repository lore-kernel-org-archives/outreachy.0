X-GM-THRID: 6251601192398356480
X-Received: by 10.31.153.75 with SMTP id b72mr1448584vke.0.1455716532402;
        Wed, 17 Feb 2016 05:42:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.69 with SMTP id b66ls2245672iod.101.gmail; Wed, 17 Feb
 2016 05:42:11 -0800 (PST)
X-Received: by 10.66.63.68 with SMTP id e4mr1401960pas.40.1455716531943;
        Wed, 17 Feb 2016 05:42:11 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x232.google.com (mail-qg0-x232.google.com. [2607:f8b0:400d:c04::232])
        by gmr-mx.google.com with ESMTPS id i133si55059ywe.7.2016.02.17.05.42.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 05:42:11 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) client-ip=2607:f8b0:400d:c04::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x232.google.com with SMTP id b67so11566430qgb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 05:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=HnWqofWtZcI71AVX0N5mhnUj0EP4wNOWh3cpdY6KdkE=;
        b=hkpbg6XEJJtlfc1+65pAUk6/gkSK51XgSMBY2frhjP36qMqBy1xj6PFxIvq1VfMECx
         7F46axA2dlB6oJ+CDrVZTpIlGB3++TOXSoLwdS1oVrpPwOsNaNd6ZmINKeQ9H0CXCiwC
         S+eFanIFlgH+YIZ91ZgNb+kgyolRc8bpSUDBTX+IAXIbw7+I42a8Pmma9dmzo1bCahhX
         Y+9JJoqQmysrE3V8A3hFMXMnBDSKx45/5/IHgNciMiAuzqHMruLohSorK+vZDAZPFEi2
         ECxLHGd6QDYY/Avl3PFN7aOjIEoPnAgeufkM97SlIbtQZuBN2raP1hN1XLNiV48AkWS2
         QBHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=HnWqofWtZcI71AVX0N5mhnUj0EP4wNOWh3cpdY6KdkE=;
        b=LZ69scGhiVi6yaiKH8VdQ+olvySTv2ZNxAsBUVWLBjCindgeTgPOMw3eVvQJSKXm/Q
         ALs+nxkSQVs1WzmXsJ1ifSrVRR2z+0lva3c/Re3nu8Yo0miaR75C8LdHEVzuTQ7nrhLZ
         ZFLZhdzcqLvZtJr69Z2iczqNatEUcl/xShpwIB5rmScHNsIOynFfMgIf/nsDOEerB9A2
         FJdDabVlYepAwMUF1pHZHOQEhlstEazg875dGuP6kCyyxY/wyUVR5pYZC9cvf3mMCTmE
         O6G9nez/I8KkwLdPE/CF9LPWofZC/Z++eWwr/JGKFoEr/exs8f+uSJFEasEosS15GQoN
         dhjg==
X-Gm-Message-State: AG10YOQenUuK/2U3Fh8sIV+BZjqAd4JL39WAYfymq4wlopu2DIxnBSpW4pMr5yWO7GnpHUXBvPBT9e+KQ3AvKQ==
MIME-Version: 1.0
X-Received: by 10.140.23.81 with SMTP id 75mr1881365qgo.35.1455716531758; Wed,
 17 Feb 2016 05:42:11 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Wed, 17 Feb 2016 05:42:11 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602170837170.2685@hadrien>
References: <20160215192524.GA30333@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1602170837170.2685@hadrien>
Date: Wed, 17 Feb 2016 19:12:11 +0530
Message-ID: <CA+5yK5Hp4jxusT2YinDhLkqQa=pH=XsyYSys4Y_knzd+f=02og@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: hfi1: Replace kmalloc
 and memcpy with kmemdup
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 17, 2016 at 7:07 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> No need to change, but in this situation you can also put:
>
> Generated-by: scripts/coccinelle/api/memdup.cocci

Oh okay will take care in the future.

Thanks,
Amitoj

