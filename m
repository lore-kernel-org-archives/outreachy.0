X-GM-THRID: 6529515465109143552
X-Received: by 10.107.9.165 with SMTP id 37mr11529695ioj.111.1520271288018;
        Mon, 05 Mar 2018 09:34:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.223 with SMTP id 92ls3019706iol.14.gmail; Mon, 05 Mar
 2018 09:34:47 -0800 (PST)
X-Google-Smtp-Source: AG47ELtDYZZm8sQEpY3z4ykYGPWnBnIuEtUw5A0ayWvuN3VInhLjYGn9DOuXD5qWGveJ1I4Ucdx0
X-Received: by 10.107.112.20 with SMTP id l20mr11855354ioc.124.1520271287021;
        Mon, 05 Mar 2018 09:34:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520271286; cv=none;
        d=google.com; s=arc-20160816;
        b=IMlpkre9HiEIhN2CT0TymBa8FQAlh1reP60W1H0yzS57SlELb8GIpX/vitJrHxnBxG
         FxQi9CQykDcArHeiBteOayiEmtPdipprS6CfrN+qnuSb5skLp1J9K048CjCDtVuY/cvr
         zxP+A2iXVTtCHjZ0ynMHeA3vlV1BgXTD9HF+ny31nFv7Bix1mHnMKZyceo9WG6lse2aj
         Hbz0EBfzxNKtQOpD7/C5coEPQu2hHpCeuMYdQblXtDFL1eARotm69/RsAxHspwndhZqp
         lQB+c5OUypXRfdX8vYy+92X+u+QLMOCvs+JG9vJ1TdOOxeCXvG7zmkoiJW31U/V3Fv4i
         0a/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=cxA5/ocQjY/QOH63K+oIVvk2Uzw8Xi16BTlKVgrLc14=;
        b=WkGXc9q27jzt0gEB+ImTus2cSYMiyvBBDwkeuzCE2NKdWANMGMrOafVIiIALyzUyYQ
         +ols4lBTZaB/dte6A8mHeIVmZMA40YLuoi86VXUG0z+M2YgCtqlkSTqdX5+6nsjWd1MW
         RoXL3xWSRDl3nneTVG3ur2e6ll4MjqzjnqkFdCL2511SmR7a8SjNaeBWbgzWLBpjkO6f
         rX5VbHKIWlc/anwzu3pPFWzRDyueyNNEBBJHLqxbVNFOHE4OUTHBAZ6GEk36s79vDEQ0
         /UqCsLDS5ugjuZUGm3Pg9HwCBXBHLh4dxH4XTtNB6xSeD8Bu6Wi9JC8WAOtSmbXk5NQg
         3L4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p1QwqRVG;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id i201si412782ite.1.2018.03.05.09.34.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Mar 2018 09:34:46 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p1QwqRVG;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x241.google.com with SMTP id u13-v6so10057739plq.1
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Mar 2018 09:34:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=cxA5/ocQjY/QOH63K+oIVvk2Uzw8Xi16BTlKVgrLc14=;
        b=p1QwqRVGdFA27A18ozSP5i0I0liYKheFLwcbGsV5sDLZ0Pmh+uSYB1izO/N1FVFBCh
         0chb5RbecGnBD2KaSrF8WL74wNivl6nqFGqK5ojyZ7uHHi7b29My4pI21vTJU6GTh6zx
         ixNNcjhgAmkGABl3d1HgoVbKZQ8o95db6gGCaZssmaHmToMKvnw4jI0JzjwdU9Z1IjqT
         IQgKOnfDai6QIOa215hzdwBfvARSaD1gQJ2NJmLd0Lx6r6YNR0JOzQMVJZTRUpYpgqt+
         LL3aPh0Jyn0fzHWV7BcinfqbmTq5HWvTztyPHw0IwYfLp66QGEsX8v75zbDFN13qgEme
         fDxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cxA5/ocQjY/QOH63K+oIVvk2Uzw8Xi16BTlKVgrLc14=;
        b=X1FYHy387sXU9Q7CvGWRfBbKGI6QP6MaQQM+gscrFL9MxUpU7aMy7ItkxFWFt8mR5u
         XTEhIoYNOV/DEKlgIUogsPq48Y7HvvwmITBEb6yXtYSIzJV5CpKTBt9POK/Q06xWImJE
         LyBYshC9QcFQGzvgDfseAs73NynFUIZJLFCyeLpXcT5v14mVWxseZAANvTab6J5AaPKz
         kFbaCgrySSKbsiEBp3EbyX5bZBmiXZu2lkTLCyhm0rl9NfhYYGS0wOPnk2ZUdevFWSql
         OC/EbEDAZYQO6wORIQAR0sxDamu3kJMqiOKA1S6Zr3n6sWi88qrQ8+t/CqyhJr9iXdJ7
         Qaig==
X-Gm-Message-State: APf1xPDcKmnXMtRufNPfLcucJGdwfJcI/lYp0i44ErzBGommrOGpG8wS
	VhuY9jnbFxPIyqI5X9g9BdU=
