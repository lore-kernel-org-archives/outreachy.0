X-GM-THRID: 6804118062630961152
X-Received: by 2002:a37:b886:: with SMTP id i128mr19334260qkf.410.1584207188885;
        Sat, 14 Mar 2020 10:33:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b7c4:: with SMTP id h187ls4084533qkf.1.gmail; Sat, 14
 Mar 2020 10:33:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv77OYx2EQYjigkHo+uTBO9kusMeykP+kpmh0FKszjHUSb9sxtMHAE59j7o8sZXL9Unl1rN
X-Received: by 2002:a37:5004:: with SMTP id e4mr19201649qkb.18.1584207187812;
        Sat, 14 Mar 2020 10:33:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584207187; cv=none;
        d=google.com; s=arc-20160816;
        b=MRKYuUl3fMNRdwTM57vnzcEcNxBJErdYyGudvLacNohQwRivkoI1c352Afu7TG2Jz0
         AP5APj3lbdvf4opEpmOf6MyFYUeR8NkaouonV8KQfVjwMofvN//A+rCwb3LDQTKzzTbY
         jYNWZGx7rQ8fRe4zbQoMJr0UXThoGeR0MNvDtYpTwyhO8HoR6vW559JkzG7ioMkeDYUt
         sI2HC5s5BnMIdIZFwSzifDCEAy5IbKPAW46k84yt2yfnDVZffkfYM8ItN5CDfBM9TbOj
         NYFnO+/z3ZZWrgIkG6mGcs6+e8/Fbln4UbrChhrOzsLAIwqaIfXL7PLgm52DVkbvbpcO
         lemg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=aJWPax2Hze7NUgTg4hdCDDaGS3Au9rJm47OJ8a+hv5c=;
        b=Pfif5IxuuhqHrw0fQkr71fa0D7PYmaQkmitKx4BZRWPXeMGOsTC9PXicUjjABaI7di
         t6YS/eRvak5oGqTeFgA2ltHKtrOQgdcKuklFK/++Z4UiVNrK58BryvuOf/yWMlNrqas+
         8IKh4MGqeas9JNJ0NgJ1Wya5ZIdz4uPJpaR+I3Of7rYEejcKffwAKXGmoqlC30+aFHQy
         pS0F5MPC2h3ZdBexZtaIo1WpqhR2MLP9uuXskR7GMtVOF8EROFYAvIlsvZ+YTlYKFrmw
         5t4fnGl3htaeFUim0rPAPeDHi8USuOeL/tKQjc+bMNbbEIQV7DEgiq9iXjFMCLFL3wRb
         JN+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jtGKMjdq;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id c6si871964qko.3.2020.03.14.10.33.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 10:33:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jtGKMjdq;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id u10so5755055pjy.0
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 10:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=aJWPax2Hze7NUgTg4hdCDDaGS3Au9rJm47OJ8a+hv5c=;
        b=jtGKMjdq6z+6zkHo7jnMod5TwIv9OYcPCiV9aJqr5LbXWknItUu84EBKwdufZZrSur
         qdNg8XkGr2qYinx0VbExADdQlp99qB3Hux1ocPwTuurBhxpWM0y5mXvhX2sMEGfnN7jM
         VXZ/lrr8Ae8EdvWLOXp+JKc1h5Df9UzON6MwoRPiQPabsaLBHGjgUrZH1CXafrodH2Tk
         IUOYc+bSZN/R9bGYNhi/S0x4sKS+h7u5CXfbrotkOvDO3CRHBkGwJ4rYybjOiiLdSWmC
         PK4yoxScGCfQO6nPmdTuOgYDLt3Y7lXS/XgVeWrS7GHJJQruv4DCsZAqw5H4ln7p/b89
         +KKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=aJWPax2Hze7NUgTg4hdCDDaGS3Au9rJm47OJ8a+hv5c=;
        b=oKUsU4svnbbFvcMiLxNVWvydsn8ROVUfhwJtDITAraVFfSRcPBrkhIZFw6vPDVz5/K
         hXCINxxqhWwwl/p9EfLhKUizL1HqedbAPcXYvHXW5dA7eMYvBGDsQi+n9i5xRhXuVVtu
         EFDVtdftrujjVo79rqP+E2VE5vLlrQmVo9X5GOkclKexAi/1GwP7cLCkfJY7vYihEgbo
         G5XO0HVdPstK9JwhlVpJdiAJ47sp9Bml1c/U73EORXA4gmaDWpCXMUJapCki+T1NIdgf
         Etj2mQn/5zYVEW7HxZfg7sKU+qekWCXnt1HG85Kbgr1MC0IheXpqGK6f6fN13iVfBP8k
         ywvQ==
X-Gm-Message-State: ANhLgQ0SP2RQWRMkiv5jbngCOo0vnlQpFSChJDZMCCI7d6cdI7Ta+Whx
	39XAS+MpsQn18FQEdscL9D55l/fu
X-Received: by 2002:a17:902:9889:: with SMTP id s9mr17741935plp.252.1584207186774;
        Sat, 14 Mar 2020 10:33:06 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id s18sm10784600pfe.194.2020.03.14.10.33.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Mar 2020 10:33:06 -0700 (PDT)
Date: Sat, 14 Mar 2020 23:03:01 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, abbotti@mev.co.uk,
	hsweeten@visionengravers.com
Subject: [PATCH] staging: comedi: ni_labpc_common: Reformat multiple line
 dereference
Message-ID: <20200314173257.GA10273@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Reformat multi-line dereferencing of function arguments
&cmd->scan_begin_arg. Also reformat another call to the same function to
follow the same argument formatting structure. Problem detected by
checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/comedi/drivers/ni_labpc_common.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_labpc_common.c b/drivers/staging/comedi/drivers/ni_labpc_common.c
index 406952f5521d..ce0f85026277 100644
--- a/drivers/staging/comedi/drivers/ni_labpc_common.c
+++ b/drivers/staging/comedi/drivers/ni_labpc_common.c
@@ -560,14 +560,13 @@ static int labpc_ai_cmdtest(struct comedi_device *dev,
 	/* make sure scan timing is not too fast */
 	if (cmd->scan_begin_src == TRIG_TIMER) {
 		if (cmd->convert_src == TRIG_TIMER) {
-			err |= comedi_check_trigger_arg_min(&cmd->
-							    scan_begin_arg,
-							    cmd->convert_arg *
-							    cmd->chanlist_len);
+			err |= comedi_check_trigger_arg_min(
+					&cmd->scan_begin_arg,
+					cmd->convert_arg * cmd->chanlist_len);
 		}
-		err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
-						    board->ai_speed *
-						    cmd->chanlist_len);
+		err |= comedi_check_trigger_arg_min(
+					&cmd->scan_begin_arg,
+					board->ai_speed * cmd->chanlist_len);
 	}
 
 	switch (cmd->stop_src) {
-- 
2.17.1


