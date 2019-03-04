X-GM-THRID: 6664347653912920064
X-Received: by 2002:a24:508e:: with SMTP id m136mr10196630itb.34.1551664353257;
        Sun, 03 Mar 2019 17:52:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:a91a:: with SMTP id c26ls5722725iod.0.gmail; Sun, 03 Mar
 2019 17:52:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqx5W7WPpwg1KGEeisNq3lZQvGk4/o82R+cfBINrlrK9PU45XnGBm0EPQ213ggIlC641aBeb
X-Received: by 2002:a6b:5f0e:: with SMTP id t14mr10472051iob.27.1551664352536;
        Sun, 03 Mar 2019 17:52:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551664352; cv=none;
        d=google.com; s=arc-20160816;
        b=v9o2n0CH+i+qvV2aprygGkFJ7tV1NqvrXz5qW3Gt55whJqxl5se+5Vhi83H+Q51EIA
         3TP2ElK/8pV/crMbJ/uJced8i/IuCb3j7D/jZt1KIXqvvlTAXtbuEbmfXCrl+zIAw8/w
         j/L2OaHo8evcAfO5fKzSQ+VWcYcnqzm8Cgxqo2n1gtjHS189ZHiqFk0c2pvRzX/tk63E
         VmSSIfX1KMKkpPkzxdRFj/TOibKA7EvPthmPWBPA+QOHCE2NpmHQ8Hq/sZUq0EDuS++o
         /FZVdZ27/hV6SMoZkhVhUGohF5SYB0JzW1Npn4AjYZFiJ5dBNpYw8OfSr+zXvQ/7l28V
         Ot4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=jNO3+d+FMyyyPHW24CRWQNPB2TbmyIAk4ktW+nGnNQU=;
        b=Kjx8ULO1UfcaCmFckyvxqMmNe2qUnlmf5xCuUh4qQ9aI1ZiYhXY8NEMdv8gATqIt2I
         ZCzsevJG71xRVtZDIDfHrHLFECHo57p0abPzY53pepJcvxQRurOoZNIa+jG1gnWlQEd2
         d6QXfLVgFNV+caR3LQmbo5qyl/7ayN9cgVBTD5an0ywtmUQSbDia65KPTyGXrh+cSW1B
         LMutX4mFyBFv//DdLitqMjqrn1kZHUFRK4mbUHJJhirh0tPcOB02LqrGFqWPfAWVUplk
         3CNZuiXnHuucV1j4vnvBr7kOvP2BJ3HQLnrFB1wQwYSnhNFI8TEbOVncjxrILtZGTIDU
         FwVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=duMsuZpW;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id c191si307890itc.1.2019.03.03.17.52.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 17:52:32 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=duMsuZpW;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id x187so2614911oia.7
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 17:52:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jNO3+d+FMyyyPHW24CRWQNPB2TbmyIAk4ktW+nGnNQU=;
        b=duMsuZpWIIpo7SBSgkRLt7FQ74dsWkZzcRp0OHyBrhyPRqcxpF3mp2aJVJaI75+xoO
         4I3Kh8Mt2JMRY3kLgrgg2JcE+2xHuDflaTsWCOCt+zC429bTHMwHnMtG7LD0NGht6KLC
         BLZxc08EZPhsu2nnpnbpDdHUNjiTd8+9mQjYwJVVFQQH4zb7fu4V092H46QvttUx8ijd
         BKvC6DOpiHVGURwKA4RQBN8eKqMkGdaKT39ZjsEBuIPj/97C6bA31NP8qUHf+9VYNqB7
         S4laFmpDLN/3DhDBmsEF+UPJZhNjEJju1zUsFmiqpKs2LzDeOgOck3+M/PU53liWTDSi
         CKtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jNO3+d+FMyyyPHW24CRWQNPB2TbmyIAk4ktW+nGnNQU=;
        b=lJTu+qrQ1EypcEzKUajwjsQ7XShJ16SbrAMWLfHjDEXoYtALaSsSiyXNRPwEMDDJzT
         WSf5AjluxrAHcfEHeISW1uey3ReNJed3UIfXnbM99fHRUwo4DF0foZ/7M4O4m/1GQ+U9
         4W0ifmmSXnY4r89sB/7r2KxzgMHX0EHTeue8TQe/ag1vmYtoNuxRC32fznEZKgM7iiqw
         j5fyDzC+Rn6xcasu2sXubN+F2wDMRuEO1FfqoqITkQkPyozatY9jdxOGpXweonhFRE2f
         VbLJfQuFUV/0kPcSi+8jEsdMKZYq4QQz1skXTYo6Un3QvKFyCFVm/m0ft2Bj9LyrqZa1
         Ly2A==
X-Gm-Message-State: APjAAAW/qT4IsNrE8JJGbaKpCGc6spl4S6VT+aus+U4ChBNbj/V503B8
	SHMhegPAGjY71IIZWG/hBQw=
X-Received: by 2002:aca:5f05:: with SMTP id t5mr10746445oib.72.1551664352015;
        Sun, 03 Mar 2019 17:52:32 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id z5sm1980020otm.14.2019.03.03.17.52.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 03 Mar 2019 17:52:31 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: vt6655: Fix warning about preprocessor conditionals
Date: Sun,  3 Mar 2019 19:52:28 -0600
Message-Id: <20190304015228.17742-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix the warning by removing code between #if and #endif, as coding style
say the compiler will constant-fold the conditional away and include or
exclude the block of code as with an endif.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/power.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
index d6c581b31569..c2a7c120a94d 100644
--- a/drivers/staging/vt6655/power.c
+++ b/drivers/staging/vt6655/power.c
@@ -64,7 +64,6 @@ PSvEnablePowerSaving(
 	} else {
 		/* set ATIM Window */
 #if 0 /* TODO atim window */
-		MACvWriteATIMW(priv->PortOffset, pMgmt->wCurrATIMWindow);
 #endif
 	}
 	/* Set AutoSleep */
-- 
2.17.1


