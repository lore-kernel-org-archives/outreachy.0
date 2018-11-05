X-GM-THRID: 6618908371010453504
X-Received: by 2002:a19:a28f:: with SMTP id l137-v6mr1843089lfe.14.1541452478451;
        Mon, 05 Nov 2018 13:14:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:424d:: with SMTP id p74-v6ls725032lja.4.gmail; Mon, 05
 Nov 2018 13:14:37 -0800 (PST)
X-Google-Smtp-Source: AJdET5fwEwk+KeQPpsU96bcyIsgASNYI+TAnrDMUvHSvAUFY/6kncyNZ7YzOkUfW5BbKxEA+ohFp
X-Received: by 2002:a2e:98cd:: with SMTP id s13-v6mr95672ljj.30.1541452477674;
        Mon, 05 Nov 2018 13:14:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541452477; cv=none;
        d=google.com; s=arc-20160816;
        b=BvXYYnvF5ZFvVa7fNdumbv/vYMmVLWO6JHwbXNOBi0TnW/zVM8fc95JW09vXRn6e8y
         fucT4WiK4sIWDHwqIGuH9KWiWiQvUXRUCgXZpHWns5GUQbCTskXDXT3HvxxNZDMYUQQZ
         8hw6t/VHU3ek3evdnZT2RfYaqaN/2akgSZblnfht9DS3bExMZlFeqRqLacWQF/6/oNL+
         ta7U+2Rb8qRM8wv1vgTFdANgb89ovlWxpms6D2g8jtqKeITzOa1Fbq62Dfrdw9s+Pobb
         +gZ1LSIwzQmJpRjVCEus3c7GaTO9q9mugG/5rIn1I73Blp0QB2zor72YwtBSMqfdDrgG
         tOkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y/SJVA47wNpVGZ68HqApi2Phfw4wUywJYZ5IiOdgjf8=;
        b=IyFAy3OqM4qp6ov0mjPyCzYnOERP2HCmWveuqEsjgq2QAqYtvYSYbMykeO1YJAoWn6
         MMMZdY7jX+xEj0TZsbUF0HpLTZCOQDFJL5eNd9VFqkWb6fM2TX+temeNCyY6BeAx/a+o
         OQH5Kdh6QGR2r7xry0y6Czmijy8Qqr2b5ooTGXIuZI4NZwLB1kEGYgWJYRalo1yKMckT
         3mxIRumDmOclTqO2IgbY61apuutMZIFD3Y5kmmIiml8nPwZfFdPMXauuWeXYgv0l2rLz
         VYIJfAv/tzwvAbE56LctcMxU4bhNHoluoT43kvNh3AmyBV1x10PUAlDTnXkESnqL7dId
         yGPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HrJl3Ovf;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com. [2a00:1450:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id w13-v6si1592847lfe.3.2018.11.05.13.14.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 13:14:37 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) client-ip=2a00:1450:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HrJl3Ovf;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42e.google.com with SMTP id k15-v6so8148070wre.12
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 13:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Y/SJVA47wNpVGZ68HqApi2Phfw4wUywJYZ5IiOdgjf8=;
        b=HrJl3OvfLjvtN0W7ZacKOpmeNaCG+aLwUuoLwG8jRMXB1qCrwG+AXbe1834PnbZzHX
         svYJ18X5227U4CJ9472wLoyNAhphdqns8H2TdfDGuP8edVNaIFjHYoxrK61z2wLydDPl
         VuTFGepsugr4CCFUYxuD22QUcDqv/jiXewRS8Mq7kJMIei83jJ3s+Hcidb66FQoL/BSH
         EYxkCu5BIhLynbAb7tMoRUAy8Xuk3ObMZ4nqMvi1CFCJBQAIYBJbjbiKnLVorTx3M9N4
         SpfUvycYRnP3OtGTKG7/lhQakkde2ZKzXTNMX4MqXiHMxCGbV7MA/XGznZ4qS/+AymIv
         GW4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Y/SJVA47wNpVGZ68HqApi2Phfw4wUywJYZ5IiOdgjf8=;
        b=lL52OalJjFmxaynMguTjtMnV38IYZUSl5I0iNA5lT6x/Lqxr4GBSf1snaf+NlVRVvx
         iVIdYD5Fv8FsGfCmYVEHcl5RAKylEZsei+Ds60yoRUCa2XegIrzoW8peRMetKc4HXsyG
         XIfBgrYXeyTZi5Bm3kwYUBEipV6HOXyzl0kF4VnnGUToFPyp4184+3AZjOJWN6/cKfgI
         L0WrzOIS68DevglHJanreY4EMgeA0/F0tRxXr/Wp3/DsVH48cVwdVgk6PBZEpPgxxBCd
         3kNhIXwEaExg5H9qlKOFTgVCetQ6J2Oml689n7tdzNTI91Dq/Ya71OLhTrZWPBMHL3zG
         WnQQ==
X-Gm-Message-State: AGRZ1gII7DmVzRkWP9+WqHRFvF/mmaDV5mWPbYWLJbpHRq3ayc/5yVoh
	1FoD5y9mHJkhVBf3jLGwIwc=
X-Received: by 2002:adf:9125:: with SMTP id j34-v6mr11938552wrj.3.1541452477096;
        Mon, 05 Nov 2018 13:14:37 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from localhost.localdomain ([37.142.204.130])
        by smtp.gmail.com with ESMTPSA id y195-v6sm34976461wme.22.2018.11.05.13.14.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 13:14:36 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: helen.koike@collabora.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH vicodec v4 0/3] Add support to more pixel formats in vicodec
Date: Mon,  5 Nov 2018 23:14:14 +0200
Message-Id: <cover.1541451484.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1

The new supported formats are
V4L2_PIX_FMT_GREY, V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABGR32.

The returned encoded format is chaned to support various numbers
of planes instead of assuming 3 planes.

The first patch adds new fields to structs.
The second patch adds support for V4L2_PIX_FMT_GREY.
The third patch adds support for V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABGR32.

Changes from v3:

patch 1,3: - no change

patch 2:
- replace the 2-bit flag FWHT_FL_COMPONENTS_NUM_BIT[01] with GENMASK
- add TODO comment - handle the case where the encoded stream is different format
than the decoded
- allocate maximal space for the V4L2_PIX_FMT_FWHT format

with the test 'flags & FWHT_FL_COMPONENTS_NUM_BIT[01]'

Dafna Hirschfeld (3):
  media: vicodec: prepare support for various number of planes
  media: vicodec: Add support of greyscale format
  media: vicodec: Add support for 4 planes formats

 drivers/media/platform/vicodec/codec-fwht.c   |  73 +++++++----
 drivers/media/platform/vicodec/codec-fwht.h   |  15 ++-
 .../media/platform/vicodec/codec-v4l2-fwht.c  | 123 +++++++++++++-----
 .../media/platform/vicodec/codec-v4l2-fwht.h  |   3 +-
 drivers/media/platform/vicodec/vicodec-core.c |  35 ++++-
 5 files changed, 182 insertions(+), 67 deletions(-)

-- 
2.17.1


