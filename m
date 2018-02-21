X-GM-THRID: 6525083396428791808
X-Received: by 10.107.43.80 with SMTP id r77mr2635364ior.76.1519239371064;
        Wed, 21 Feb 2018 10:56:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.39.211 with SMTP id g202ls567472ita.7.canary-gmail; Wed, 21
 Feb 2018 10:56:10 -0800 (PST)
X-Google-Smtp-Source: AH8x225YRn4/NMqqGsAqwAVcI8G6792Q3d/dUD9BKbEPmkYV77mGe581Y5w+eCeNhtw/vtDFFZIx
X-Received: by 10.36.57.197 with SMTP id l188mr2564701ita.9.1519239370499;
        Wed, 21 Feb 2018 10:56:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519239370; cv=none;
        d=google.com; s=arc-20160816;
        b=MHpcPwVkcetN7v8OP0D9CFN2ELVmtEBtmkr0SQbAs1AOFsTvxq7g/7+m0p1tM4witI
         VxsB8HRvAhvCKNGaIV7CSdlOW0Gkvwbt4w+Eh2SF9DHW35l9tN8cGZxEZiyYN/bnnrB+
         XWRh0htiqd2aSDy/5UasJzKT8tQLdcqbbJUnYI7yEkFmVn1vBmfQjWy/09zJOO3Hyj50
         dVHg9b9udDwjKtCFue75hHxUb3yv9aFUEThRQjklwcBRY5H2aAPFDGA9rbO+wrBA5Sp/
         LVk9scmNXuUeSIs1yS9QQiR6lRSQVPXoWJAx2nOEbbRibP0bnsyx1RFlyrt7LuoVuixh
         Ua1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=qSMa8qPqe7NqHPA1rG+trB5UKowpqzS2jVdp4rn9M5M=;
        b=YePWEdN4A/Xnlal1qVdWqYaX5FombbRjQcIW0KNkUSTB4GGtX5EMe/3FFUcFE+7YdR
         d56ry5XukqoWyIAEqkaKQW8yxJ+cV1hfMcHIe6Xy49a8ICFEWNo1iH69sfLmoFycgbwa
         we922KV9KtbxW0XKubdwU7vS5/8P90J2T57ufBd9tx6lx7X2Wb7019JLLvxznoHO7NAn
         zVZlAwbcMHtQnUfcdAJOOC7syYUPPPHPgc+/hvNC1N+rmXdX1aldLfeu0FCPLBC3DrQC
         PY+Maw19d231HS7LmxxXFqgkPlKD+RceEPqmNhgUKtyR85kDYPV4DCmT+0REm51FTHh3
         +gGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S04H58JC;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::233 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x233.google.com (mail-pl0-x233.google.com. [2607:f8b0:400e:c01::233])
        by gmr-mx.google.com with ESMTPS id x35si1152212ioe.2.2018.02.21.10.56.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 10:56:10 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::233 as permitted sender) client-ip=2607:f8b0:400e:c01::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S04H58JC;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::233 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x233.google.com with SMTP id s13so1424587plq.6
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 10:56:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qSMa8qPqe7NqHPA1rG+trB5UKowpqzS2jVdp4rn9M5M=;
        b=S04H58JCsaVTMwSThQvUIsnApdCB3oxwg36Cc+nXjCikulrlKoltg/jp4CSPQ2Aqng
         EWxpqLuqctn3UBkurNZIrMWXiQz+DqtyV3+/Xqn6dJeKAj47FYIuKcmniKC3SNSn2iJR
         A3LcUwd+41Oin72dKmMGxi47aDrtpFeBhy+dxAW9QF3r1BH6CEAFrZxZkP13CoDZSLic
         rsNBZiiC9UgC3Vl7x0Xd59O95d4r3cGZ7DCOMPet4u3OjrFa/k9p74jqrGahq8sTCTJ5
         qrm4CtnFn/w/OoQCO6B5JOP1naxAYK+I/eenNkK8W7mnfii+wzS/12QMYi8MDcTs51IL
         9Kqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=qSMa8qPqe7NqHPA1rG+trB5UKowpqzS2jVdp4rn9M5M=;
        b=IKCQSHWlWBLWddeQqQ+EH9H5pKGO0nZsG3/jGXcNpQ7lo+ihRfjqtAKXr4DIjoslS9
         /199ybDbxh8NGuWnUa1ZUcbH94IB6WI6f9JXKZT9rAwPZ4Ifjy2z71xK13zcz9vnC+7Q
         YuYTSgbPOTlksLnNSCWtf6B/I+XbwxI48o3G6gdPtcsSwYirSDPlED6Fa3s+4LjNnIVv
         +oE6aEj7LD7dOPPMT7mLNLFVp/0GfKwL9BGTYJb5jTJ4l7Gc0tJZ/DJWE3l98jP9epwX
         W3B2qyZkBGS9tehXER8zexGbOLPY44wIkaKn2Pzf+xuG57n68B9B6azDGh9IGOBZB+TO
         DjgA==
X-Gm-Message-State: APf1xPBuBIKoRgukGuNqG2xnudVcDKS4S3TxeD3FhLpkSU6ICEDFV3lp
	nd9mmbMOzG3WizuuLpQYo2U=
X-Received: by 2002:a17:902:367:: with SMTP id 94-v6mr4076600pld.140.1519239370146;
        Wed, 21 Feb 2018 10:56:10 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id r29sm998352pfj.99.2018.02.21.10.56.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Feb 2018 10:56:09 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH 3/3] staging: speakup: remove space after a cast
Date: Wed, 21 Feb 2018 10:55:57 -0800
Message-Id: <1519239357-9527-4-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1519239357-9527-1-git-send-email-santhameena13@gmail.com>
References: <1519239357-9527-1-git-send-email-santhameena13@gmail.com>

Remove blank space after a cast to conform to Linux kernel coding style.
Problem found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/speakup/speakup_dtlk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
index f109b51..dbebed0 100644
--- a/drivers/staging/speakup/speakup_dtlk.c
+++ b/drivers/staging/speakup/speakup_dtlk.c
@@ -266,7 +266,7 @@ static char synth_read_tts(void)
 	outb_p(ch, speakup_info.port_tts);
 	while (synth_readable())
 		cpu_relax();
-	return (char) ch;
+	return (char)ch;
 }
 
 /* interrogate the DoubleTalk PC and return its settings */
-- 
2.7.4


