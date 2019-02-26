X-GM-THRID: 6661088091510407168
X-Received: by 2002:a02:3f1d:: with SMTP id d29mr9331453jaa.4.1551141195052;
        Mon, 25 Feb 2019 16:33:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7d8e:: with SMTP id b136ls366562itc.5.canary-gmail; Mon,
 25 Feb 2019 16:33:14 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZLwFjIXa1VVvNZXZspKrkOFxTjmonrI9ecQl5uVs/UOb6V7tA7k040w0OILGMIRy+YtU5q
X-Received: by 2002:a24:9fc4:: with SMTP id c187mr932581ite.23.1551141194367;
        Mon, 25 Feb 2019 16:33:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551141194; cv=none;
        d=google.com; s=arc-20160816;
        b=ZN6cK5hmIatdG8pk5vffgr7ulEMIbPtkrZe04NF2J3tdBS8R7/uBfFypVmHo8ks1kF
         FTsyuhmrOn0aq+ltUDMClxMLLlnc4TyB4bdYjRdLowsWCdEOAnPKWSI2pyQaLcbxWb4x
         7+0zMMq3hAThC6RFLI1ckx3sRkOljqZC0ujzXskKG8o3TF/wep9rGIyfpUqLW8T8R31S
         TIKDS8R0UtWeC6C4kSaQcCoP/YU1rdsrRLTa7i8itZXkYwxxNhDyoJEiTIhIk3Te7PAq
         +RWv1MKjdBpOdOFT1u/k6oFtDGKryEoZEeXwjOFcspsqtc2MbiDULboVp3AM2aD259ZE
         D4mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=6suAVZkVE7dqew+0tFdefovdH6dDgJo79Rl04LxPzQc=;
        b=cR+zr8hnAMBCwlO2WFZqSXqqRKaYb/7NGK/xIMf3XydoPJR8UaLT7OuH5wkvGsRdq9
         VPM26x+JK6FLjrL9RLQy4MXP10sHMFxonQECrFWeQC/IS2dvnmobW1RhELyjwzRMg0H2
         f1q5l2lJdaBc+5iRHDBD41Cud/lMPGtx7duoLd/pYOkPSZnlo65aSgMZWwXj1orsVdI/
         pCJ965u6S3XXr7wShotH/YpuLvfC7fF3IbetDFe/whDSE9kHlSxl61yvOIB9Hq0/z2Km
         eZuCsdxI8rs+LMoBKYbAQRzlrJm96Qr8R3migXgdt5OqPpd2spwLsjk9XXTe0BdhC96N
         P2xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KiylYIhr;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id 184si591742iou.3.2019.02.25.16.33.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:33:14 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KiylYIhr;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62c.google.com with SMTP id bj4so5293255plb.7
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 16:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6suAVZkVE7dqew+0tFdefovdH6dDgJo79Rl04LxPzQc=;
        b=KiylYIhriNWlWfuZMEfbeHjdAFD+cKWO5Nwhyf6GGY8veAjzUv1/zc39b9bLGIAQQB
         3wEIZtp1muI+KNKDnBfYQieo1AfeXiQSbamH4EyMTUnBlZo8VI12PNsB31pjg/rp23sL
         Uszx0Uawmmhei8e4jr6/mh0I/BHWCG42Q771WXoZ+bebvnvflC2lZn4t3pVruK/8jNdD
         8yj/elOhiyK9lVNgWYsqUGUBuWQiFq9bxH0OrdBLM58ALcCEVApccJKLn0pyrqMmpdCm
         ewgPePud6mgFL/uAmi7kscuptINBD8m7cYpQAR63T5Ih/sQGFY9D2EIVBHDwoF9OGklI
         1wjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=6suAVZkVE7dqew+0tFdefovdH6dDgJo79Rl04LxPzQc=;
        b=Z0JDYbJkE9fTeSlq5AV+ufzDVoY2NHTfhVN2fEF0hNX0S2muj6YdIl0olFrdjHSj66
         Lts9A4LTc4ta1CL57CdgyVhxydfB63KQCdjCT66PMmfy+p3DzM2EYjCqWS4RJa2Nc9RY
         twSIG9fxPzGEcwIOOG02pbaE8t/JJTFBnabLSNatwmdqri/c3UOWxnYDvSMkPk2T8Be3
         wa67TVIbiGqW6HX50Ix/f5VUhQFRDuvK7XhU70GXbsEV9RpLOuIeBvfulijSzUHKOmtu
         nDET346Ev3WLMu0V/HsLHT6ckXxs9PbqHoUyvRplF/GcKHfHfOjgmFdK5Y4Qtse8aARn
         kPsQ==
X-Gm-Message-State: AHQUAuZXSdY1ueksgVbx1wVHKd6dF3XiyzsAjP5/ssUZ/HbnLSMEqRg8
	PAoSVSA6qV4MHhKyEA9GrhGoHOEDr9s=
X-Received: by 2002:a17:902:284b:: with SMTP id e69mr22604466plb.11.1551141193823;
        Mon, 25 Feb 2019 16:33:13 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id i14sm14415486pgt.82.2019.02.25.16.33.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:33:13 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder clear <elder@kernel.org>
Subject: [PATCH v4 4/4] Staging: greybus: Do not use multiple blank lines
Date: Tue, 26 Feb 2019 06:02:47 +0530
Message-Id: <20190226003247.15574-5-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190226003247.15574-1-bhanusreemahesh@gmail.com>
References: <20190226003247.15574-1-bhanusreemahesh@gmail.com>

Remove unnecessary blank line
issue found with checkpatch.pl:
CHECK: Please don't use multiple blank lines

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/greybus/control.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/greybus/control.c b/drivers/staging/greybus/control.c
index ffa41d31896d..a9e8b6036cac 100644
--- a/drivers/staging/greybus/control.c
+++ b/drivers/staging/greybus/control.c
@@ -15,7 +15,6 @@
 #define GB_CONTROL_VERSION_MAJOR	0
 #define GB_CONTROL_VERSION_MINOR	1
 
-
 static int gb_control_get_version(struct gb_control *control)
 {
 	struct gb_interface *intf = control->connection->intf;
-- 
2.17.1


