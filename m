X-GM-THRID: 6663618170330284032
X-Received: by 2002:a17:902:b191:: with SMTP id s17mr2661988plr.14.1551494527536;
        Fri, 01 Mar 2019 18:42:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:8f45:: with SMTP id r5ls4050042pgn.8.gmail; Fri, 01 Mar
 2019 18:42:07 -0800 (PST)
X-Google-Smtp-Source: APXvYqzLjeiVz9KVFYaltSfZxknBimwA+KDCHSI8hbTC+qRePzQRmTP63Djurfezs42ihWYSfg2l
X-Received: by 2002:a63:4e15:: with SMTP id c21mr3223411pgb.85.1551494527020;
        Fri, 01 Mar 2019 18:42:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551494527; cv=none;
        d=google.com; s=arc-20160816;
        b=Ht3Qt4qs43NamiEzxlSq7rzxLbJQeeCuDGlPiF4TAcKVdfwD8t3ej+5v+dLrFTsgzz
         6CakMyYNkP+GkE1xiXM8FKZF2X8/WnS1jqTt480G81wUe2MnL1i3SLETn9q5kSKr9RhN
         UVBwlqjM2l68WJ0iqx+Oz2Gqdsr+1QaS9lSTd6f6SPTF22YiZz7AAJq2TPNbx+qUyh7E
         re+cvrDWsnO0iYVXM8OBDXy/O0cuiTevwwchojevHnyCtYm8p+bUxDrSR9ELbWNPO80y
         +kelM5ToIVLUSehALhP9ihvZB/k9YndBMXZWGpkEbhN4xhwmIWsGhJfdPPbLxKnnRhYu
         9MYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=zvHoI/g2762Bs3rEOZC8+2J/n7l5zWITPpdPD+sAH3A=;
        b=Ekd8v0W/ub2RUvKRwWFwkJL49XjWbho1kIwlvgKcRjkioHr49bEo6wCcMtiZv8Rblq
         Bxz5EbP7BYKxeEEtl1FOpe6MeahbpSTM1PtELK9rs97/Q4J35CGgXtwzy3rx2kVfHNxn
         9FJNllG2H7Juf/uPqzZyVlzPDvwqPoFvO05WtNh0ciX1yEG+KAm7wLlf9YII+ieyOHcl
         aDlLPmS2zl11zZQZ+gZe4nUMZZKRccXmCAmmCFeWcts+ist2Ob2Q/fFVnM4zOz4FdmRI
         akD26VWpxd+56tC9OD752pnOUBpGt+ldovLGlkguKrw+CDSiyhpiemXb+OuIqbMD3n9B
         qc6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LMgU38B3;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com. [2607:f8b0:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id z184si1180278pgd.0.2019.03.01.18.42.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 18:42:07 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) client-ip=2607:f8b0:4864:20::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LMgU38B3;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22c.google.com with SMTP id b4so21174796oif.6
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 18:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=zvHoI/g2762Bs3rEOZC8+2J/n7l5zWITPpdPD+sAH3A=;
        b=LMgU38B3mUSbsW9qnMA6gbxilRpbw7Cdo1+aykissplZMiepYiFrLUUg83XWH/ewss
         Qov57gDm+L2ngct3f9bhDfQst0BPMOjCZFr8Bc1nzJ/L6grrceVrl1fLRQXL2gZjZB6P
         TFZXQ5hlPqUV8KmtlOUE3g0kInkq5sLvzeSWGfb0pptMQnpJn17d30ugGeJZ2q9v6VDz
         d4UWke9Rh9wNenOKBflX+2c7+rLVdkYKN2xFFo63BPjf5Nuqydh0wkOvK+y3WdBlDO0z
         ky2pQNWKH1SyTjDItyRD+0c3Ly1lkaZmuKrwCxBtV/LuRJlqdssMTWMG5mrEmWfmUOcY
         1LXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=zvHoI/g2762Bs3rEOZC8+2J/n7l5zWITPpdPD+sAH3A=;
        b=YmCYR8kqC4mI6i/ea2VNwnq35Ou6yXJznS7UgZePa7ZLXrXp5j88OXMSxASwcVWD/C
         2d8V2IR12b6uhlib/jQIkvDCGD10DFr5dfBj2UaAhhADd/uRZQS8Q9aYaVFon3vReDQV
         wvauDM8INewlkhit9ZQWT5ZhKVefjaA4QSM3msJEGB5VLhJ7hqJqmxyidOfmx8APggz3
         tf2mZ8foz+10yCm9bXO8hxhi+j8sZWXuH1MVy+4EGv4njRqB+2WkClbIRjF/WY6SazcC
         +OB4b47E7EWKrxsDHsq1Dj4ks9qeb4GCSNqH4kaDoKvR4/qqjEbxsMHx6gUHUdaVS/p0
         t8pg==
X-Gm-Message-State: AHQUAuajX7XU9yF2lb/tOAyznizWvv/V8A1VGda12+TuVnxR52bb47d1
	AoJOd1YBdGUPfbH5t+LrynA=
X-Received: by 2002:aca:416:: with SMTP id 22mr5330923oie.147.1551494526674;
        Fri, 01 Mar 2019 18:42:06 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id q6sm7283272oia.4.2019.03.01.18.42.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 18:42:06 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 7/8] Staging: vt6655: Remove unnecessary blank line
Date: Fri,  1 Mar 2019 20:41:41 -0600
Message-Id: <2e8ed4e3819b14b237f9275b731deaa7d09eac79.1551494031.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551494031.git.madhumithabiw@gmail.com>
References: <cover.1551494031.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551494031.git.madhumithabiw@gmail.com>
References: <cover.1551494031.git.madhumithabiw@gmail.com>

Remove unnecessary blank line before end of block brace so that it fix
the check
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


