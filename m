X-GM-THRID: 6755994568036974592
X-Received: by 2002:a05:600c:2191:: with SMTP id e17mr63359wme.101.1573002563652;
        Tue, 05 Nov 2019 17:09:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f61a:: with SMTP id w26ls490734wmc.5.canary-gmail; Tue,
 05 Nov 2019 17:09:22 -0800 (PST)
X-Google-Smtp-Source: APXvYqyFg2w2W1c1GxX8FZW1VB/xbRt6ZlCLMSBLOr6cIaXRfcpVX/KkP5piQMY136G8NfNgE8us
X-Received: by 2002:a05:600c:2389:: with SMTP id m9mr68726wma.65.1573002562723;
        Tue, 05 Nov 2019 17:09:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573002562; cv=none;
        d=google.com; s=arc-20160816;
        b=0jEJJ4+j/tS2HhDPFwCGYgG4aQZBHlymjb1z8CA1S0vHh3H53i2bh+7CK+uJXk7YMp
         hgf6HLIgVnN4rsp2+X8NBL5yq1f8KNcvNIlk5vQ6mXSKwHJJBYSbShWI3fpate/eMFe0
         IBYgSbl8o6D+e354STF4/I1X1pDPahaQOrV2KlYFEeB8wdoYcmhVT9k+gRsaSmfDUtrH
         XVnsqUp0jjF+xsEGn3FY5sTeCzciJPDAgdY2ItT/w2Xz/2RJxCZY/LRtBI8XyAGUvvcN
         Xy6WtkkpYiFY5pQoA2gAOf4zzzpicFeGH5+BweiTKM3N5maZKFxnHmRZHrxUcf5XXThJ
         gRtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=DVbx1gAtu75Uw8G0JGf+W12MoKBydyUt25Snh6iN0ZM=;
        b=Y9mI2aAdJzxJm6r1p24QCQOeu7OwVyyHCRbnfApKRoJh/ey82Ot7zmg9tIyZmXzGHi
         kX4me0qgzUvIk/p7d/CwWZQ7n16sJFWM8rSwi+WKi+PPlS6sXbn10/SLwFuGUSI7BgIM
         6fRvYaJoAdeV8f7/wnoNf+lrCK613pspun5bqqkW6mHH4cE793DYplE9GWysbCx5Ymgp
         aXb3tu3H8IylD1/VZ1TQMfptpVBCdXFhnpvjRqdVP8gxVTvdW+gLdJiPbKwiv7L9Z3PC
         QQR85UJh3coEAXL3T2mAmXeQtF3gNIkWiVV1t9Mbwn5EroAXasLhV3AqOyTcIiwk3nfZ
         9rwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W5fce0mU;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id w10si482593wru.4.2019.11.05.17.09.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 17:09:22 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W5fce0mU;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id a15so23728584wrf.9
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 17:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DVbx1gAtu75Uw8G0JGf+W12MoKBydyUt25Snh6iN0ZM=;
        b=W5fce0mUuuSKricWczLA3Il4ZWsRIur3muaXGKowXZS0k2kbZ/KUPcJKL8Ul1gc2mA
         46l2RtLqrY4IL3SXKX5WQyHXuJD1pUboY34t+8Zp8/0iN4i5hrnneu+5HztaRimfFpK/
         X4hhxlU37ivKMmAx0KtVOFEtz3XOryh1Yi9v7q+GB1YGcj10LV1lpY0nV+L51Kcb+yeR
         BgftAuvztexvoPI8/9y8o6X++EQ7jueRybtRQs7ECHk5ifbezPAuGS7iLEfTE/HAbuGG
         K18nbGof4F2YeEmEMsO9+FwkCP+cYVI0fomQsHqUDLgrmJbPV52t3/9/2HU0b0Hi5YCk
         pqnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DVbx1gAtu75Uw8G0JGf+W12MoKBydyUt25Snh6iN0ZM=;
        b=JU2hGUB8DmdmXerD4UdYbLqA9aKDhTJR87gRAzmSSrnSZBAeUeqw4HJOnzuziwtenz
         Y5GnnTFE2H1l0zpNeLcuZqelOrM1o38RTk9cVms18eJVKC9A5nzbf3TmgupqF7le/Ca3
         ft7RunrM3HLI+RXZsRTLMZRZ9N8dbMG6xL2bl9V7J0anYJxWAmqedo2LucA+wMHtiljO
         V5UtJ3nVvNRA03XwK2p60wqre/OSnDluklZEFMl4aJz54/BUWqz4Y2uhrKQZYKG1gYvk
         XqczUn7Htl2OD6879TPYNL9GRbnPmcC+Yy5YRxaiYnB4A42gRtANnsd0R+nLHIvQc6u9
         JN1w==
X-Gm-Message-State: APjAAAV/clHnXDH8Qp+C1MB4RMEmeL3jxOJ9ij1nxrC74WhBiVMK+Q/V
	AuSmBp7h8+gI8c2TUzBh7aI4sclJvV+c
X-Received: by 2002:a5d:6a08:: with SMTP id m8mr162315wru.52.1573002562056;
        Tue, 05 Nov 2019 17:09:22 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id b17sm13334650wru.36.2019.11.05.17.09.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 17:09:21 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jerome.pouiller@silabs.com,
	gregkh@linuxfoundation.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH 1/3] staging: wfx: replace uint32_t with u32
Date: Wed,  6 Nov 2019 01:09:09 +0000
Message-Id: <20191106010911.157294-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace kernel type uint32_t with u32.
As per recommendation of checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/bh.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
index 955ed3a1dd73..337af22b0150 100644
--- a/drivers/staging/wfx/bh.c
+++ b/drivers/staging/wfx/bh.c
@@ -239,7 +239,7 @@ static int bh_work_tx(struct wfx_dev *wdev, int max_msg)
  */
 static void ack_sdio_data(struct wfx_dev *wdev)
 {
-	uint32_t cfg_reg;
+	u32  cfg_reg;
 
 	config_reg_read(wdev, &cfg_reg);
 	if (cfg_reg & 0xFF) {
-- 
2.23.0


