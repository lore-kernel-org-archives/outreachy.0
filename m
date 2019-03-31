X-GM-THRID: 6674500883205586944
X-Received: by 2002:a6b:b58c:: with SMTP id e134mr8238030iof.29.1554028407828;
        Sun, 31 Mar 2019 03:33:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:da01:: with SMTP id z1ls1987862itg.0.canary-gmail; Sun,
 31 Mar 2019 03:33:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyxGHjEEIqYagJhYnhvMvlAhDHpFSVBdJgKo3ajOg9cR2edppNl3AUVHNCPZxjUVmlwbuFD
X-Received: by 2002:a24:9fc4:: with SMTP id c187mr4738745ite.23.1554028406938;
        Sun, 31 Mar 2019 03:33:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554028406; cv=none;
        d=google.com; s=arc-20160816;
        b=wwF0phKIRLQQ/WG18Y/FUf1rveays6nm9K7Hklz5KCEsRS93GGmDcpd0MQBa8BZm0v
         /37ESq4Io6sAJzAeaRmJtKIK4pkPHMdMBBxkxWCMulPP1gbeIsyIgZyR9tly3W1w3uWk
         hyoU0clfoWi4KA49lQpx3zgOaTJHVh/+5M8TFR/LG2qPTMCbtz/5ZmgjuNzCk1FHB3/z
         iSxO1XkTWF9d1vh93Bk9KfT5jKlXvKCaoD2RQEi5tQ4GBTRENypyau+Y0q6aTBVT/OCa
         1WNtfd3VjoLnmdmpkaWxlpZwqXYnyllbLHVHh7gBaLja2ghY0qrkaPaK/DlelKLhs+Ib
         AGjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=hnb65HzkAROgstAGqSrpjDFg4oc6GCoH/4HaDOTFqT8=;
        b=gddF+D7UKOyXiNLAaTXkSr0WbH3+P7/tfMFYePgkQxzs26q1g3LF3o0i0I2So2bM3f
         xNkNcT8EgCUEu+1uMffUi8/Ovwqffp93MStILgg5bh5H3O2KlosFMwNtr6GucEWUhzSy
         yJlAVieP4CkLzdL6lHU+wI2HQKZH7TTk0uk3ERX7EotclweUu/JwEwIlL6P1Itn/D+Rb
         pY2EYMY8HyjzNc2WKWBFI3HSALZ+5r9Ad49KD68fkHEmvFP6vICR//IEYCTy+UmTaPMP
         5xFZh/pzqIBYM8FX1PbA18YDPvdk9/apS6r5noO+o2+uVe0T0Rvx97rc6BHXIhkl6J9S
         AWkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h6bM15gK;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id j2si342383iop.0.2019.03.31.03.33.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:33:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h6bM15gK;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id t21so3118949pfe.2
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hnb65HzkAROgstAGqSrpjDFg4oc6GCoH/4HaDOTFqT8=;
        b=h6bM15gKgrKwdWiZ1RFDFZoU6Az0GOZ8C2hOS4rfy4oyS+xLhe2hTTD3kV1AdFAC4r
         jTYjRgJapbrchxayCBDbUoC0L02COdncb7LsHb/58UEHvShJ03C+x2PD2FD74w8TbmJs
         zUKIKi4CR8eP6AudHwVvyJIjwleHXA4g6yEKPQN9wPpFRbaOzDXijErYDJw4MOklW356
         95guTcLV6t7MjQnXpsQpGRxWD4Hb7HqGZPPf2Wvp+sv6aEyXvkRGGGUjJ1ZSN4RMkBKD
         Hw2dIh3nDw88N8NYA/cok4LF3cGBcsLHYNE9HFQor+zJHEy6q+2Iy7/VH0F04IEF0rpo
         8Gpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=hnb65HzkAROgstAGqSrpjDFg4oc6GCoH/4HaDOTFqT8=;
        b=daZig9ps6682KyXaKtBv7hAzILxDejMb+uLcAdq7LuUrkx+mHZZ8zBmR/xQxPAt2Tf
         4A7vUK146FFBY0ElyO6INY7O0C0k5EKJ1woN8QK+x1PvHWEbtJKbBV4iR0/KobJ8O7MS
         TykUzdRKBVI9833lqRLGheJVGUL2ZRtexOayCzqJ07fB2NZg8Z/vsM+mP1hvfSUxxbMd
         gC8XFw5ZCxCB+UXcXkvwUJyDeAw9pFFi1OYZBY3dxEl+j45UZAqxVNarxmwWjlNeV+JZ
         h95WzzF9yzqObqpA2XjNQzDIgG8J4HUBoWz9LlA1lfj3+L+oXoiYq0H+IaD90x2hFfHg
         sl+w==
X-Gm-Message-State: APjAAAWHKS2LTcdMurMGQ28BmG4Hl/nudodHzXsHO8UzakVlPw+zcwEK
	kd7m65oOV1IAIKQguZLRGpI=
X-Received: by 2002:aa7:8443:: with SMTP id r3mr56159750pfn.143.1554028406389;
        Sun, 31 Mar 2019 03:33:26 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.95])
        by smtp.googlemail.com with ESMTPSA id j20sm9372265pfa.158.2019.03.31.03.33.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:33:25 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: comedi: das08: Prefer using the BIT macro
Date: Sun, 31 Mar 2019 16:03:17 +0530
Message-Id: <20190331103317.21412-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190331103204.21358-1-sanjana99reddy99@gmail.com>
References: <20190331103204.21358-1-sanjana99reddy99@gmail.com>

Challenge suggested by coccinelle.

Replace bit shifting on 1 with the BIT(x) macro.
Coccinelle script:

@@
constant c;
@@

-(1 << c)
+BIT(c)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/comedi/drivers/das08.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/das08.c b/drivers/staging/comedi/drivers/das08.c
index 327ecf9aea30..65e5f2e6c122 100644
--- a/drivers/staging/comedi/drivers/das08.c
+++ b/drivers/staging/comedi/drivers/das08.c
@@ -236,9 +236,9 @@ static int das08_ai_insn_read(struct comedi_device *dev,
 			 * COMEDI 16-bit bipolar data value for 0V is 0x8000.
 			 */
 			if (msb & 0x80)
-				data[n] = (1 << 15) + magnitude;
+				data[n] = BIT(15) + magnitude;
 			else
-				data[n] = (1 << 15) - magnitude;
+				data[n] = BIT(15) - magnitude;
 		} else {
 			dev_err(dev->class_dev, "bug! unknown ai encoding\n");
 			return -1;
-- 
2.17.1


