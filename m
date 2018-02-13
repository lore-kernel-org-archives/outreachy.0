X-GM-THRID: 6522068226788032512
X-Received: by 10.98.64.29 with SMTP id n29mr328241pfa.43.1518537343913;
        Tue, 13 Feb 2018 07:55:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8d84:: with SMTP id v4-v6ls6386plo.0.gmail; Tue, 13
 Feb 2018 07:55:41 -0800 (PST)
X-Google-Smtp-Source: AH8x227MzcAjLGS+Td/X0Te8Y/5kT471usLBSV8t7ukZilv6HrTc41UIwKoNYAwS3yHUf0ICDiqA
X-Received: by 2002:a17:902:7406:: with SMTP id g6-v6mr311984pll.28.1518537341717;
        Tue, 13 Feb 2018 07:55:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518537341; cv=none;
        d=google.com; s=arc-20160816;
        b=JM7dQ9nqUSSKaPEya5/tkNougg4L0dItHedARok66KqSOpGr/5BwAehkNRnoqVj3UO
         Z1e+GWReoY0MhRKQnGoIzFlDnw0fA6VqXFbn6fjbhqNlLrGrU6q6dfUgKAUzTPGawnaC
         nYnsXuRCraH2TY6+byTRa61JvgwbqAdpxLA+9b2q8pTsZdFdFAgIzW1xQiPAlIR9VyKO
         BvzalNLn6KXjyIIYV69UKQnd8loqv/SFiqcsAZIVID/Y3T2ElFTDSSeOl6whm3dPP9k9
         VsrAcKJxVj4vym/4fpPbCHHZZAxj+CHukilHznGbVTuZHoNpfxx6zxR2v6WIN0BGqBMd
         L6SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:to:from:subject
         :message-id:dkim-signature:arc-authentication-results;
        bh=UEpWor87RqAMO8ccTHJ0QBQfCLPV8mHjns/rDSFjST4=;
        b=xbEHIhCKNWNz+NFRFF++HyJjUQ7CXOuxhV86jxqZOe3MGdLn23ga0vth2w8v5MIw9q
         T8KyYw3zvHgZ9r7rMCswRJZwqrC+u96uFpkg5rTckXNK+fEjvEWGv+ZO7ANS44yEL2ZU
         4chcdP1ECLNBlQBngFUE/TskSA+siF/FftsjUy3sfPpkB1lXpYP3I0BrChZpnef4XyYy
         Y/aLUNIBMpcORyI0RLVp5otqU3Elt11fy2jctOsWxPr1OtGCvkEV8Eg5VoQEX9BetUJF
         InkXPWJvL6eDR7xoStr0c5QldoVz7aD9FToSIjhUFDBQ6Jb0XNPZ06G16BJHxCCVg1AK
         t+AQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=miYzXxgR;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4001:c0b::22e as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-it0-x22e.google.com (mail-it0-x22e.google.com. [2607:f8b0:4001:c0b::22e])
        by gmr-mx.google.com with ESMTPS id a34-v6si628313pld.4.2018.02.13.07.55.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Feb 2018 07:55:41 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4001:c0b::22e as permitted sender) client-ip=2607:f8b0:4001:c0b::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=miYzXxgR;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4001:c0b::22e as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it0-x22e.google.com with SMTP id v186so6141649itc.5
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Feb 2018 07:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=UEpWor87RqAMO8ccTHJ0QBQfCLPV8mHjns/rDSFjST4=;
        b=miYzXxgRGGfEh5hLi2zdgHjFKQAGb7oWFSxyWD0BGvewnNVe3Stu30PYGNuzXbI1JT
         VAwj2+04ahY94mxI527/p9RbG/PgXbcyO6GYBVT8FV49NdT7bN89MXAhWlCShNPHPLsV
         WSxcqnPCl0EJ8TVflf/ymNiO28UUwfSGwx7aKvqbiDGcK2+4p+3eP4dFoGOsGWwgEUCb
         2IRc4S95SE/RVSQKGOYvJ3Mq1vyAdnbaE5XxRMYxvUBDm2RQHoDFpPr/zOH5IzrTfR3L
         cBpKmEpGhHEdebg6cxJWPwNdaFNiloay/s9BwRAIygbeQ5flEBYrkjrjMksUy3nzmw8j
         xRnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=UEpWor87RqAMO8ccTHJ0QBQfCLPV8mHjns/rDSFjST4=;
        b=K5KfCECdlgDM1PUQP0b23XE4xxU+u8LhMk0dzO2CXMbAY1MngMN/SbqxG4q8c1ay3t
         Vpev7vXoW90NmHrfP1SHJuNbG9ksFfCIGEDCCEGLJ4Jpycl5nYAtbxsIDMyxULyq1CD6
         8Ou/O+gMHczXgo5u82Bp9WDbP9iskF7yf8K0YIyqjimuiqLHrVxF3UX5ou0bnRym531J
         ourqsDyM+pvh2Nddjr9SV/LWf+9c5msoxoHJ7f/i/ClIb1XqS/ENysgyj+n8sgGufHpc
         O6+JcbUu3SO4KBe5GBYkafX3vqsRORcop4e87bIl7HguTXdtYgr6cRuJ5asuYZda9+pp
         M7yw==
X-Gm-Message-State: APf1xPB/JHvJzLMlf6YN53Zb1SbdjSqi0fSO0pmjapJtdh1TzHCtyAZI
	hQjGmRkEKYCFMbHsU0eeetboTQ==
X-Received: by 10.36.116.146 with SMTP id o140mr2006961itc.86.1518537341367;
        Tue, 13 Feb 2018 07:55:41 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([103.212.140.158])
        by smtp.googlemail.com with ESMTPSA id y62sm10693550itg.11.2018.02.13.07.55.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Feb 2018 07:55:40 -0800 (PST)
Message-ID: <1518537328.28375.6.camel@gmail.com>
Subject: [KERNEL NEWBIES ACCESS] Shreeya Patel
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: outreachy-kernel@googlegroups.com
Date: Tue, 13 Feb 2018 21:25:28 +0530
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

Please grant me KERNEL NEWBIES ACCESS so that I can start claiming 
tasks.

Login name: Shreeya Patel

Thanks.

