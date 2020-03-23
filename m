X-GM-THRID: 6807521221589073920
X-Received: by 2002:a50:a693:: with SMTP id e19mr23748970edc.303.1585007465906;
        Mon, 23 Mar 2020 16:51:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:f102:: with SMTP id gv2ls7746076ejb.0.gmail; Mon, 23
 Mar 2020 16:50:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuugBkIOaaeomYzmgQDQk8pJ05Vf/MaAZwSJcIFvSEu878K5T7lOkkOVWZ4wXZ0VKVRxPxT
X-Received: by 2002:a17:906:1584:: with SMTP id k4mr22627636ejd.355.1585007458903;
        Mon, 23 Mar 2020 16:50:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585007458; cv=none;
        d=google.com; s=arc-20160816;
        b=gjQQgj1pOAtY/mQ993IszGjG5bGp+EcBYtd4P7jIV5a83Zh9P5/xnRu7lN8iT/1dIx
         d/vju5wTORFrAfLbSRwwQwQ4swh/KOY2WwyoJMchwt/jYG5W3syVeDsluDL1L70+VDsl
         Bwx+KgXWJ08DxXyisDgXnNs5DlFjZat+LbRPTfoGskwVc+y4pLCF5T5sPTS7SS+YEmQT
         ng2KlWvkkgOKzremsA1Z2OAdOLNhLf8Os6DWS4tM/e1R+FI+7hsIKAEQRrkeBmrA9rMe
         1CG6fsDeCe7EukPK8mMtKNi4ZksfFuDNVYFP5oTQAB7ya6Op0wQx3K0j3JcTnBn+pETO
         eKHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=SWA3hhes70flmMFQ+DBu9HlW4FYbGJg9BWk0CNyUU0c=;
        b=ObGgfEbwW2BqG/lRuLSVz0OVRbV9r2msX0X46otUMVmGRxq9d3wA8OjDUnrE36lD4V
         T9diKjCf3mRKvqL0IyLPJGpL69wZlbJ0kv0vazRRGKI7xN1wd6VNUdWVfQr5bMF1M0Zu
         /ztP8AbBz78b2/xE6Nb6IxxP02ZCKC2z1znEB0gwTqkfTPOKFEK9DcQAOHIcpTjYMt7z
         XRiqWklpfncQDMOpkuGRb8+WIefWow7cQln/PSHqefasSzexvPNehPkp9tRpIcVNHd5W
         NYEPzkkZx3Ubv24qJ69PZmLAgm0/nUAqjVloPRU3UFU5+MB7wuchp8hZ/AkC4kAPAH8k
         73dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XKG3czh8;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id b6si349070edq.3.2020.03.23.16.50.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 16:50:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XKG3czh8;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id z18so1423877wmk.2
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 16:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SWA3hhes70flmMFQ+DBu9HlW4FYbGJg9BWk0CNyUU0c=;
        b=XKG3czh8j1OFzAoK6Fp58vjOQKKlA59ZnzXjKx96n6VkBfML2sGLu0hGiHXvvsWtqS
         U1YXZrUWZ4RY3c09SdiTHmcfo3BktT5xxOV2/6gDOJ6km4wwRK4UWzi5/PzCUUXZk4uU
         qvICiQgwruxfR66Cb72L8oQoOnE1cmKZBu/RPSO4FqjDInLwlM0XgHUrYVR42kmYw7/V
         7SQm8whZiPWJrILdC9TDPXvw8PlFjpJsdNnPOiQWKFj3tZL8PHcgS/I8upNr+3xEtP5V
         mHscT+f0rno5ywwKkPvJNzNIXO+0w0ie3g4z0ZROl5THEVq+ZVLd7P1SQsZE61qPw3aw
         3NoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SWA3hhes70flmMFQ+DBu9HlW4FYbGJg9BWk0CNyUU0c=;
        b=WDTH5+pH+1zrlNmNHvm7ZSvBWKdVzWMMlYagiofiR5HL3KdJwE+MgBCmQozKLphVCB
         mLS+jiHhUaCDIvC6Jm7JMKbipZFRToAnG8AMYl9GDfFBmHOwx0lS+w9TRYhBXVVtKdi4
         5oq3LkPlZ/Qp0JNKygA301tbHuen2XicpmW/c5w23iEagy9jNWrbbfZLgebHiXmcSfen
         I+6DSfU8wXPZPhEevD8HD1upnJ0Ogn1fT4WbI31tOUp7YWxE6KTyuaLDOd4qlB8senCw
         CLDBI+xJCRYkRGeFBaE1Iqzd7TkMfSBA5rapiv/XKkYmDdrftIfPkFkpYH59iRVfnBGE
         BB1Q==
X-Gm-Message-State: ANhLgQ3wGV0CnxI33E9/JnhtZTZRL5vZoesafCwPyMFB03l9txYvY5NY
	deVFFFLveghMUXb/qgx1byA=
X-Received: by 2002:a1c:ba04:: with SMTP id k4mr2002500wmf.165.1585007458732;
        Mon, 23 Mar 2020 16:50:58 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.98.222])
        by smtp.gmail.com with ESMTPSA id y80sm1782399wmc.45.2020.03.23.16.50.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 16:50:58 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v2 0/2] Staging: speakup: Misc cleanups and code reformatting.
Date: Mon, 23 Mar 2020 19:50:50 -0400
Message-Id: <cover.1585006374.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changes to clear multiple Checkpatch.pl CHECKs of
proper use of kmalloc(), and adding identifier names
to function declaration arguments.

All modifications made to match coding style and
to improve readability.

Changes in v2:
- Drop the first patch in the previous version:
	Staging: speakup: Avoid multiple assignments.
  This code is better with multiple assignments.

Sam Muhammed (2):
  Staging: speakup: Use sizeof(*var) in kmalloc().
  Staging: speakup: Add identifier name to function declaration
    arguments.

 drivers/staging/speakup/spk_ttyio.c | 2 +-
 drivers/staging/speakup/spk_types.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

---
2.20.1


