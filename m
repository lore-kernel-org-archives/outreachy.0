X-GM-THRID: 6745889659545452544
X-Received: by 2002:a17:906:940a:: with SMTP id q10mr4501423ejx.250.1570649831184;
        Wed, 09 Oct 2019 12:37:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:1114:: with SMTP id qu20ls360353ejb.7.gmail; Wed, 09
 Oct 2019 12:37:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxJzkXgJeoz2ZeHHekvGGHCkNY1smed92JtC5QQRAh8/uxTsOJjR/UBIkkKKOC8fLTXU5eK
X-Received: by 2002:a17:906:edb7:: with SMTP id sa23mr4490077ejb.263.1570649830210;
        Wed, 09 Oct 2019 12:37:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570649830; cv=none;
        d=google.com; s=arc-20160816;
        b=lgVQfJo8w7l5bS6lXtjYoVXHlqD/LfUmj/T1SWrjg1iJdd+iWkQZ+zhsCTQoOR0wQx
         EGIh00b3PA/8UiK2MDMYWGIpMwzNWelm8mnSGbJdnmXf9CnbuB5pI5/8+Fd4E0/5P9K7
         YXKmDDJ6JIo91M/2SzT0aHPJQP/tO5pe/xx/c1oR2EEZydZM68iURsejRlNZ1dENQXx8
         BU/btaXYElMynPrMpemNcW2mVFSMkTfC/1Ko/MR81QgYVLqN0r7jaPJ0s8FE/qpiWqmK
         fME/VsGuqG0LZrudrGtZzbCp4I9y9es6JpqVYiT4x2z4h/yWRGCe88NvIPPPGqf0wjS+
         /5yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Y7r5Z69fE1yE+XsafCfc/oZ4rs1PL76oFBNneE1EVE8=;
        b=mCQt4StwFZ2wOTtCjcSIS0RevVPY/cxww9SE8RHJY0DUGXp4qAx0sDJmQ+lW4eVTvk
         O/kDGqoDTTHBbhssnxV6lC72hy2PJ6fEamvO3H2ruGFVnxxbSPEOs/nMNTuVULGrtu7l
         4+MFHa/39aY9+gFCQPdR8MAOlSwqFTC9u+18/k5gdTamfSNTdXoMF8aevlRo4NxUuARP
         PkpINd+KzpCg42gY4/GOiPT1J59IIjJaHn6xuvNKcVw/KPLNFSKvthJKzRAmNnL+ONcM
         B9NVnu8d1WiU9/Ox2IfUhtRFA2469wpjjQHDvMp+lNL/dW/mC4l6PZ93Jdc7JpzeLS/x
         qqlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bXhDVAbB;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id r3si166672eds.2.2019.10.09.12.37.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 12:37:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bXhDVAbB;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id r19so3923676wmh.2
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 12:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y7r5Z69fE1yE+XsafCfc/oZ4rs1PL76oFBNneE1EVE8=;
        b=bXhDVAbBSH3nu0+3VBqanYJaQtnG98xE7SV1K8c3DHjr98GUJ2+XwhgVwnX+OVbGb5
         vwG2VeyXxgj38EIhXlxDNJVyYx/APSFtH3OAgpD1mq1CKGv/QJeqgeZiiK9uPJrUMQCj
         5PD4B/kL1tmrvJGSduuDAb37gYg7XQrD9dIL30kq9HUqm9/xYxk1mQ3RUzn4gkgu1u4K
         LcFOQ9lCFeXvPl8gDkS5yXQ1jYE49yuEoRAXR1klzwqq+r34taKXdbrXOv8SZv3X0Vel
         01RUeYDU9UeZ3D9RZyCwOoPNg6b0PfriaEsUHbrq05tWR3qrxQLo7MJHVOOejjKveqHB
         Roeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y7r5Z69fE1yE+XsafCfc/oZ4rs1PL76oFBNneE1EVE8=;
        b=CQYMm+Afu4Mfc7CRwNLp0ptNYEgMwpIRvyVQo9GdicGwTOuVFvaHu3MnsNcEhql/Ao
         naS8tvMVT6tT0J/9Q3/hTPtGKTb97psCeZJFhR+Z0KjrLOilUuTaDNo+gPAG0WTU989r
         9Wtk6AlRy8VMi9WQvQhlfctdznbbZjLMiA7G5bEKnkbwRwr46ni0H60FNVuWRtkU/6Be
         EUes0TtKuhBFPZG0mI9fgUFayNxnIlSNzXgugZgrCtqnxNeBbircBUV4nHns9SP9MeZU
         kn8k0hCm0Gb12h5ascRyHok5ZwakCl3/0NRFukfOUxSooqScpuLHDWAfxlHyMsFfdIwf
         vkDg==
X-Gm-Message-State: APjAAAUC6xmUreKjSs0UI45dKWlCyvPM3q5bLGu5whQ3wsOEIK2Q7bdR
	pnKTrxgVccwGxq5JL5xMkBRWywUXiZK2TwU=
X-Received: by 2002:a1c:dcd6:: with SMTP id t205mr4005907wmg.10.1570649829007;
        Wed, 09 Oct 2019 12:37:09 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id n26sm1603548wmd.42.2019.10.09.12.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 12:37:08 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: grekh@linuxfoundation.org,
	GR-Linux-NIC-Dev@marvell.com,
	netdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: qlge: correct misspelled word
Date: Wed,  9 Oct 2019 20:36:56 +0100
Message-Id: <20191009193656.5209-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct misspelled word " check
 issued by checkpatch.pl tool:
"CHECK: serveral may be misspelled - perhaps several?".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 086f067fd899..097fab7b4287 100644
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


