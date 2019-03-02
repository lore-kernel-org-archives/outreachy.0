X-GM-THRID: 6663618170330284032
X-Received: by 2002:a25:b941:: with SMTP id s1mr3848100ybm.99.1551494514208;
        Fri, 01 Mar 2019 18:41:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:50cb:: with SMTP id e194ls476ybb.12.gmail; Fri, 01 Mar
 2019 18:41:53 -0800 (PST)
X-Google-Smtp-Source: APXvYqxJKn1jeRNd/alMXP1aWPXSP9DhDJBziFLZ45R2Sd299Xjvt9qBb+nnWOuDSbgyWrs2WBqG
X-Received: by 2002:a25:e642:: with SMTP id d63mr4435012ybh.53.1551494513707;
        Fri, 01 Mar 2019 18:41:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551494513; cv=none;
        d=google.com; s=arc-20160816;
        b=ge/XGEzxBIzsb9nAiaj/IvkTWzM8UsaYGYxbZQz1D5nZmaVs3yj5Y042kIK98CzGK9
         izElee8peE2k1DxarRswcy0dDqzuHVVK+mnKjXiJbtvev9g3+cBA0WIyFMh6Mg1wEurS
         CZaw8ouOMBLhwkv62rr6kfZt7mCivFiYorAkI0Cbe7aEtfA/1yynQRY/HZe+ErzQlwVr
         gRcRJE9jUyOolHHqAOG1sqpSRRfhLvNGjsCZGCH30bQStxgRewd3WsbeiP1agUW32So+
         rznzo/B7cdqcocP+UE/lRAhpODBjK2r42Onzsle8IFliLJaLU0S4K1/R1/AxFwwaNo03
         n3yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=YHO55fqBqsu+l/ajs2iP5Rufps4eiqmjkRgv0eNnNvQ=;
        b=wsqWWUrMOWNi/2jW0/ouRlVw6w91O+gX6S1YckKlXD5xqLvumdNTMUkosYIbd+Jpkc
         yc5cUIkgXKnG5nDZaGQZWHjGRJqZttbcNbwjKCSw/PcHOLp/yEkJP2UFsUKiSkghQeMj
         jkfUxKkyDHc7UtlW7k45/dQd6X2ETSvYHUnzOMMTkWH7WFt5/R6SCkAdHulB/U5hnq52
         LhUUgt3SS6u6jXoD9RwzN+2bNmuT5Lxwa0mrOGd4nwUDtGCh9D5BnUMN/G/cRMQORuSY
         WeavdmTTDJHab0wJI06TMNQv0lc91GwBhfFiMUmRWIUL5BK2FpSwRaYVf3MzgZx3J3SX
         swOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BRxinqvE;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id c1si256327ybo.4.2019.03.01.18.41.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 18:41:53 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BRxinqvE;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id t206so21185619oib.3
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 18:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=YHO55fqBqsu+l/ajs2iP5Rufps4eiqmjkRgv0eNnNvQ=;
        b=BRxinqvESFPXS8+ZUAVvcel34/XsWuNhO2zzAmFpHDn//fl/HwKGXMocVKrliLUG0Q
         MIRFm5mniRJTDHcoKRo7Wn/XSA9n/eO3YSfpVehz93tMRm1rMZscv7ckJU2TQoFk4M3Z
         u3Fkw70HxQSG7hkyW0mTGljHNp4eAT2Qpgzi+3gCZKmYl+TMW8tjNDXwSSc9stqNtFJ8
         0TDScbOc3D3VwjNATjHknHmqnwQ/RwjSyE95pSaqICEoE7mv3M+8/Nww1X6qaWl5HyFy
         QalIIzyvY/w2Dizz7zCiCOwpnt3Po3gf6gV1m0GmwIjrEPDM7ni6LyE0bkV7HkdCQBjA
         SmVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=YHO55fqBqsu+l/ajs2iP5Rufps4eiqmjkRgv0eNnNvQ=;
        b=lqTr/x3uXGheopHxA9XdGvKCxiKyce3QOtFx9j257evsoYEBLvip+Uj4YiKVN4/MwI
         5+Sdf2GkZXh3A1ZOHAUvWw28YqJ7QPzhSWGOHB9CQS8YMf1JlwzRwA1Xzrv0FcpCRnyI
         vqt47RXwQRz7CfOZxJJuzS3xGo5MJvRljBafMBVnpgfiZZR8hih94jrdtnk5HEgwx8yU
         jgdzgvojqucVPUyXLG+ZL4VQL5OtIqXSbhGioyp6Up4PbTfQca5WxIIAX0Z+DeGHHusg
         +FCWrZgxB4DenTi0XbppdpeoFY+mq1fq9OL00VoJF22jwj3wVecYSqkNjA+bh8N+jlYP
         NkTQ==
X-Gm-Message-State: APjAAAVZMmb9x6RhCX96XKwl+Qfz+GiBWNsHIZiLI2mKt6GtFx45L2ok
	PjgRKd09o6oBbMeYjooHH/EN1+FTC90=
X-Received: by 2002:aca:c207:: with SMTP id s7mr5331108oif.1.1551494513212;
        Fri, 01 Mar 2019 18:41:53 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id o205sm4832143oia.53.2019.03.01.18.41.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 18:41:52 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 2/8] Staging: vt6655: Fix line over 80 characters
Date: Fri,  1 Mar 2019 20:41:36 -0600
Message-Id: <bc34e15f3a6dd41ffa6e4fc9eceb44945198590e.1551494031.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551494031.git.madhumithabiw@gmail.com>
References: <cover.1551494031.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551494031.git.madhumithabiw@gmail.com>
References: <cover.1551494031.git.madhumithabiw@gmail.com>

Fix the warning
WARNING: line over 80 characters

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/card.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 6bbbbe1314d5..490cecf8fb9d 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -62,6 +62,7 @@ bool CARDbRadioPowerOn(struct vnt_private *priv);
 bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type);
 bool CARDbUpdateTSF(struct vnt_private *priv, unsigned char byRxRate,
 		    u64 qwBSSTimestamp);
-bool CARDbSetBeaconPeriod(struct vnt_private *priv, unsigned short wBeaconInterval);
+bool CARDbSetBeaconPeriod(struct vnt_private *priv,
+			  unsigned short wBeaconInterval);
 
 #endif /* __CARD_H__ */
-- 
2.17.1


