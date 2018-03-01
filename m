X-GM-THRID: 6527996337022042112
X-Received: by 10.107.159.132 with SMTP id i126mr1533591ioe.123.1519917588050;
        Thu, 01 Mar 2018 07:19:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.38.203 with SMTP id m194ls128581iom.5.gmail; Thu, 01 Mar
 2018 07:19:46 -0800 (PST)
X-Google-Smtp-Source: AG47ELtG78JR9BbCeVB7H7DKVzx+C/1gb5IDh6bynemSUZ/W11bLqUPNiqrXo0DUamBvrLgsvPcD
X-Received: by 10.107.178.214 with SMTP id b205mr1542761iof.136.1519917586794;
        Thu, 01 Mar 2018 07:19:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519917586; cv=none;
        d=google.com; s=arc-20160816;
        b=uzJRg0j4I7u0BH2qDb7qClj26M0V/kVJpa22c/90IditzbkTS+oRG7XcSBN1PocHvx
         odvFuyhcXMpL07xJWh3oFFasmiF55aHjYDAAEezB99N4r5HZ8UW4jiHCw9Nge7aVCzEY
         bn7FXuWHz+q8Br7JfnMCD0lMywu5wqp25VjTN9ozocBBSIL0HJSvXouqgY4szCJOxS2q
         V0HKu6DJt59JpQlK2H5wRAm8AVPP2CDJcoo8WY/CPVlV9jiiltz8UDCFMMZP8ugQjIvp
         C34RtwDMTontmk5vzX3koMNj9APV5vzPxUjQsieL3ux7aKdFrKdpAxjGvk6QYDGaamJd
         tvug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:to:from:subject
         :message-id:dkim-signature:arc-authentication-results;
        bh=GydMCvLKk3P2N3D7ORm431TGiqbL4rUlw4SVhs4guRs=;
        b=n1YQnC2Kkwi/H2SZiUaP4ulJNiaiM1xUW1Z4XvNlgpHJ60fvbPstiydP2Ory+tDo3f
         Djnl08Q64bwiorB1c4WeEuXMrINHl6oMNye/NPGySpYByVKBoxFQCXfQlY/Vqb3K88XY
         KREchAE/467O+9cYrN86OoK+xIcZF6qQkyuLLMh3iK5JOl3J21VCAjTm1qRznZ2GY8sS
         +k7u5PX/AdUrm+9ivBdONfM8qMNp5Rylg772nj0UVKSzZIuIhorF7WUpqasr40vzpgU+
         UIqlyCgHe+4STOgDUGXyV1ecExPrytOzQbCCurPmordl/L3YtFxNzP6DNTGUS46D/LOd
         uT9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ChmCP17h;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::22b as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x22b.google.com (mail-pg0-x22b.google.com. [2607:f8b0:400e:c05::22b])
        by gmr-mx.google.com with ESMTPS id d85si289912itb.2.2018.03.01.07.19.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 07:19:46 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::22b as permitted sender) client-ip=2607:f8b0:400e:c05::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ChmCP17h;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::22b as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22b.google.com with SMTP id y26so2427489pgv.4
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 07:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=GydMCvLKk3P2N3D7ORm431TGiqbL4rUlw4SVhs4guRs=;
        b=ChmCP17hKHYmMGI0DRq1mIQec1Mrt/gyCPkivmcIfdoFt9q0s8EKp3Lq5vYxpKI71q
         7hPvGY/aadkWYVlPAF7HLp6BVaH0q3W7w1kuwduRr8u1aBmjpHZc2txSYFYyGo/pcgRM
         afhlFTqL2O12zt4tnlNznshsMg1aXbwqPgvBrPXqdVaTZKcyrqXM77jox21a36BTcw5U
         cYropBGIowTYNtHWSACWz34ZmB+7xr+wmpcC3YNlUfAHb0mYyx0YcZEnr41uxJTEmxGC
         L+p/j3WpoAySOoFFC5gQLjlEDDA+O+YTj8KTTANsBwkmdL5domCNfkjTatJYLFCo6v+b
         nlew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=GydMCvLKk3P2N3D7ORm431TGiqbL4rUlw4SVhs4guRs=;
        b=ouc+r7MADUcoupVuoGx09D6/gMv9S/Zz+BWfE5Z3EKKmjarpdTFg75JUyZj6U3SWGi
         vbmUvdOixb4AEJnRMjtPtf1pub11Q8m3e6O/0fLmE2vIC6d54I/ZCHHIzUfBfdl2N/FK
         NzyKacX3zbaorYjI5PTUsxVPaTIjn1vO/+6msh0XnV1co3rf/obzaw906HOtVMCk3TyP
         gU9EBGLORJZUtpcXEe58XaPNbFAD2PTD/QvusBsU4ZeVeILs4U9OvRGF7Z/9BKlRkvNv
         tu8QZm8l4INHcwlaTd+tEuj5zgHNeBbiB0n7YZZ6DjXm2G5+5nvb5CXtMACa3e4xjyyz
         9gGg==
X-Gm-Message-State: APf1xPB8FRacE9PSOXfoZ/hIECJraGK2Nk0i3C20qOLfK70kswqizLRJ
	Tt1oFBYytoIQJ4BsUIVLJNUNsQ==
X-Received: by 10.98.14.200 with SMTP id 69mr2280740pfo.168.1519917586112;
        Thu, 01 Mar 2018 07:19:46 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([103.212.140.150])
        by smtp.googlemail.com with ESMTPSA id a67sm7325506pgc.6.2018.03.01.07.19.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 07:19:44 -0800 (PST)
Message-ID: <1519917581.3531.3.camel@gmail.com>
Subject: CRC warnings
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: outreachy-kernel@googlegroups.com
Date: Thu, 01 Mar 2018 20:49:41 +0530
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,


I am getting bunch of such warnings during compilation.
I don't have any idea that what is the reason behind it.
Can anyone help me with this.

WARNING: "crypto_fl_tab" [arch/x86/crypto/aes-x86_64.ko] has no CRC!
WARNING: "crypto_register_alg" [arch/x86/crypto/aes-x86_64.ko] has no
CRC!
WARNING: "__fentry__" [arch/x86/crypto/aes-x86_64.ko] has no CRC!
WARNING: "crypto_aes_set_key" [arch/x86/crypto/aes-x86_64.ko] has no
CRC!
WARNING: "crypto_it_tab" [arch/x86/crypto/aes-x86_64.ko] has no CRC!
WARNING: "crypto_unregister_alg" [arch/x86/crypto/aes-x86_64.ko] has no
CRC!
scripts/Makefile.modpost:92: recipe for target '__modpost' failed
make[1]: *** [__modpost] Error 1
Makefile:1679: recipe for target
'drivers/staging/iio/accel/adis16209.ko' failed
make: *** [drivers/staging/iio/accel/adis16209.ko] Error 

