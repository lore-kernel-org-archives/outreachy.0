X-GM-THRID: 6663618170330284032
X-Received: by 2002:aca:e103:: with SMTP id y3mr4703570oig.52.1551494511239;
        Fri, 01 Mar 2019 18:41:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5dc1:: with SMTP id r184ls94144oib.5.gmail; Fri, 01 Mar
 2019 18:41:50 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYd79t516VNFfOCkUjugegeSKf4Caj9hnCrHmjUMzEr1yUx22A1xGpHjyCHyIMBBYWjzSrX
X-Received: by 2002:aca:be0b:: with SMTP id o11mr4842064oif.57.1551494510339;
        Fri, 01 Mar 2019 18:41:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551494510; cv=none;
        d=google.com; s=arc-20160816;
        b=vrlEFaTMN+sgkqKQqWoCO+FIM9ALB4dc7iMendsHvynFP9DjjAsq1vPbvChmG0kCRV
         kdfaB6rrQVx85o04ASeOszK5qKHVbXlr4GnFqA1fyJa+hhIOufnz+AgfzDqGZOTjxoRw
         VV5V5Aj77fMYb+Es2peQHovQswick3NOD5EONJV82a+WJi3L4zuA5yYTeLy9fWJFOVSA
         FY7Uaf5hcB2Jpse8qf4MgSqC7EDgWA/xzzDkEF74IFL3SUyvc1MWNGAsKXdJKhpb06dF
         xF62sYoXQtCnXDgHOGrmUG+NDQxKDtoMw4W4AIyZ1zbik0SgbNSI+a6bZlBskcxnKlY1
         75HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=ZTmApvzseCl3GQhoiS9IAo+DipcRs+SppHulGhv77No=;
        b=mYC/rCk9GyYkAHi8hexgz0OpXljyJI/b5frhOSlhgwOpk6iuqtgRaIuJNJaNi2p/WN
         NQ6OxlOtHdSj0aGL7iBrfrlDRun9oK58xQc+uKxOxTHl+Tyd8jwrvVYOAzMReVMu0TDQ
         zzwFlFVveXOkwppz+dGePjAwC2xqbL54xgEnAGTjRcJRUrBxXpJUOD9wAoKS3QnCFlys
         8rLgmEu4YChU0byG3AFZZuXpT2YfEOA0IlH5DMzn5eI8inpjY9io+Y4O7PsgvNvVmtS8
         YB/21RcPdeQvWFn4+jw+FGsyRv01TwvqIEZDZ+mD6eKpJSG2YVBfTP7XipycVcnFe55j
         tJTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P1UFGde3;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id v129si1179915oib.0.2019.03.01.18.41.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 18:41:50 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P1UFGde3;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id g16so21197892oib.1
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 18:41:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ZTmApvzseCl3GQhoiS9IAo+DipcRs+SppHulGhv77No=;
        b=P1UFGde3HTlbG+kzj16e9fa6KQsx7vw0YOHbY0mfCRQs+/hnMlJxnoD4uZW986er4r
         bHzg0dfTTEP1PYtuJR4osqcgPf29KonMJH2mur3LScVrZFFfTANlFPhJBf1Qk5SAysaG
         tjDmjKq0qWJ0/H6au8ozdSKDIKp8NE7O3ssSH7ORtYg7PWTFb239U6VAypgtYdMC++iQ
         iEAyRJkF9QD6wRaUp6WDSMuhz0lJO/bVh+tODz3xW+Di17dWEyMvze3c6jKekomRlQrD
         DPjd+5nDstB3gHs9uaLWF9UeTIG9obExAQmOn8sXbrWMEXo5HkpG/EI5Hj/euAPvsmD8
         XuXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=ZTmApvzseCl3GQhoiS9IAo+DipcRs+SppHulGhv77No=;
        b=r3LHbeU9BdNdSHbbcAJeDFKdhFJWJqrZSH2Xu7eBinvr5GCL+gZc5+IVMQST/KIoB7
         40EGB0MA9h+cDvo8dMVblcRizDehP1W0QnvQEUdhb59Z6ukFuasLR7HA0BjXxHXLRW0w
         J6+nEIhewk6gXh9du/uiSyDz6zqUNDo++1Zqne4+qHwwlYMqMftdflI2h+w0ldn7USlF
         n6/CpHNcNflz0Uj/HNnxgKyr8vyk4lVurewavicuAuhPfFlF3FvLqqTctuJcs06eTHZH
         +z3DlCsOTayq9Mfc8CsQSye13S5Z3+II99PHaCMPzV0sWdx79jM3+E2i2NAdWz2Bjdg5
         hOCw==
X-Gm-Message-State: AHQUAuZ78ND/GBPDS1eCyGxGNGQf/8ahcGMDfPJXT5x6jvtDgq1Iw0ff
	hKF0X82FAtMAin84DoJzefnrJ8tEF18=
X-Received: by 2002:aca:abcf:: with SMTP id u198mr4958907oie.55.1551494510009;
        Fri, 01 Mar 2019 18:41:50 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id 33sm9726450otr.53.2019.03.01.18.41.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 18:41:49 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 1/8] Staging: vt6655: Fix line over 80 character
Date: Fri,  1 Mar 2019 20:41:35 -0600
Message-Id: <d7f83bc88ed34a041fd7e98a33966e4ce540ca54.1551494031.git.madhumithabiw@gmail.com>
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
index d71022aa3f86..6bbbbe1314d5 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -44,7 +44,8 @@ struct vnt_private;
 void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type);
 void CARDvUpdateBasicTopRate(struct vnt_private *priv);
 bool CARDbIsOFDMinBasicRate(struct vnt_private *priv);
-void CARDvSetLoopbackMode(struct vnt_private *priv, unsigned short wLoopbackMode);
+void CARDvSetLoopbackMode(struct vnt_private *priv,
+			  unsigned short wLoopbackMode);
 bool CARDbSoftwareReset(struct vnt_private *priv);
 void CARDvSetFirstNextTBTT(struct vnt_private *priv,
 			   unsigned short wBeaconInterval);
-- 
2.17.1


