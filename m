X-GM-THRID: 6663618170330284032
X-Received: by 2002:a37:5b05:: with SMTP id p5mr2891587qkb.11.1551826120485;
        Tue, 05 Mar 2019 14:48:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:3192:: with SMTP id h18ls4573016qte.8.gmail; Tue, 05 Mar
 2019 14:48:40 -0800 (PST)
X-Google-Smtp-Source: APXvYqzVgqLhsCaJNf6fcx7c8U4KC62is8VSJoREwAYX1u2GVuIyuwxlv/x1YvGSxjsAgK5TS0j5
X-Received: by 2002:ac8:2404:: with SMTP id c4mr2656407qtc.52.1551826120074;
        Tue, 05 Mar 2019 14:48:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551826120; cv=none;
        d=google.com; s=arc-20160816;
        b=ZYEruAB47COdz3S0jCMRW7pHY7RTAyhNaD4nYFAlwGf7wy6efZbmwwKEkElzetU8kr
         2wodGUT420a78jElO2kHj1NnS7WxxUaPs8IOCc5o+FQD7SINDAQac6zbOgBahAoPiRvv
         Ep/dPUSRuRI/NDkIyfv1vdjW8XEQZwN0mVOn5AAmxMrlILkKA7yNnu/MiqhQe0GAgsk2
         nkDfvRxtY+xfQKYTOmZ3nAwdsdXynYp50bOzqCXgipUHM1YiP9UNYyqcnxtKwqI2UY9B
         esQgbP6wqAn9LRi4rDV7t8/ZIjBvifdMPXVeNmXYyEhBz1KzJrf7qEuorP2ihFUBw06O
         uHNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=FfJum0OL7BKB7L22n4T99G9OEhxGwOvREf/Sh1PvLHU=;
        b=Jq4bYzP2HRpgI9CvgBWbLuGQB1hLwqsC9mJaZdgcucbVHWB2LOihq3m+tKtN+xfT0c
         abE3ODHpTxIcWACdbDNFygVIliuAOXKbO2ooPWegI/Hmgve0sRrqUOg+PM7TG83cuqRg
         bzZfezEWzLTrFxHaN0nd6RRdcAw68MokWIj6TE0bRBosj/KgPasVNKz0G5MTq946u0fH
         Sbf3LieGGabJcpb7fqnKD7IkQhtuVJCpBgyivK6/I8xnbRkPIYZhSC/oYx/rHmNTakMS
         PdJy8AItxILFUZRJ+betZB3rrm2q5N9gBqmlH1gbDFDCeAIkrxULMJxZE4phvetqXb7Z
         psUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fh4hmLeu;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com. [2607:f8b0:4864:20::332])
        by gmr-mx.google.com with ESMTPS id o22si535067qtm.1.2019.03.05.14.48.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:48:40 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) client-ip=2607:f8b0:4864:20::332;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fh4hmLeu;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x332.google.com with SMTP id v20so8959672otk.7
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:48:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=FfJum0OL7BKB7L22n4T99G9OEhxGwOvREf/Sh1PvLHU=;
        b=fh4hmLeu0IjnMiJi2m7i6zEhslaqY7opSVS1YKACnYf79CKehLu6GIrn7XqsHf+By5
         sPb3SveVyAp9OmsQwvzgNVOPqTlNzjNNVKwUMGH5hvtATP60unxpvxmiPiTMD/j7IiVt
         b1E2/1AvfeuHwESS86jZCNNzJT/AX0GiiPkV9CrQ1DtipDHLRd4lYi2nWiehn3s8FK8B
         oAVO2FKOMFy/p/WfyMOS3Qognvu9QS3HaMg2WFmTtwBRg49fR/bXy6r+yw8TQvXjhfW6
         ohsv79ijeOT3wbd88dl+pPxVAGXRNlPB5lOZnGyu8hk9RMrBxHAUTJgNLzeDIcZCnTmn
         JqDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=FfJum0OL7BKB7L22n4T99G9OEhxGwOvREf/Sh1PvLHU=;
        b=fcH4Jq7EBnplkW6bcIukAizhwPuxo2P8iJIBxH9srtl/9LZp7rSZL8S55+4ZJTVkli
         n4hCHd/tHZildaq3TAXGJ1AyorcNOFa+f9NWmFFbc62c2CwMjZDCG7MqNq8E0Gv3l9f8
         TbdYGiiIx288mCsPxYc269T06dMybPXoOnlese4JBY3rH9GuCX+0xEcvJ7CAI9nX+oQB
         27+IwE72L3GCmshZA2oy6R+oHAzQrsSNuvjGCaLzCsx2TglUl8HxSyyEtUrk31i3YkcI
         g8i6YGXVEaZwugCU5Gd7PfNNmjeVXpGlYyKGNaFNJJcuMXDYXU0tvE4hqvSisdbQ28RE
         1M8g==
X-Gm-Message-State: APjAAAXpxxEBNb7Ook6cBNPEdcGqiN84BbE7UmeowM9/kwsi7Xye0Yv/
	uHHOUDX9gVb3jew4QF8AvXHpMD1Pqz4=
X-Received: by 2002:a9d:4b13:: with SMTP id q19mr2546734otf.304.1551826119710;
        Tue, 05 Mar 2019 14:48:39 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id g12sm4083675otj.41.2019.03.05.14.48.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 14:48:39 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 3/6] Staging: vt6655: Remove unnecessary blank line
Date: Tue,  5 Mar 2019 16:48:25 -0600
Message-Id: <6e2853444e02e96f601b46cf74471bc00f809ad7.1551825578.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551825578.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>
 <cover.1551825578.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551825578.git.madhumithabiw@gmail.com>
References: <cover.1551825578.git.madhumithabiw@gmail.com>

Fix the check issue provided by checkpatch.pl
CHECK: Blank lines aren't necessary before a close brace '}'

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/mac.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index 4750863c1bb7..40a8f1ce837c 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -593,7 +593,6 @@ void MACvSetCurrRx1DescAddr(struct vnt_private *priv, u32 curr_desc_addr)
 	iowrite32(curr_desc_addr, io_base + MAC_REG_RXDMAPTR1);
 	if (org_dma_ctl & DMACTL_RUN)
 		iowrite8(DMACTL_RUN, io_base + MAC_REG_RXDMACTL1);
-
 }
 
 /*
-- 
2.17.1


