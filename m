X-GM-THRID: 6670430367909937152
X-Received: by 2002:a24:c4d5:: with SMTP id v204mr4296884itf.5.1553080596604;
        Wed, 20 Mar 2019 04:16:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:80c6:: with SMTP id h6ls757331ior.2.gmail; Wed, 20 Mar
 2019 04:16:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxxbm8zAPx9rhUOS43oN8dQGEiZAtmzwO1K4V/NISadDbPGuKC+nCxY8UHmq5YDG8MxSynO
X-Received: by 2002:a5e:8a07:: with SMTP id d7mr17153786iok.7.1553080595834;
        Wed, 20 Mar 2019 04:16:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553080595; cv=none;
        d=google.com; s=arc-20160816;
        b=pO55g3k1AWUWbhwgW26nRkXY5ukLaQpDvmQ7ynsjdHi5iKvpMRFslB9NvIKmDVYnR3
         ZTwevuwZjcrRH6RP7/CW9XcligFDpvgH9kxDAqRAhDuk9tBbbodNpROI2d5R3F45Ci2C
         rCH+6TI6Z4OYFw+FxwvOdbOYOaHcdn2QqD6z7E9lpS9svo915EXy09NNMe1S8cKi5XZC
         1DuzPAeXBK74g89dEwP7SQPKgEJAOChR8j7mZEg9l3qVNNRK265+/8BY0oQMKP7EvGC+
         SrhCg1rb+o13UPT+3pY0fGylX789bmNLB/6L2FzNNSuwaEVxs8KtjnrkxuSuwSUsFn4G
         hnLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=kZEZNVcyCGd2X/mxnrh2NaRiGZtA1QyFPqnuEME9Hts=;
        b=kgkZecqLHZcftlJhDJyCPOnNeM0j3HEu9k9wGL4Fab1pwZKia+4bg7SaGuz1L512ZL
         HxqxQh3tp1XlDSvXsxRoCo3dWmu6oi6brDuG8FVK1idNvwiENB1U/LN39QEiSEN78ydd
         /kmQuucZtlMpBQtmJNK87GzkbKJdq7SwRHB51RwCNcP4IlNDJ83gD9TR5pf8YHUWhK9g
         Ktb3U/bsuXM4wsP0mH/62XMgmemB+OugLxbWXBE+nzKyLZzGYh5+KSiyP6IRZkAraNNP
         M0k8MECe5zDCfj8dKuQnhek57KP587kqphJJnWLEPUUiwMYsbvJHJU9jXjUr+hM+9cKb
         1Rvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n1Dqdov9;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id t17si144014itb.2.2019.03.20.04.16.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 04:16:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n1Dqdov9;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42b.google.com with SMTP id i17so1706782pfo.6
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 04:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=kZEZNVcyCGd2X/mxnrh2NaRiGZtA1QyFPqnuEME9Hts=;
        b=n1Dqdov9ruJELR25/cbMBHsaqCwDE2B3kNF+IyC/nM1iQjh30ufkxegA5GSUPDG3HW
         2WqYgz5oEU77sBG1ThRKwFSrQ7VCPfGsepk3dGH0SJRxOskYiWqJaQPWEMS6pZ28KN7E
         DPjWXpGhoWBiJVmJAoJM089Yw4QuZSh2Cuic6WvmuLoXqK+LsRtBdEOp5XIWHW7kYERV
         fYweT+yalQbjqJxxdy+Vu44zL7YMbwWtsitfP86iboTNKIgb0KLexzTBlIqm9xRRfnTw
         0M4P49sXEnGVPrKL0UcrzPEPtvOAwMZ0TiXdcSkmJ8WoQas9PwK6yViW1UauXUNBCak2
         2P9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kZEZNVcyCGd2X/mxnrh2NaRiGZtA1QyFPqnuEME9Hts=;
        b=XUQoHg2YK9BuRx9jPgAGKljARI+D8yVOUGCAI3KhoT9S2wmOia4rZvu3yNwf7ptmpn
         u0nB7ecKQZbKJTej9S3QHwcJjkS5Sm+bXJGEURiT6KzUv2krXSzsLGEWx4urXoXdsRFh
         L8FANCpRv3t/llil20qWpTr9xb6uhbesuByJwsvht+SpvE5Ky7PtjZcHkTDckIWWBSzc
         5PbGaRK3oia5v2GmTOqK8j6p0E9gOInp668v+W5H7yjoX6nBtT4w5eMxUbJpk2sSID+H
         Yr4QboB7MYBEZYk1ClMPwypmdVEqwCXN15dQvuv+j9iBsAqu9bBGscq7Xiu7XgrUHl5m
         vNLA==
X-Gm-Message-State: APjAAAW6107JRoNmF7HHV08PDCDf/jr/xXPB5d7C+XE6Wy7a5sOoStrd
	qtxLqqIYSlHVybiPWPf9HHVU1Rm6nuA=
X-Received: by 2002:a62:39d6:: with SMTP id u83mr7197086pfj.161.1553080595536;
        Wed, 20 Mar 2019 04:16:35 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.183.24])
        by smtp.googlemail.com with ESMTPSA id l84sm5456726pfb.113.2019.03.20.04.16.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 04:16:34 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: ieee80211: ieee80211_rx.c: Remove unnecessary braces.
Date: Wed, 20 Mar 2019 16:46:18 +0530
Message-Id: <20190320111618.5785-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove braces around single statement block.
Issue found by checkpatch.pl

WARNING: braces {} are not necessary for a single statement block

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 1cbaf8a4ee1b..0288eec7179b 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -604,9 +604,8 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		return;
 
 	/* Rx Reorder initialize condition.*/
-	if (pTS->rx_indicate_seq == 0xffff) {
+	if (pTS->rx_indicate_seq == 0xffff)
 		pTS->rx_indicate_seq = SeqNum;
-	}
 
 	/* Drop out the packet which SeqNum is smaller than WinStart */
 	if (SN_LESS(SeqNum, pTS->rx_indicate_seq)) {
-- 
2.17.1


