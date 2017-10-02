X-GM-THRID: 6472213781908815872
X-Received: by 10.84.236.79 with SMTP id h15mr1160725pln.4.1506929716072;
        Mon, 02 Oct 2017 00:35:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.201.87 with SMTP id k84ls3401319pfg.14.gmail; Mon, 02 Oct
 2017 00:35:15 -0700 (PDT)
X-Received: by 10.99.95.140 with SMTP id t134mr189823pgb.88.1506929715341;
        Mon, 02 Oct 2017 00:35:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506929715; cv=none;
        d=google.com; s=arc-20160816;
        b=VMMR6lZYuxDqVKkJmFMvZ3pVD9LfvLDrhboYu8/cIF/ABpfCt5xwS5WKcalMfcK40z
         y/oqttgD8asHKpAk1mNySHY1/2mh9cHQIZsIWHfA/7MGAD0To/eTq42HglfstZLgDz78
         p9T+t8TO3jlfQfcQCE5rYKeYQULT8XwZCL0RYjWBeMBhBEOuW4RxFg8JHsCwA4kk4dPn
         aqkBPoNOCjA8Zl80xYcIClDdH5Q6bW4DnvRcbiezSQNpyCvIfP/9aIWGRb8gorAUDCO9
         ltafJwiu8TEZjWOH6u3WY5suKffG/1T07JmVGgTIWIMzjqPLGKBQjs+WHOUkR3Wd4/Ls
         r6Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=0lk6Be4qaiVkG5SbwpuA1Z9/8Uei72aTnGkRWDjnfUU=;
        b=vUMsp3pVuNpgdRiqqJlcBOQhXMUTaBQsciLxzLbBgLsuc8zW7gwa0rab4KqXVRCpob
         LtcaRqdCO/kNKuV/hIbVDZiEga1SFFAj4BalpkMMB1ddx3IcXUil/+vwcSqgpMzUkB2v
         LSIhFVTAlXCe66yUF+gVyrsPJXcL8a4H7uW5LpcAOJtjBxtXnsSegvl4ELRMnMsMWMoR
         KaFF3grGb7iQeeCvz1FrG4MqjNDbn24KSjE2bFY6XjxQembcJabjRFktaUIo9GfF1adE
         Ckq8P2sjPEte5abGmK/9Omsto50McxY2poJzeSaj6KBwkg4AxRMhxbcb+AZKS54M4a7S
         Dgzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TOQ4T9Wg;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id m186si958969pfm.2.2017.10.02.00.35.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 00:35:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TOQ4T9Wg;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 124so495014pgi.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 00:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=0lk6Be4qaiVkG5SbwpuA1Z9/8Uei72aTnGkRWDjnfUU=;
        b=TOQ4T9Wgn33X48HNLtYWFhjS3zlgjgh8pMrWE51vnSiVYNV12pRHL4GIVMvreOg6S6
         4Rdb5Qt4elGICC+cT+/w1OKXbM1Cn5vVAfSSyfOf5ScD+wTLQOWOVNwhVmHQbUN+lMoT
         VcVV2lJ/00RhyFiKwVpozP+sqmH02siUQ1k4GHEwhU23fKW1i8hz2YSVFksI7NmSkkb3
         ZRdsbI8uW6kvlHRj/CKkD2uF9Jp7RWPsIs8ii+UUIype/y2UGx6GSy/dBBSR9xT56ttb
         GRUPcMS6Wp4em8+k9zHbJunxyqKJB0zwwWsT5Q+LgNhoqt4FAQMQEuCNg3e9GK07rTck
         socA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=0lk6Be4qaiVkG5SbwpuA1Z9/8Uei72aTnGkRWDjnfUU=;
        b=UGAhrMJ22mj7uG1C6crEjq76QMc2KURH9R0a8dOrdt2jL6Gp6poUvhre+Piti1A/GV
         fiGzxmi2r8xA2YiEI6UHBNUNd4l0c9A0hjFElz29vJKi8uzQNnEXTtYpqU7flriEJLFK
         +nke1OegpEpB8j/K8Pp2jOgpCBvP6rrqk5nKEtULN3zzJ0qT0AOUNKbe8+VubAOEz5HE
         hErhByrYWya6BMts62oRLHXS+cSau8e1JcO1eNwQhgrJv5vI3zEBd0oiygIrzKDhlBkq
         0xOxFzVyIwTJJkZat5D069LufgVq4/58Q3aQV/bTEQqUQdkQV+ROLSX6PT6xCEKASWEK
         icOQ==
X-Gm-Message-State: AMCzsaVGSnF7HHyfSt8CBMp5PIjqYBGx8SRZlPJ9otSFYn2aVZpHerZk
	HuEkkZ3gkklhsDnAf+4pTYI=
X-Google-Smtp-Source: AOwi7QCQsDpCQ6qhc8yJvjNkohyt6wIaegRdlw5E1onjWpk+yugJcM9fi9SAukgpCilrR0Jw8SaJOA==
X-Received: by 10.101.77.198 with SMTP id q6mr1401002pgt.108.1506929715162;
        Mon, 02 Oct 2017 00:35:15 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id s9sm16323720pfk.20.2017.10.02.00.35.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Oct 2017 00:35:14 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH 3/3] evaluate: make pointers in string arrays constant 
Date: Mon,  2 Oct 2017 13:02:50 +0530
Message-Id: <9b81cec687c3082f5fd762ece696f1272945e0ad.1506928244.git.harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1506928244.git.harshasharmaiitr@gmail.com>
References: <cover.1506928244.git.harshasharmaiitr@gmail.com>
In-Reply-To: <cover.1506928244.git.harshasharmaiitr@gmail.com>
References: <cover.1506928244.git.harshasharmaiitr@gmail.com>

static const char * array should probably be static const char * const
array
as per linux-kernel coding style

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 src/evaluate.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/src/evaluate.c b/src/evaluate.c
index b783054..f48801a 100644
--- a/src/evaluate.c
+++ b/src/evaluate.c
@@ -33,7 +33,7 @@
 static struct output_ctx octx_debug_dummy;
 static int expr_evaluate(struct eval_ctx *ctx, struct expr **expr);
 
-static const char *byteorder_names[] = {
+static const char * const byteorder_names[] = {
 	[BYTEORDER_INVALID]		= "invalid",
 	[BYTEORDER_HOST_ENDIAN]		= "host endian",
 	[BYTEORDER_BIG_ENDIAN]		= "big endian",
@@ -3350,7 +3350,7 @@ static int cmd_evaluate_export(struct eval_ctx *ctx, struct cmd *cmd)
 			    ctx->debug_mask & DEBUG_NETLINK);
 }
 
-static const char *cmd_op_name[] = {
+static const char * const cmd_op_name[] = {
 	[CMD_INVALID]	= "invalid",
 	[CMD_ADD]	= "add",
 	[CMD_REPLACE]	= "replace",
-- 
1.9.1


