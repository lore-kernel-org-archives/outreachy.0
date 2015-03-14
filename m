X-GM-THRID: 8221215424512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35fc9dbaa0120918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.202.227 with SMTP id kl3mr1205492lbc.2.1426337964578;
        Sat, 14 Mar 2015 05:59:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.65 with SMTP id b1ls520018laf.99.gmail; Sat, 14 Mar
 2015 05:59:23 -0700 (PDT)
X-Received: by 10.112.77.101 with SMTP id r5mr8210113lbw.4.1426337963874;
        Sat, 14 Mar 2015 05:59:23 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id bz6si305191wib.3.2015.03.14.05.59.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 05:59:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id dy8so6543294wib.0
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 05:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-type:mime-version:content-transfer-encoding;
        bh=WClYHyBJIUG+Kz6olVqg2cR4oV0yovDExIu+Jjyt2O0=;
        b=u4dAL7VVGbplHLZSovSnfroeRyOu8oDO+naQ4kNZ4M043AX675yESbMtNhKVPxAuMM
         qY+VRhtBCkySjtydYj3Xq3Xrxv9aq0mQluQYbBuf2W9U1hM7wSR0HRTfElAAfspsxdOG
         DC0cHzN1Aw4BAss2ahlv6qUniMxnJR5/d5Xp17hGCOtFPz0SGvL++jzEObzNMwikXy3G
         Wsb6Lf7x8msei24WijZq2iOashjimdDKqIa9APOhsQQfnSMkF2JtHvkw8I+QjL1Dtu5W
         8k8WditHtLkBdqY5FnD/kUOY+axa4BxGNCaLh5E6B1HJWqpxZVQpmYtFgLbdlifGySF7
         5D8Q==
X-Received: by 10.180.83.195 with SMTP id s3mr151412053wiy.54.1426337963781;
        Sat, 14 Mar 2015 05:59:23 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from [192.168.0.101] ([46.214.223.212])
        by mx.google.com with ESMTPSA id e2sm6912385wjy.46.2015.03.14.05.59.18
        (version=SSLv3 cipher=RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 05:59:23 -0700 (PDT)
Message-ID: <1426337918.6721.4.camel@Inspiron>
Subject: Re: [Outreachy kernel] [PATCH 5/6] Staging: iio: Alignment should
 match open parenthesis
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: Daniel Baluta <daniel.baluta@intel.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>
Date: Sat, 14 Mar 2015 14:58:38 +0200
In-Reply-To: <CAEnQRZAMAj7OquWzwAutp7NVoHs15bkcgUE3wSoO49YcpEKFuA@mail.gmail.com>
References: <cover.1426296329.git.cristina.opriceana@gmail.com>
	 <62ccda665be354990b06a5d12ccf410ce9e1013f.1426296329.git.cristina.opriceana@gmail.com>
	 <alpine.DEB.2.02.1503140733520.2075@localhost6.localdomain6>
	 <CAEnQRZAMAj7OquWzwAutp7NVoHs15bkcgUE3wSoO49YcpEKFuA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit


> There are still few places to be fixed:
> * ad9834_show_out0_wavetype_available
> * ad9834_show_out1_wavetype_available
> 
> thanks,
> Daniel.

I had doubts about fixing these because I had the following options:
1. Aligning them would go beyond the limit of 80 characters for the
second line.
2. Put static on top and make the function definition inconsistent with
the others.

static 
ssize_t ad9834_show_out0_wavetype_available(...)


