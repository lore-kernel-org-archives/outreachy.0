X-GM-THRID: 6664067951305424896
X-Received: by 2002:a9d:a75:: with SMTP id 108mr12346731otg.34.1551717069854;
        Mon, 04 Mar 2019 08:31:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3de5:: with SMTP id l92ls7667181otc.0.gmail; Mon, 04 Mar
 2019 08:31:08 -0800 (PST)
X-Google-Smtp-Source: APXvYqyOKfBXZSqueq62pCfor3qriwa/6aWKKZiIFwg/rHomMYNQQJzi9Nb8fTAQLmq49K8IGnGU
X-Received: by 2002:a9d:7751:: with SMTP id t17mr9501653otl.9.1551717068973;
        Mon, 04 Mar 2019 08:31:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551717068; cv=none;
        d=google.com; s=arc-20160816;
        b=QeEuiGvqRaH9QTPuuuoup9xWxoZ47HhWnCkTuqvAZH/QFEXgO7XUjPEibx5i5P67V6
         61VjevtUeOU8ZFxx1RkpwF2euUfhjqNGVs89kzNfppTfZsIDM41ROtCfjVVgO+yUBmzW
         tNwnof4mVulI+Fyh8buH9Hb75+lYIZ2lRyM2/n3NEhEkg33NI+PnySTTaki9gkMgei3Y
         +LcuWQtJjUskRiJqWspJAh1vEqrzOf9aigvOVUqZ1Nf9maItYwAuPpy6VULwrSzVWoQA
         c9arISCT0OEMpEv0X7vpf7eT+wRzKXK8J+5Ve26WyV0Wtp0aTejhJkDnBswaVHhZprq8
         T87w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=r6iGWBOMBZ2sAvyxBwloB1AUBWbmnIaLyAGQUuY/2zk=;
        b=JDZMi0LvRTQM36c4tnubRXspH5w6UltRS3ffE1oM0PWDtg6rncXwC19hdQeD7ZwxP/
         Xkv/F052DPA2PukO2YXMfOd2ZkUO+Q5gfLwV2pDzeRPpct5cn9bKyYjx/bUvrTwetHa6
         BxptsRBUfzOdAkqNrnixNXUi1JKyDPjtISrL8kGQ605yBvCkFRVtH8kvzbWJhJGzY7DN
         OrXHiJoEEBRACDYu5dQKnOeNTyEqscySLFugYFxN+TuWjiuV71QNdBkWDSO5OlseoBYI
         OHgR4W0OZiMz93e5MDJgRcDxtEFKqIgQ3SAx8DIKAAFhxxI1C3E7tIqJKhuX7U+OD+Co
         o58w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BbWQ9Zl7;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id m3si252363otc.3.2019.03.04.08.31.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 08:31:08 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BbWQ9Zl7;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id a3so3371054pff.11
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 08:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=r6iGWBOMBZ2sAvyxBwloB1AUBWbmnIaLyAGQUuY/2zk=;
        b=BbWQ9Zl7HtDC4HWuP2Tj2SCqDMYQ7Ts23hbMCqM+WSFmvTKbdrezKwo89I8BVX7XfW
         V/TxhJh+n0Nw4cTXxeoUC4DlT72GGgor8VVDKXAw2l8TDnk0iRIrH8TYaU9GHFkZNiyS
         l+20e4hRSX+QO9nJKnyyK4rjmZtJrOJGQboEP2Z+UOEJTcz24YTcU0vNfw0rBUNM7HE7
         ikcKUxCotstgQD2jlX0E7QNxHKN0hzDmAitHYwUPXoyHePlV62SnORucjRFid9jr0SZ2
         5qGql8Wregn0rMdDGrHFayYiIquWPDPiCjU+pU2FgGH3fozrTqqWHirwFIEwsj6NpwyM
         9QEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=r6iGWBOMBZ2sAvyxBwloB1AUBWbmnIaLyAGQUuY/2zk=;
        b=Gn7OJzZ+i1g3MnbFhMYBFnc4QQyD3OcKfGqwKf+gMevowVuHxK4iMqjhp4FXCokoM0
         ZMNrtcV70Q+9nsq6h6kdfYvn0tgwNY0ttN4HqTNDX/yHRG7hX+op24E9JmxW2SMWdmUS
         eDBAuzhz/KDWQaZ46yzesCjYPzQKlK3hCKuEOmcOEEtJ/eDZUTm8InT4fNQSnA4J66He
         5QiH0TTTb6PgYNuCUsNvw4g243A9Sj3vDhrg+FShXfbzHUVa2eAgbdWTLyuoo9N/2n+J
         OD6AEhOEq7bFYyozz/+QObrHVpKY5bVYur/21ZQNfG6fE9OljY83D2qbI4U5wclwZA+8
         c5IA==
X-Gm-Message-State: APjAAAUfDfo/yF59DHrud84OBaf4QcXc8zpgWmzPP1xY7svUM7e80iaR
	TQ74DOHr3Dqy5YRrEQVf+ms=
X-Received: by 2002:a63:f753:: with SMTP id f19mr19096729pgk.437.1551717068360;
        Mon, 04 Mar 2019 08:31:08 -0800 (PST)
Return-Path: <idebleenasen@gmail.com>
Received: from ubuntu.localdomain ([117.211.86.109])
        by smtp.googlemail.com with ESMTPSA id h184sm22142923pfc.78.2019.03.04.08.31.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Mar 2019 08:31:07 -0800 (PST)
From: Debleena Sen <idebleenasen@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Debleena Sen <idebleenasen@gmail.com>
Subject: [PATCH v2] Staging: pi433: Fix line over 80 characters issue
Date: Mon,  4 Mar 2019 08:29:59 -0800
Message-Id: <1551716999-101370-1-git-send-email-idebleenasen@gmail.com>
X-Mailer: git-send-email 2.7.4

Delete extra whitespace and tab space and use one tab space to
remove the checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
---
 drivers/staging/pi433/pi433_if.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index b231463..53928af 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -45,10 +45,10 @@
 #include "pi433_if.h"
 #include "rf69.h"
 
-#define N_PI433_MINORS			BIT(MINORBITS) /*32*/	/* ... up to 256 */
-#define MAX_MSG_SIZE			900	/* min: FIFO_SIZE! */
-#define MSG_FIFO_SIZE			65536   /* 65536 = 2^16  */
-#define NUM_DIO				2
+#define N_PI433_MINORS		BIT(MINORBITS) /*32*/	/* ... up to 256 */
+#define MAX_MSG_SIZE		900	/* min: FIFO_SIZE! */
+#define MSG_FIFO_SIZE		65536   /* 65536 = 2^16  */
+#define NUM_DIO			2
 
 static dev_t pi433_dev;
 static DEFINE_IDR(pi433_idr);
-- 
2.7.4


