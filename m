X-GM-THRID: 6810632543470092288
X-Received: by 2002:a63:2d6:: with SMTP id 205mr22089343pgc.257.1585723997158;
        Tue, 31 Mar 2020 23:53:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:3087:: with SMTP id w129ls15202794pfw.1.gmail; Tue, 31
 Mar 2020 23:53:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtQC/hSPMvD3Bjg0LFjPHIfAz8De0P+s2AIecaWyl07j4mmHs7J/huwZErC+GX4ynzbrUJ1
X-Received: by 2002:a63:6f45:: with SMTP id k66mr21918141pgc.246.1585723995855;
        Tue, 31 Mar 2020 23:53:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585723995; cv=none;
        d=google.com; s=arc-20160816;
        b=a7G1qZTsjx+khEfokchKExjh7GjgOHGe29R2u6vbidssy9UkcF1HmaM8V13Kn/rTY2
         bxyi7zO/k7kZHiiPOuTGoaRH3TYHjNCkZLG8xwVZvAl48Uar0skAri8hLITfHAfIOdyz
         GD5a3mBzO0NhJQSLqEINZU0lL/eL+hdzd3RlRg3Ehp07S14Of8OHkwwxtHG3IQl9QJON
         giQMat4V9n960myFxwrMOlLtOTxByc3Gi/Nix3Yd7l0Rac9k//myO1raUWdyKXWyciEf
         jZzRTWg106edDPGtm8hQmpZ3AnawJYdM7JElEDb2pwMCop6T9NvYoBQT312Fpc89bayB
         9+XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=SxFia+jeQWOrLWUdeVFbHAFhDijAdCNEkSPN9sIB+Bs=;
        b=NOL41C4766gWnTB1CcOhsXqOb4uPkWIgZQfcyjWKyyTGl1ofxo1u4/nb5SoMY0feUp
         r/D2Lm3PUmwnXQcVVPYfeM/dd/8+BDarjpnNmE0rouj4T6LvdGwSBBVVioRyl2xQkIUQ
         tlV+3up4lIt07mOF5C3MZ23hVOta7gsE8EgHJEFKxwybMurceY29PWd3YcdwU49lGwV2
         I90d6JnJ6E70ijftfrwUkK1nuAPIKVfudXqH8KYFuI3Rty2dL9GUFxi6n8w42FWtVBEb
         cw/j+483I6BlGDWY8tbBTBCcOO4VzoQcvKPZfIgtwTRvQFNZTkYfY8h9fnzzOwZiZeLT
         yWGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K4IhxMRS;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id u14si449478pjn.2.2020.03.31.23.53.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 23:53:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K4IhxMRS;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id k15so6519227pfh.6
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 23:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=SxFia+jeQWOrLWUdeVFbHAFhDijAdCNEkSPN9sIB+Bs=;
        b=K4IhxMRSEkToWjyic4VftLaXLpC8U5F6GkoE2tc/E5Ai772XXN0IfW3R2CaVMyOAR3
         /XISnibsz3r58B7qazzTICJX3/Fvgv4kkrrBDwoLwHA6ULeRKfclQ0QPnSYYV/Me54lt
         si0FS+EPnmv4dqBU1zvFV1poWY2PpMNjtmetyIOd0e5iKeLNhg2OeVIc6sBJZrs3XIac
         nOb15ih2OdZK/4l+ESI0koo4PasIP/Fa3ThfWuz96p+1spCUen57AyDysj0C1A7Pq+lV
         VvQswlYo/k7hJxToXXiDJltCYKzc9o5xgRc5ciQnU6LCjHc16ltSQ9wYG+vayJF6cJWk
         eKnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=SxFia+jeQWOrLWUdeVFbHAFhDijAdCNEkSPN9sIB+Bs=;
        b=uPXZu0XysecNBpbCh6YVwUH9ua/8lj8kvhaITd+EpDyy6K+G1Hviacj343ZpHyVIPE
         DsjnG9Uy2U+JVeR/2/GsUzDsUegRO8O4tVBtEtExFZG2Gz/6uhocb9Drq2oQKbFWKbZ5
         ErQakPdR5yu3r5jz/TCoc9tf1ALLtpFM1kgE8K19yTF5YrZZ4a5XJCCUKaYEp0kwUZc2
         DX3xSmEYhaDz3HwdAW7W6mkcZ7qFBGv98g2ewPbQflzeQrGYTbJ3MFynXB0sOPvrXwTT
         qRdVKf7u5p4Muv6ZuXiFwSRtVjJhWLLsG1yKYlwSZYY8Av1NEdWEy/HuNthZgNPmCs/N
         mhoA==
X-Gm-Message-State: ANhLgQ0uvqPwQjYZpagIW/QIJ1Txs7EC2nCiQubzYqzGriV7GXytC0dm
	7AFreVvTqN2O1uAUNo80bk0=
X-Received: by 2002:a63:e74b:: with SMTP id j11mr21971529pgk.145.1585723995447;
        Tue, 31 Mar 2020 23:53:15 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([157.42.224.231])
        by smtp.googlemail.com with ESMTPSA id m68sm4635849pjb.0.2020.03.31.23.53.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 23:53:14 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	manishc@marvell.com,
	sbrivio@redhat.com,
	GR-Linux-NIC-Dev@marvell.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH 2/2] staging: qlge: Properly indent the multiline comments
Date: Wed,  1 Apr 2020 12:21:20 +0530
Message-Id: <20200401065120.17459-3-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200401065120.17459-1-debsoumyajit100@gmail.com>
References: <20200401065120.17459-1-debsoumyajit100@gmail.com>

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


