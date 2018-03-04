X-GM-THRID: 6528628385749401600
X-Received: by 10.28.141.4 with SMTP id p4mr824526wmd.15.1520194195987;
        Sun, 04 Mar 2018 12:09:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.214.21 with SMTP id n21ls1076958wmg.10.canary-gmail; Sun,
 04 Mar 2018 12:09:55 -0800 (PST)
X-Google-Smtp-Source: AG47ELs4qYYK5Zu0aZBcqXJNJ7ohEmSY//tyqfP+4xKnskQalxEEtHYMIAwu7stKR7iK2V97LtvW
X-Received: by 10.28.202.2 with SMTP id a2mr865206wmg.20.1520194195100;
        Sun, 04 Mar 2018 12:09:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520194195; cv=none;
        d=google.com; s=arc-20160816;
        b=rEQGG/jpXE+fZBOYDVzs1nN5RqjsIeNKL6ok15iCe3wKm+4yEz60lqwvdVKx7gG23b
         2Z4UJPO2LCcMQ8S/+Sg3JzJdqxPoJb+p8p9Qx7hN5D1VE66UCKCHKRi0JI0S2nX7kHGH
         U46KvBYLQievJPev3v5ClUSwEz43nSALl28WOGVTT0SUeOfFhBgxfQgdoX5X0kuRvG0i
         dBaCsIOcHydajiSFUBhN2ty33Bg/t80eP23hWh1PC69HbDzvibQctirZ/ljmXWcv6coO
         Lh7vb+01dJ27hC5B99kyaAUbMNNaUSfku8BLmFjYgzBAOBvNZtkfsibNM1l+H5Y5at6q
         DU5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=OkBHzZkIje+R/ghlOwdWRss4Yay0W8X6TWeVx+VDR9c=;
        b=gL3wsRfl5zVr3EtGvLL7vryJCx9tNnJmnNxnHWOVXu9Bc8tXLMcFb+taSZxiA0o6Pr
         diCt0qs4HwU2Ke28A5HBmTIfjuWBpfndPbdkPK5ibU5WrXI/qzE5kHwEjeYtujJ15Wln
         UJFB3P1zDEmk2b/nAgx9U+a6e3ZHcjfbsNXxDTU5rXM5uCakP5BJucToZf1yssFbL3+F
         tqcArj5VtXj6d8x8PkDApO15E/gI8d7TQV24+L/6Q5oPwAIjoQoXbTin3wZ1EXkfOmnB
         +EDebavZ5dqMmZO9DFf5bQIPcaU5Gy2TYSKJJIgSR+/UeaUcTZrbk7EipI0ROtwgUVdf
         G6JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T+f5yyOr;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x234.google.com (mail-wm0-x234.google.com. [2a00:1450:400c:c09::234])
        by gmr-mx.google.com with ESMTPS id g206si172039wme.2.2018.03.04.12.09.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 12:09:55 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) client-ip=2a00:1450:400c:c09::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T+f5yyOr;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x234.google.com with SMTP id w128so12096730wmw.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 12:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=OkBHzZkIje+R/ghlOwdWRss4Yay0W8X6TWeVx+VDR9c=;
        b=T+f5yyOr6UPKWDHeJEWfc+T5nggvvUZOKrXfNEK+b/a9K6TRSbINNrtU0SNBAWQgQm
         zIltQdp4Xa3vozcyBeuvq+ZHxkgP8+VhZePoBZ8WBgyRzp2/kZDQi/bN93ynE4LmGv/u
         9HAVhQ3tUH+/M8MXs2IaxNhPEh+6SgS8ej+3SLhjzfV6ZosXGyyoBuWE6J4vnw6gFRGJ
         7mDaIKFNXfxrTD+7+Z7OUtP1+UUGwL+smns8aMGw2E2We9WBqutMeMLbj/k+nKb88f8b
         iZ1LFBZnnDdH7bxLZVf+a66LxcsAiNAPKcyuO3cwY1lSqZbtt4drccdL31oMeODd2R3T
         pNaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=OkBHzZkIje+R/ghlOwdWRss4Yay0W8X6TWeVx+VDR9c=;
        b=lF67qxWDKmO27860d7vHNNeniWfiIKDSXP5XSxNAY5QqyPtljPt0ghOx09fwzQE8Ej
         sYLKHH0+qzNYT5Aqa8wmukJycmpC8j4Ou3ZU9Pg8DLd9Qeq/jRleJi2wCW8YT6YZwi5t
         QrTrqtO+MgvOA/lF11jN2fvDoAa2pyHla2azCRYTq6TykzQe3aVCBZYGPL70IAstVSaT
         R0M6lMLyEUkdOpcrKmxw8N+9XO/iWAIFh8cRdmPwFSJuTGTUeqwz45kXEWOU8/IdQSVX
         wbJth0ixpuBdYqdsFhmCvMnnVIOh+FAwrXAG2hm6BtDHRreO2taJWSVoTuSEiUz9XuNO
         09TQ==
X-Gm-Message-State: AElRT7HDnVjw9DGcIoo9aUlaRDrRHFmNZANUMmD141BIRN1UkC+3duRY
	ufgiVN/6gXKhlM4/aI9Bjts=
X-Received: by 10.28.112.8 with SMTP id l8mr2193413wmc.47.1520194194832;
        Sun, 04 Mar 2018 12:09:54 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri.huji.ac.il ([192.114.91.234])
        by smtp.gmail.com with ESMTPSA id c1sm7081212wre.27.2018.03.04.12.09.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 12:09:54 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/3] staging: lustre: obdclass: Fix comparison to NULL
Date: Sun,  4 Mar 2018 22:09:32 +0200
Message-Id: <be5e588ff19254ffe414a3c23e1dad8229ca6c65.1520193794.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1520193794.git.dafna3@gmail.com>
References: <cover.1520193794.git.dafna3@gmail.com>
In-Reply-To: <cover.1520193794.git.dafna3@gmail.com>
References: <cover.1520193794.git.dafna3@gmail.com>

Replace comparison to NULL with a 'not' operator.
Issue found with checkpatch.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
---
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index e1f4ef2..64cc746 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -1585,7 +1585,7 @@ int ldebugfs_seq_create(struct dentry *parent, const char *name,
 	struct dentry *entry;
 
 	/* Disallow secretly (un)writable entries. */
-	LASSERT((seq_fops->write == NULL) == ((mode & 0222) == 0));
+	LASSERT((!seq_fops->write) == ((mode & 0222) == 0));
 
 	entry = debugfs_create_file(name, mode, parent, data, seq_fops);
 	if (IS_ERR_OR_NULL(entry))
-- 
2.7.4


