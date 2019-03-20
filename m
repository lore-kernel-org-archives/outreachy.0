X-GM-THRID: 6670543913490579456
X-Received: by 2002:a62:ee01:: with SMTP id e1mr8637004pfi.58.1553107032016;
        Wed, 20 Mar 2019 11:37:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:322:: with SMTP id 31ls1766927pld.1.gmail; Wed, 20
 Mar 2019 11:37:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyEETjUnZ1/HRAhFvdEkK6AGWh4RbSp4zH1O6+E2MLMXMa3zSq1URYq4ipMsMW38XFUObgV
X-Received: by 2002:a17:902:e20d:: with SMTP id ce13mr4012912plb.100.1553107031175;
        Wed, 20 Mar 2019 11:37:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553107031; cv=none;
        d=google.com; s=arc-20160816;
        b=dTvgK6eZ9NxIzkz6zUfFZtSwOcIa3l4Iz7d3UJm9oRBl46k61YfK+w/q+j29wKcGbK
         niTF0h/xI4dAhL1oYD7vZBDhf3z4mMUyTI83t2mdD4PDzoisSs6qDd/qLhtDB7sU76zA
         g68h/dVBZ+Z4Lseh5PekclCtCgnlRnkH/VUpLkQ252gTEossrrYdoA5jB0N+GX0MjUQZ
         MJZsgCkVrcpho5EaMtFJKsCp8ECyzVA+lb7PHI/72Pg9ylt5tAApmi2L7VzBN5BN3Ini
         0W2mB5K3oOCW94wNKQ2zKqlXf+kShlNGf7lT2nIWlV7KxexvVTP8mtRxHmOY8YDoVZcv
         /Mag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=7OwfsT7yGmTorvGZxkJA6m+mBYovRmoNinuO+nHwg+A=;
        b=uT4m2Qls96jUQ+s5Y779ngptlz0Hkk81cWFdlT5swY5/2lemTI7FbENiymunGCrRRO
         W1ohHdpph16NAS53wEBeSMvmmTZTAJ9Wos9RITrZxw9WW5LWTFUxu8QE6zhirrA4a3dw
         19ZUSPHIkb1ltkqHsH9BADHmp7XQpj4RzTdFs79nr4bwg9QwNz3UsOcv8IsBn47XNoCc
         sOguzxUpjE3cxSg6XBGIteWcqfeVW0/eA6nIPiv4Dg9yw/z1F25CJ7vgNhxULbcNEh8/
         ymMpifq+Eu73dHo2jrBozWhT4WPwZ2pe6u/LgBow/jz98XtCmlK/lo9hv2S9nvraNJVT
         RkrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hylYNikY;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-it1-x134.google.com (mail-it1-x134.google.com. [2607:f8b0:4864:20::134])
        by gmr-mx.google.com with ESMTPS id c6si204025pgm.2.2019.03.20.11.37.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 11:37:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) client-ip=2607:f8b0:4864:20::134;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hylYNikY;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x134.google.com with SMTP id 139so379746ita.4
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 11:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7OwfsT7yGmTorvGZxkJA6m+mBYovRmoNinuO+nHwg+A=;
        b=hylYNikY+xLqWqIhKWn9/bghUzYwavm0tLdpUCgSoY3rjOgVFsKd0d1FRXs3tnuIT2
         J/IKaHD16tLz1w1OtQhdJSNt9vfmffpVntUPPx+sKslxOwtPMpAsScdYOdAaMZgECHWo
         JlNFd5xaPL8q54OKOwAcoqJb5WG2BNLkiU+wyVV+fgDtC8yy9dDISV1erM5nBOQQ4rSi
         nfKXZZjD8Zu4JUkTHeNvHo/ze4iez6vrjauwaa4ha5/sqs2+TdJQngbFX3iBXUq3mxMI
         tyW6iJ1ojoyIscvkgy2MyQXhXTxxj/8jbjVBE7yl5PSfaYjXllI20qQBQ+As8jEB1cDI
         EP0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7OwfsT7yGmTorvGZxkJA6m+mBYovRmoNinuO+nHwg+A=;
        b=ngH4G2naagHfQU5zR3kMPpZMurYM0yXBjiGfshXkkgZfWfGnePSrR3ycjJtq7o0JLL
         YCfGhtDn1Mg4jh3pkgDlggQTLkiWhpqK9NEAHR0RSMpnLfoCi2tTkc9/oBDCed/PWS/I
         51CqaY4LGjdK1qf0qmMFfWJF2oO6N6XlzOIJtDxsoAoRBNtGMG/SK31RT4Er8E9ijcg1
         RUHtpRjj1vHFba0KsFPUnfZSY27qjOjeA6FJpiOkwzf9UEFUeLqUE/AvLqY/z20TMUuX
         UzixUzXeTFgXP++P8beqPb7DvxViTZn6fHpz2j1/7Hj6EQ3fJHzupFWBbMFAFYYXiSTF
         yS+Q==
X-Gm-Message-State: APjAAAU1czQBxNUfzdQ7tWW6RDmzHJ01RUUHz7R7F/soQ2xT9VDXOzLD
	1qARHg2ROo9GBL33Ib2hPG40kiPXIy2Q
X-Received: by 2002:a02:3806:: with SMTP id b6mr6135493jaa.60.1553107030720;
        Wed, 20 Mar 2019 11:37:10 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:b901:3ecb:17cf:ca79])
        by smtp.gmail.com with ESMTPSA id m25sm1485224iti.16.2019.03.20.11.37.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Mar 2019 11:37:10 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: gdm724x: Rename dftEpsId to dft_eps_id
Date: Wed, 20 Mar 2019 14:37:04 -0400
Message-Id: <20190320183704.8073-1-brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1

Rename member element dftEpsId to dft_eps_id to avoid camelcase.
checkpatch warning: Avoid CamelCase.

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
 drivers/staging/gdm724x/hci_packet.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gdm724x/hci_packet.h b/drivers/staging/gdm724x/hci_packet.h
index 83fbd2515467..6dea3694afdd 100644
--- a/drivers/staging/gdm724x/hci_packet.h
+++ b/drivers/staging/gdm724x/hci_packet.h
@@ -40,7 +40,7 @@ struct tlv {
 struct sdu_header {
 	__dev16 cmd_evt;
 	__dev16 len;
-	__dev32 dftEpsId;
+	__dev32 dft_eps_id;
 	__dev32 bearer_ID;
 	__dev32 nic_type;
 } __packed;
-- 
2.17.1


