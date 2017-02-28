X-GM-THRID: 6392086747768946688
X-Received: by 10.99.94.7 with SMTP id s7mr450520pgb.105.1488273671957;
        Tue, 28 Feb 2017 01:21:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.115.19 with SMTP id y19ls2741214itb.6.canary-gmail; Tue, 28
 Feb 2017 01:21:11 -0800 (PST)
X-Received: by 10.99.184.17 with SMTP id p17mr447784pge.126.1488273671153;
        Tue, 28 Feb 2017 01:21:11 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h79si216268pfh.2.2017.02.28.01.21.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 01:21:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id p185so806418pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 01:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=H4Ke6vKzBMaQ2g2gIR4RwD8dPspPJAEE/jtk0lpr5xE=;
        b=UCFszxtDq36IcfBJQAnUVjG5JFl6baOB1Gx/dJLi7LFCF06BwbUmVPk5wKsPdzbqBx
         5V7tLJz2e1ffA8kQTLqZ8lX9eiNo1Fo0JoGg/dVO/GB5n/TFy7s6s5rgSbuR6bpkmtB6
         092Eg/BeoMiLa8ORr6xVqfMCg7+IaW3b/iserUCFxO066sdOElbOm4kdiYUKEyGe30lE
         eC3rRmU0Yl5ME8N5PKf16mY/5zE2GR/8fwOo5e1tP5FGL3x9K5UXMSlQF5HW4tYGGpeH
         4rOk4oYsWPo7JEN/hFlL9rjlYA+T5fY6lEQfL63YvPAyq9B4QLHH0CZO30zR5NQHQMz9
         xj1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=H4Ke6vKzBMaQ2g2gIR4RwD8dPspPJAEE/jtk0lpr5xE=;
        b=g5XdqX7ZjsluDHjtvIm6I1t8FrDEZrk0pxOknGNcIwW4d431i+9w1u9SoAoLA/aik2
         lkR7ko4aj2+c6b9zmA6xl6f9JBL6mtqQa6ZePV5hPeIzzE1weYbrk9G5Fv3sYuD//yP6
         GKEFYX6q2L4yPxFB5pHpiwIfcJPI0NHJQSmKd3Yuv6p7IIKM2ySv2rx4/Fbb3ZYwWF/6
         Rrk2YLsDl9/eEBpX36EkfFRow4UdXjKQ1lUb/4eLK1SLwYB4Bwdh9A6gGzPVhtzEbdd/
         OOUuD15eNzPAP6lzjh/oiicuaR6bLREd3sUu0prezbnkTfGoWgRpqVVmCl6PJAmWJVwV
         7dkg==
X-Gm-Message-State: AMke39nLFzW1Jt++WE8ChCLPc6s3h6vFG71oBjGJjk6vR251JT7STZwh/VMujdquhF8jQw==
X-Received: by 10.84.204.8 with SMTP id a8mr1753854ple.171.1488273670792;
        Tue, 28 Feb 2017 01:21:10 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id s4sm2814230pfi.74.2017.02.28.01.21.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 01:21:10 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: lustre: lnet: Use list_for_each_entry()
Date: Tue, 28 Feb 2017 14:48:41 +0530
Message-Id: <1488273521-29919-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Use list_for_each_entry() rather than a combination of list_for_each()
and list_entry() since the former does not expose the list spine.

Done using Coccinelle:
@a@
expression pos, n, mem;
type t;
identifier var;
iterator name list_for_each_entry, list_for_each;
@@

- list_for_each(pos, n)
+ list_for_each_entry(var, n, mem)
  {
  ... when != var
- var = list_entry(pos, t, mem);
  ... when != pos
  }

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/conrpc.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/conrpc.c b/drivers/staging/lustre/lnet/selftest/conrpc.c
index c6a683b..72b6ff2 100644
--- a/drivers/staging/lustre/lnet/selftest/conrpc.c
+++ b/drivers/staging/lustre/lnet/selftest/conrpc.c
@@ -1339,10 +1339,8 @@ lstcon_rpc_cleanup_wait(void)
 	LASSERT(console_session.ses_shutdown);
 
 	while (!list_empty(&console_session.ses_trans_list)) {
-		list_for_each(pacer, &console_session.ses_trans_list) {
-			trans = list_entry(pacer, struct lstcon_rpc_trans,
-					   tas_link);
-
+		list_for_each_entry(trans, &console_session.ses_trans_list,
+				    tas_link) {
 			CDEBUG(D_NET, "Session closed, wakeup transaction %s\n",
 			       lstcon_rpc_trans_name(trans->tas_opc));
 
-- 
2.7.4


