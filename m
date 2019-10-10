X-GM-THRID: 6745921261807861760
X-Received: by 2002:a2e:9bd2:: with SMTP id w18mr6989615ljj.140.1570728093336;
        Thu, 10 Oct 2019 10:21:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5965:: with SMTP id h5ls460063lfp.1.gmail; Thu, 10 Oct
 2019 10:21:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw84XuMoapxyzvpWYe7gkTxumJ5v39o+fjgEzkxGJjGrYt85uPF4Pr34jqE31usmsFS5WLv
X-Received: by 2002:ac2:555e:: with SMTP id l30mr6503033lfk.163.1570728092091;
        Thu, 10 Oct 2019 10:21:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570728092; cv=none;
        d=google.com; s=arc-20160816;
        b=ZWZIQhMVtly96KKXJS2nAK1+/FNzCbXN1JldO7w0qmzUMThkA6H6MnirdpmoCMrh21
         gXwNDK6VN2dhw94Q8ncLR287n5ToL4Sndd3TxHsMQfX8kgao2DrMDI4KKtZ6k+WQTQDz
         84fHxc4w+Ny7aoPpAQOPxzZQvgJ/yMVr3o6SV4GmTo5+kfHOQXaLZLn51J3Q9K+oOxGQ
         K3pcynR/kd55y166C8dPwM5iF1pnBQnkJGTuHrW5OOSUTroNZqmCsCZPiRbIJqwAZxZw
         PHbo/ze+k32uEtUYVMK7fU0RCZXjq6fBUgCieTf1Ph1bNKu9ixFR4QgVNVFapiF+QvTZ
         kSIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=tcMFZrYzkXthDN2tPL7urUoh2Atq6M3SFm7VW5KGajA=;
        b=yJNXaczu7dYnfNpTuA3MDPX8SJFFIgDjwwDafxMJ2rdiRlIfUP2rE3kCJwLGafaGbx
         q+RhaYKvKOx2Nl3LqdEWTtD7pWgG4X3y0LzddT5gJ7Gkxvam6rAoM09ODWFiLfnmGfSy
         bzN6qutcbhVx76pfdxj9GeC8rnuRp34a570cpc7dOjVMot83DMvH2Rs3O5d4HKPLoBCt
         hJP5mueYHBoX1ejWPGBVMfzofFIwGll03Vf0WTcRu9m9ixmr3cgm3UKTe1aQRzJDRQ1P
         RN0kqikZCOaOr9bCdAqOu5UbFSgzDVGviKbfXTcRak/rv8ai71JwvJyjyQb9+DRu7rS0
         PdQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LkcZfWzU;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id k24si19985lji.3.2019.10.10.10.21.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 10:21:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LkcZfWzU;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id h4so8881860wrv.7
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 10:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tcMFZrYzkXthDN2tPL7urUoh2Atq6M3SFm7VW5KGajA=;
        b=LkcZfWzUVAWf/bqrwArXIPyypKwGXOf1p3QX2ZQUZX9A29nRGH1d8b19tbfjBnk5L8
         sbTfW+HpzeLJ8t7mb8uiaXfutckcbijR6kDvAwMwyhl8+7ndlFpbiPux7tQEumPugjAp
         cohSbhOlPeE0L4dgVYDcnGgHqOzSJYIUCzb2EFXZn0dBjweOJynyl4689nG/TErLCe3O
         6oy2lJ4H99/xfuUJUu8ASzBtuItX+7x8Wx7Dclwlm9fo1BlMQwBhqo74KbqDa4Bah0h6
         ux053NaZChG7r16Yip7K/spNk4bjLJuocT7rLKvn1gLtl+xdX361/bO8wB7Fe7MOrl7w
         CAXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tcMFZrYzkXthDN2tPL7urUoh2Atq6M3SFm7VW5KGajA=;
        b=a4S2wUj8L1ZhDFCUi8v++wwn4dPv6oi6Gqoj4BiYESlZ2JebtdCg+q/ddPQL+7S7rq
         P302y1NU9Loy8RiYhVxBANGmKuGz4TYBr827lIRGSQE/bFfNNsjC2E9nDLQuErirxGX0
         NkHq4/fFI5r662YM/8B/VCsrrYY0Pbc2FM3k2zNnZYIJTnvoAXHavFqR63GH282SmE9J
         CD4z7Ybdgb8vpvFkFClm1X8yisKp0RsCtaHynmBKJtDVvwc0WA0jK06+B3iY08bmI+uR
         2YAswL1ncg9OEvPFqE52IxA9Umi1m9e5jCAf/GbHxxyPa/k7N7P3GhhsqJcFabBYZww8
         AJsQ==
X-Gm-Message-State: APjAAAXUeblL2MAoFfa1mUXA/CARgV1xtUXmuvJdBMDj9v6X6BIFQh12
	vSy9HQ5PSARQKyVWgqCNwIk8JzXXZDTa
X-Received: by 2002:adf:e646:: with SMTP id b6mr9138851wrn.373.1570728091281;
        Thu, 10 Oct 2019 10:21:31 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.org.net ([94.119.64.23])
        by smtp.googlemail.com with ESMTPSA id y18sm11734475wro.36.2019.10.10.10.21.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 10:21:30 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	dan.carpenter@oracle.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [RESEND PATCH] staging: qlge: correct a misspelled word
Date: Thu, 10 Oct 2019 18:21:14 +0100
Message-Id: <20191010172114.12345-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix a misspelling of "several" detected by checkpatch

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 5599525a19d5..28fc974ce982 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -354,7 +354,7 @@ static int ql_get_xgmac_regs(struct ql_adapter *qdev, u32 *buf,
 
 	for (i = PAUSE_SRC_LO; i < XGMAC_REGISTER_END; i += 4, buf++) {
 		/* We're reading 400 xgmac registers, but we filter out
-		 * serveral locations that are non-responsive to reads.
+		 * several locations that are non-responsive to reads.
 		 */
 		if ((i == 0x00000114) ||
 			(i == 0x00000118) ||
-- 
2.21.0


