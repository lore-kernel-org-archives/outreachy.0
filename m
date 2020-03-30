X-GM-THRID: 6809870810931527680
X-Received: by 2002:aca:3c82:: with SMTP id j124mr6803431oia.89.1585546604496;
        Sun, 29 Mar 2020 22:36:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:fd02:: with SMTP id b2ls5124015oii.2.gmail; Sun, 29 Mar
 2020 22:36:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtXS/OReG56KiHyEOSOAAtfbkucOvUx2KTYkcyqHCVNTaExvGWV1rR7nZ2B/H+Qn6o2T5rK
X-Received: by 2002:aca:4991:: with SMTP id w139mr6638799oia.145.1585546603248;
        Sun, 29 Mar 2020 22:36:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585546603; cv=none;
        d=google.com; s=arc-20160816;
        b=fT81aLWC/VwzRhrP8ZCRUYkNMKDqV1RibDESVot0dpHNam/VYVzu+KOnek3flmVtyp
         X7gI0Of+wtRDr54Z25QccW2kVQ5Qu1FZ6JEBuulHhegB3aXs8i18rKBTtLfhfnURBPGI
         VD/AF+DcGioZOqyyhrpUq594IfG2O4f5gFFjs/GsVNPTU72161lnEoNNqyuLRZw2OG4Z
         MXdm8UEUIr8FlTlcKQ+4CWDs9c1p6FFGG22z0WFTRe45CPcSyeqTP8y7/MXEnLdv0965
         jQyuxEG/zyBcW6CQ42gCbV3l2Ex8AbUF5pTuTb7GdbJv2CvqVyV2Pmbd7FEDYErOdiXI
         kWVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=SxFia+jeQWOrLWUdeVFbHAFhDijAdCNEkSPN9sIB+Bs=;
        b=Lqdh7j3Pf4xaOJFn/Lbd3cCEBwIhXihuYrJ8A4+Kbf8IgPX1YHRqJUZpPE2LlvDLoY
         zUAXsdRBce6x+JrF+fi226ljKdeqQdkrHkJ+JdIA7H4C3ahP+sB956C5VT/XGRPsFquv
         Ndjem1o6/KRqzUxSYXQ0+gQvfY5P4+3188HAbNPWhOdN+whzevScl8Id3PBpizGj+Qs8
         XfkgcrjcIXldfYd56MMmNrvN48rvlPR3X5SsXO3hD6By6FETV5KjqIa1kQs/I7l6dqBH
         9on+wMpiq1rwkn9LAZ4xMwq7LVEG3/irlhmaTYaW9LtKxyNH5MEnB5awKM86khPB8dDF
         cRlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HwfwY+GH;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id t81si849661oie.5.2020.03.29.22.36.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 22:36:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HwfwY+GH;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id m15so6853182pje.3
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 22:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=SxFia+jeQWOrLWUdeVFbHAFhDijAdCNEkSPN9sIB+Bs=;
        b=HwfwY+GHO5b8GsfnXq0jTnRfhip5wZe9ZInCHSLQq+3C6Mwodqkszqa/Z7dimoKa0c
         TafMfh8m1qlT3v1ulXMvI5I9Dy02jbAejsPXW0oHVSANcXIhu/jYe0d6g/MkR/TMwa99
         X3YgV85wXzD6HpLY4UTTOE6pytQTd39CKU2G+eq3i7Tpgsl0fdk4Rg0mLJ/v4yNIiN5d
         rgpaZLvcx+BNH+vGiz7gHVrS5m5L2LZjnTFn4SUNpMFgpEekVk3o+7u6xaILwNh8jds2
         OoU6vlr4WVVynGJoVmViipVU+sLxlP0hlJ8yxyhaCc3hsRDfugI6mStAgGSwK+p2U9lu
         wilA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SxFia+jeQWOrLWUdeVFbHAFhDijAdCNEkSPN9sIB+Bs=;
        b=Pru4BpadlhwpLuoy64ZXLN/zux1kAqVKEGMtfePn/sN+/fJGKzN/qu3JctWu7d7aKy
         lNrabId0YBb5SJt4/Jb7uvtrn+UhRVKUOxRcsSqlBpdOC2MZucjUfMftOMMYk3o23FaX
         5lH94sKZ7pv2R1Zea8hucvD7084Vi3V8/kzVwo9LDNWQ63gFR7eDr9fHMQPQNVBtfOk8
         dsV7thxaQjcbn7AhUj49OjLGOn0YwbfDdtJd+4Eya90Nq7mEeGRMPQHyCMtY50JQmxoK
         8bQtDWqtKrlBLXF1PtjQz6bGVUcvf4+pLhPNP/GhA7OCbLe9Hm0GTC6Zjlx/PKTQjIyC
         FNng==
X-Gm-Message-State: AGi0PuZRtj8AIubQ81245DFkle1AHbE6D3DBbWtK87LvIOm2jCRRI7Pr
	n5AZ5duVp6yNR0SFkuoDjuA=
X-Received: by 2002:a17:902:a514:: with SMTP id s20mr6245407plq.152.1585546602452;
        Sun, 29 Mar 2020 22:36:42 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([157.42.216.19])
        by smtp.googlemail.com with ESMTPSA id l190sm9213874pfl.212.2020.03.29.22.36.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 22:36:41 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	outreachy-kernel@googlegroups.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH] staging: qlge: Properly indent the multiline comments
Date: Mon, 30 Mar 2020 11:04:43 +0530
Message-Id: <20200330053443.8412-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

Shift the end of multiline comments "*/" to the next line to improve
code readability and to adhere to a uniform coding style.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/qlge/qlge_mpi.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index b30992825612..43e8e3cae60c 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -387,7 +387,8 @@ static void ql_init_fw_done(struct ql_adapter *qdev, struct mbox_params *mbcp)
  *  This can get called iteratively from the mpi_work thread
  *  when events arrive via an interrupt.
  *  It also gets called when a mailbox command is polling for
- *  it's completion. */
+ *  it's completion.
+ */
 static int ql_mpi_handler(struct ql_adapter *qdev, struct mbox_params *mbcp)
 {
 	int status;
@@ -517,7 +518,7 @@ static int ql_mpi_handler(struct ql_adapter *qdev, struct mbox_params *mbcp)
 	 * changed when a mailbox command is waiting
 	 * for a response and an AEN arrives and
 	 * is handled.
-	 * */
+	 */
 	mbcp->out_count = orig_count;
 	return status;
 }
@@ -552,7 +553,8 @@ static int ql_mailbox_command(struct ql_adapter *qdev, struct mbox_params *mbcp)
 	 * here because some AEN might arrive while
 	 * we're waiting for the mailbox command to
 	 * complete. If more than 5 seconds expire we can
-	 * assume something is wrong. */
+	 * assume something is wrong.
+	 */
 	count = jiffies + HZ * MAILBOX_TIMEOUT;
 	do {
 		/* Wait for the interrupt to come in. */
@@ -1175,7 +1177,7 @@ void ql_mpi_idc_work(struct work_struct *work)
 		/* Signal the resulting link up AEN
 		 * that the frame routing and mac addr
 		 * needs to be set.
-		 * */
+		 */
 		set_bit(QL_CAM_RT_SET, &qdev->flags);
 		/* Do ACK if required */
 		if (timeout) {
-- 
2.17.1


