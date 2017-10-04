X-GM-THRID: 6472949369841647616
X-Received: by 10.98.76.206 with SMTP id e75mr1388578pfj.10.1507100968919;
        Wed, 04 Oct 2017 00:09:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.152.88 with SMTP id l24ls4202482pgo.18.gmail; Wed, 04 Oct
 2017 00:09:27 -0700 (PDT)
X-Received: by 10.101.81.135 with SMTP id h7mr1852796pgq.36.1507100967769;
        Wed, 04 Oct 2017 00:09:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507100967; cv=none;
        d=google.com; s=arc-20160816;
        b=h5sti2QuS7hnb1BE1mXkZE7XBY4VhZHpdAcd7f/j4gCdizB7I+yrHbYZy8XslXSzz9
         i5eY3D+0Cva/gRh/HWAXSR6l5BFj6Kp6Th4bt3nDTRDJgmE+8R2CF2IGgK0ICR2TaR4f
         kapcKvVvwJpWF8g55Gs43Ir5DpjmTFXQKW8mLUZHefY3GnGuNN+2KxyNnxTzOi1igZp5
         24l85MQeSdPe1fU2+2Ym6QnI2EG9G47HAGEfiZPdiC2Qb88afDoC1Xs45Vj+9qEP3lxh
         Mc5yKav6gT2AKw2WyFhhtJmP+uFtoDsdc++0YD0/uD9jovumg3BU4JjLanTaC4w2kVF5
         VYIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:cc:to:from:subject
         :message-id:dkim-signature:arc-authentication-results;
        bh=QvLTQAUBduXJCkqiFkDNLynMFrMqDi1+10qjQD97tyQ=;
        b=CAAZ/7ImLRc3OBrEtUhAMNdUuA33+LEYULF0E1hRb6MUAKMsi7KWBVO+J15EtvklOj
         yuSf8ym98ehFVwRo1anCBdZ+PQ0Wpm+jvje7ozFOJywguMt5VntJlmh1sPINOSn0rCDX
         WAg3mGxV+JFbt5gk6rcg9MHiVsofq7rt5C4oJsqR2KlNGtgUPeQ0YpfovXZuPmkEmTc5
         QnYBSeONPQKgZQD9X7lZmGMJ1ZtNWez68ZNqVrCzGTjXwp8/UcJQHeGoDROdqo+ebHpM
         IpIoPwxI1bzwJoH0rQOPseiIRrrkkQ4o/0O7jcf2CQdkmAgBuKpX+Ztcj5FXsWUYkJR0
         iuLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UENPLRQx;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id e80si1098431pfb.8.2017.10.04.00.09.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 00:09:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UENPLRQx;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id y192so12447421pgd.5
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Oct 2017 00:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:mime-version
         :content-transfer-encoding;
        bh=QvLTQAUBduXJCkqiFkDNLynMFrMqDi1+10qjQD97tyQ=;
        b=UENPLRQx7k88Z3jwSvlaQib1leyBnQZPI67SelLRAvaZ3+jlEgxY3UKDNyn90hl7Ig
         J0Fzqt1MxWeE0LEKrp7E7cw9Y0pd3smBq8s+oGw/kB26X3XsR04imdC2VHlRONMFNnBj
         XOkX0l68RmT2dsNh8Ig1QzY2DBtj1fW39erFtgoXSU+ZLUwRD7EMBZShn2u2NLeEVZYQ
         n/egDmnQHv8Z75gp2ELq9rMpLas/Y0FW0IN7f9TInLpYK8B7CRuOG6gbYaK5K+zIZ/6E
         0LZjQerBo1oKVfONhcRqorznZh2TvZp94Zce+POiHZ5ockfnZB5ohtrXrK7P8fe+ni9j
         hCqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:mime-version
         :content-transfer-encoding;
        bh=QvLTQAUBduXJCkqiFkDNLynMFrMqDi1+10qjQD97tyQ=;
        b=N7bUtCtmO5waQCo4WBLQfcs4YX91vMTXdKH1YENswdepbA03RmppA7VTP8lG+RVeUc
         VNKs0f8j8vKkGAHVegFecV6/6ukLqJ4ZtBjPZuPeT1v5Ug2aKZVr+7vIyuQai04h5CUW
         bpAfYDWs0B+xKSoUQAO5+lRfvlsST1G9qZbHJIZrrlClpsRkplBYUVkqN0YS9v/DAaGP
         HPRLzgmSw3vYUh89zJuAJvFdPO6pb4DRTQnxAc0gPa3uwPSi16MjpyHmjjnqekD/+vRH
         rH/FRjsm1FsMxzUIHczaauHpw5muNPAUgXTvv5AZ+b3Gcyqk7yu7uhN1GjF5A+uqHyqp
         avcg==
X-Gm-Message-State: AHPjjUg/Y1jRjF799I6CCcsnpCPvdOHzIU02fDpL4QsQc90iQ/l2LEiL
	md8Fwg0mRvjbq6RRqmfiJgQwlhIv
X-Google-Smtp-Source: AOwi7QBt9ojEhLy5xdPYiD5B4PQ95ZeYuS0m0c2emfT3Jk0NEpaS4YIthtJkidL5s5GD7hUbF4ethQ==
X-Received: by 10.101.78.209 with SMTP id w17mr14885326pgq.402.1507100967586;
        Wed, 04 Oct 2017 00:09:27 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from [192.168.100.7] ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id f24sm11073414pfk.183.2017.10.04.00.09.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 00:09:27 -0700 (PDT)
Message-ID: <1507100846.10633.17.camel@harryPotter>
Subject: nftables: Add support for reserved header and addrs for routing
 header type 0
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com, harshasharmaiitr@gmail.com
Date: Wed, 04 Oct 2017 12:37:26 +0530
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

Hello,
I'm working on task for adding support for reserved header and addrs for
routing header type 0 in nftables. The code already uses macros like
[RT0HDR_RESERVED], [RT0HDR_ADDR_1] in extensions/exthdr.c but they are
not declared in parser_bison.c like other macros [RTHDR_TYPE] and
[RTHDR_NEXTHDR].
Can anyone please guide me on how to declare macros in parser_bison.c?
Thanks for your time.

Regards,
Harsha Sharma


