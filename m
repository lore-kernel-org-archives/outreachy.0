X-GM-THRID: 6661107741495394304
X-Received: by 2002:aa7:924f:: with SMTP id 15mr7880976pfp.44.1551141403749;
        Mon, 25 Feb 2019 16:36:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bd03:: with SMTP id p3ls7770739pls.5.gmail; Mon, 25
 Feb 2019 16:36:43 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZ8y7pUTBss4Exil8m2t8vtcuVyZB3bWqoM+bMbdcOW93PStJBWus459kHvspc6ZOMg9Ms7
X-Received: by 2002:a17:902:3f81:: with SMTP id a1mr3192060pld.32.1551141403013;
        Mon, 25 Feb 2019 16:36:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551141403; cv=none;
        d=google.com; s=arc-20160816;
        b=0ucf6b+jQ2ghjewAye7bk5vDo5ottLG336vCZQde8VisSBVYhiSdbEE4M+9SHjkd5/
         v0vv3qRgRyjX5HnxQxw7pDBRcpGi5GxX8MDxXR/a58qR5SsULL76S7x++W6iklZYxOg1
         fEKUtzepLhlhaVVPJEwZvKCdT2LXMigrCt0/YNV2gQI1D8Pr1897wbXa4uA36QF8a1xu
         NQrdPZ01h7z7F6g/dc9sB2Rl1QEoOkrGxqyoZQMhI5Vd/613zTb9Wm797d0h2B/JzLE2
         X12ID5QlnFv9p3rWTDl93LszWE0RUFFX4fHnBUb3kXj7OkVkdvw012iaCT3FQqV60+Cg
         Yy+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=JoTiJFK5xk04W2ph/wZ6GUotvv4DSCaPLTQnNT1eOQQ=;
        b=e2GnMfstXKAp4sDAeHkyChWDskjaGII5wselDZe47hrULBjkUVKlRjfkhy0SgHU0jc
         cS3hiFpgXQSz9hEOEETxRULihyBY+LQohuORLwITGuDk/mpgs/+M3TcqKo/E9eW9vDoT
         b13Lxvime/8oBLJYXAbcwD++uAvqDC0SugfqEZ183qOsp8SOzdIb7wShfvbw3ykeFhug
         hREq4lstC72H0UGe30MG4y5H2i2X2pJTh/8JqVToGF+yqJuxG0ZdOkfQrSPUEuSpvLR5
         PkIPrH2VgiV0bdidYhi5RYQhoORZhzePM4k2ss77tK23tnxrVrBkwQTTSrRFOLuBI3SR
         mNTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lfn6SD7z;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id f79si704526pff.4.2019.02.25.16.36.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:36:43 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lfn6SD7z;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id y10so5331472plp.0
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 16:36:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JoTiJFK5xk04W2ph/wZ6GUotvv4DSCaPLTQnNT1eOQQ=;
        b=lfn6SD7ziOLqYZRxhZHnpBHpc6ddmUcfoJKpCzCBBj3tfxOpu0kApoaZGrIBBNPcVl
         JhaZNYpu9zJt1nHrHFbDQrz9ywHJhDMR6GGFgCz+DSqLblyWkl5VAnIwfeBoJyL4eqCN
         sCoJhKL33nnWrZTw3D7lQ2JBMOa/Zp5YD+K3P7dlhLO2bihGp+XWNnEw0IYQk7iKsPn5
         DMGOIWg1AIQ537mbZHL+gBGvPYHtpT5/dYxvSSqWKBcmFo/awCq20zC6q9G1j4pVHNya
         iYA+Alj0TuwzvyJ3i3k/JWQ3O5bIHeWHc/mjmxPtJgLyQAtMLffErjFINKkjUi+GMkH2
         LBqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JoTiJFK5xk04W2ph/wZ6GUotvv4DSCaPLTQnNT1eOQQ=;
        b=es1TCa+X7cwXInkFmh7o9dP4aI0oDj/P6FKx05H/MKyzmlgcRu3EsS83z0PxWhm/la
         94n7JKg7TGvnp95QcFYd+VGgmrUWffu7ZI8AEKME/fpBu7xmJtaXucZTDxUb6oT379Ir
         OacxlJiGiXlDGlV1YLhiHFViUdbndbJ0e0nD484SVcX9NAR49RuxeadQKcmTx4SqOrvS
         Ft8jvWpL0Z+PukEr72dKto/JCy4Wl0tcGZJQDmcr45ACIz5A2LFUQF+Q3LU7G+p+2mhS
         UFu+jI7RpGLpnLgARLoskmnkeQtYxBsDvpwlNHyTbYfTqV+iApMfWSBR7BRzZ0AwXHk/
         jphw==
X-Gm-Message-State: AHQUAuatXnv0ZQZPXGiQnrr1SS7lelXj7UCiSj413iWdJxYABD2/jxxv
	9gQTopBNnr4dLKYXB6YK2QRHV8PUvvI=
X-Received: by 2002:a17:902:7207:: with SMTP id ba7mr22668881plb.16.1551141402486;
        Mon, 25 Feb 2019 16:36:42 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id b70sm17965861pfm.6.2019.02.25.16.36.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:36:41 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3 0/2] Staging: mt7621-dma: Fix checkpatch issues
Date: Tue, 26 Feb 2019 06:06:25 +0530
Message-Id: <20190226003627.15650-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch series cleans up the following checkpatch.pl issues:
CHECK: Alignment should match open parenthesis
WARNING: Prefer 'unsigned int' to bare use of 'unsigned'

v2:
 [PATCH 1/2]: commit log modified
 [PATCH 2/2]: commit log modified
v3:
 [PATCH 1/2]:Commit log corrected

Bhanusree Pola (2):
  Staging: mt761-dma: Alignment should match open paranthesis
  Staging: mt7621_dma: Prefer unsigned int over just unsigned

 drivers/staging/mt7621-dma/mtk-hsdma.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.17.1