X-Received: by 2002:a17:902:b686:: with SMTP id c6-v6mr13794605pls.339.1520271286400;
        Mon, 05 Mar 2018 09:34:46 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-21-83.resnet.ucsb.edu. [169.231.21.83])
        by smtp.gmail.com with ESMTPSA id f186sm30587181pfc.86.2018.03.05.09.34.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Mar 2018 09:34:45 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: samuel.thibault@ens-lyon.org,
	kirk@reisers.ca,
	chris@the-brannons.com,
	w.d.hubbs@gmail.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] staging: speakup: match alignment with open parenthesis
Date: Mon,  5 Mar 2018 09:34:13 -0800
Message-Id: <1520271253-53146-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Match alignment with the open parenthesis to conform to the Linux kernel
coding style. Issue found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/speakup/main.c           | 2 +-
 drivers/staging/speakup/speakup_decpc.c  | 6 +++---
 drivers/staging/speakup/speakup_dectlk.c | 4 ++--
 drivers/staging/speakup/speakup_keypc.c  | 4 ++--
 drivers/staging/speakup/spk_ttyio.c      | 2 +-
 5 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index d7cdec3..af30b70 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -417,7 +417,7 @@ static void announce_edge(struct vc_data *vc, int msg_id)
 		bleep(spk_y);
 	if ((spk_bleeps & 2) && (msg_id < edge_quiet))
 		synth_printf("%s\n",
-			spk_msg_get(MSG_EDGE_MSGS_START + msg_id - 1));
+			     spk_msg_get(MSG_EDGE_MSGS_START + msg_id - 1));
 }
 
 static void speak_char(u16 ch)
diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
index 303f393..6649309 100644
--- a/drivers/staging/speakup/speakup_decpc.c
+++ b/drivers/staging/speakup/speakup_decpc.c
@@ -349,7 +349,7 @@ static int testkernel(void)
 		return 0;
 	else if (dt_stat == 0x0dec)
 		pr_warn("dec_pc at 0x%x, software not loaded\n",
-				speakup_info.port_tts);
+			speakup_info.port_tts);
 	status = -3;
 oops:	synth_release_region(speakup_info.port_tts, SYNTH_IO_EXTENT);
 	speakup_info.port_tts = 0;
@@ -412,11 +412,11 @@ static void do_catch_up(struct spk_synth *synth)
 				if (!in_escape)
 					dt_sendchar(PROCSPEECH);
 				spin_lock_irqsave(&speakup_info.spinlock,
-							flags);
+						  flags);
 				jiffy_delta_val = jiffy_delta->u.n.value;
 				delay_time_val = delay_time->u.n.value;
 				spin_unlock_irqrestore(&speakup_info.spinlock,
-							flags);
+						       flags);
 				schedule_timeout(msecs_to_jiffies
 						 (delay_time_val));
 				jiff_max = jiffies + jiffy_delta_val;
diff --git a/drivers/staging/speakup/speakup_dectlk.c b/drivers/staging/speakup/speakup_dectlk.c
index 2ea22a2..a144f28 100644
--- a/drivers/staging/speakup/speakup_dectlk.c
+++ b/drivers/staging/speakup/speakup_dectlk.c
@@ -262,11 +262,11 @@ static void do_catch_up(struct spk_synth *synth)
 				if (!in_escape)
 					synth->io_ops->synth_out(synth, PROCSPEECH);
 				spin_lock_irqsave(&speakup_info.spinlock,
-						flags);
+						  flags);
 				jiffy_delta_val = jiffy_delta->u.n.value;
 				delay_time_val = delay_time->u.n.value;
 				spin_unlock_irqrestore(&speakup_info.spinlock,
-						flags);
+						       flags);
 				schedule_timeout(msecs_to_jiffies
 						 (delay_time_val));
 				jiff_max = jiffies + jiffy_delta_val;
diff --git a/drivers/staging/speakup/speakup_keypc.c b/drivers/staging/speakup/speakup_keypc.c
index de76183..3901734 100644
--- a/drivers/staging/speakup/speakup_keypc.c
+++ b/drivers/staging/speakup/speakup_keypc.c
@@ -260,7 +260,7 @@ static int synth_probe(struct spk_synth *synth)
 	if (port_forced) {
 		synth_port = port_forced;
 		pr_info("probe forced to %x by kernel command line\n",
-				synth_port);
+			synth_port);
 		if (synth_request_region(synth_port-1, SYNTH_IO_EXTENT)) {
 			pr_warn("sorry, port already reserved\n");
 			return -EBUSY;
@@ -269,7 +269,7 @@ static int synth_probe(struct spk_synth *synth)
 	} else {
 		for (i = 0; synth_portlist[i]; i++) {
 			if (synth_request_region(synth_portlist[i],
-						SYNTH_IO_EXTENT)) {
+						 SYNTH_IO_EXTENT)) {
 				pr_warn
 				    ("request_region: failed with 0x%x, %d\n",
 				     synth_portlist[i], SYNTH_IO_EXTENT);
diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
index 5aa3ffa..3119402 100644
--- a/drivers/staging/speakup/spk_ttyio.c
+++ b/drivers/staging/speakup/spk_ttyio.c
@@ -71,7 +71,7 @@ static void spk_ttyio_ldisc_close(struct tty_struct *tty)
 }
 
 static int spk_ttyio_receive_buf2(struct tty_struct *tty,
-		const unsigned char *cp, char *fp, int count)
+				  const unsigned char *cp, char *fp, int count)
 {
 	struct spk_ldisc_data *ldisc_data = tty->disc_data;
 
-- 
2.7.4


