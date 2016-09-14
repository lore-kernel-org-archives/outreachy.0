X-GM-THRID: 6330211515190214656
X-Received: by 10.107.152.132 with SMTP id a126mr2875451ioe.28.1473867221551;
        Wed, 14 Sep 2016 08:33:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.202 with SMTP id e68ls1232902ote.47.gmail; Wed, 14 Sep
 2016 08:33:41 -0700 (PDT)
X-Received: by 10.157.46.36 with SMTP id q33mr2439241otb.40.1473867221114;
        Wed, 14 Sep 2016 08:33:41 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 142si1339391pfx.2.2016.09.14.08.33.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 08:33:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g202so944104pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 08:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yGrtLPKLAsy1fDQ2LEfjVhkbUA66xqHr/tN+h3NHZis=;
        b=K73JKbcFyd+CK9ywFBApwuy4FtNd+nOD4LLNfGlhJCuMtVYF6TQ8DqcpRyjaKF8nCp
         jY7nrBY8uvv4uFlvqeAHNmzfyiBx+c2VR6OqzBj0vQS/zCNQrMO/+HB5DEfpQznODQsP
         FQRJxibWSuTMLHD3PyZ3SZTw1QHa+8sQeggERKpVCjUkOpBngcRW0J3DWzL6kcSL5w9L
         9FNgsI6k1F+SFPKm+v0YsYxRPPyW5i1JGKaohegeFm3G9SeZqIgDURv/zbPELMgCXmft
         K+BwtMYFHJagK46Hogc1ohqk6Nv/bp3nOgnqM8s/Y+sxebVCxh3E41c1mVvhAU/Mjyvv
         EviA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yGrtLPKLAsy1fDQ2LEfjVhkbUA66xqHr/tN+h3NHZis=;
        b=Lg78u2WERwMaVs80t4XBl6XOkz9Y1rztyOOxwZtp9UgECnt2kRW3wU7s0hg5EsVdaQ
         oe96eSHTZUZfuk8Id/zaDRMEDnlH+LqdmEuzCA0vvhWgatRPXqKQvn2XZM3q+o+A/B0o
         C9zfaudjvxFnWT1gMDCMedH4naq1bolXC6gcjhpAcruTKp5WqTqpjS1OAKIPk/ZFmOXH
         aA88RFrs2xPQQP779Se6qYvLmvvZ+/5Y1hFMpLPhsSFYJoboMOhHvCN3H5zlNwe2383/
         BY3D+IXIFVWmy+SwPI6JMZwXyIFuGIVCftQCOhwXwDf8Rihlbj9W8fl7t2smTfR+32Vt
         gHrA==
X-Gm-Message-State: AE9vXwO0PUrWYFhIy4sYkiOii8bjC1yiZpKhEdSWL2UC6MQ0wrOMr4zueAMpHDcSuWlMSw==
X-Received: by 10.98.88.131 with SMTP id m125mr5563587pfb.63.1473867220911;
        Wed, 14 Sep 2016 08:33:40 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 3sm39102377pfz.33.2016.09.14.08.33.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 08:33:40 -0700 (PDT)
Date: Wed, 14 Sep 2016 21:03:31 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: dgnc: Fix alignment with open parentheses
Message-ID: <20160914153331.GA22396@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes the checkpatch.pl warning:
CHECK: Alignment should match open parenthesis.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index 31b18e6..75e0a6b 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -1037,8 +1037,9 @@ static int dgnc_tty_open(struct tty_struct *tty, struct file *file)
 	 * ch_flags_wait to wake us back up.
 	 */
 	rc = wait_event_interruptible(ch->ch_flags_wait,
-		(((ch->ch_tun.un_flags | ch->ch_pun.un_flags) &
-		  UN_CLOSING) == 0));
+				      (((ch->ch_tun.un_flags |
+					 ch->ch_pun.un_flags) &
+					UN_CLOSING) == 0));
 
 	/* If ret is non-zero, user ctrl-c'ed us */
 	if (rc)
-- 
2.7.4


