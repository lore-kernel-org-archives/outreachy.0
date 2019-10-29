X-GM-THRID: 6753335121634394112
X-Received: by 2002:a63:eb08:: with SMTP id t8mr30515288pgh.49.1572383363935;
        Tue, 29 Oct 2019 14:09:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6947:: with SMTP id e68ls7039220pgc.6.gmail; Tue, 29 Oct
 2019 14:09:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwc+3Uj8gqdbCi/e3od5Cy1PRUtK5zD0Ry9ajW3q3sbLu4rIhWRE0r09JVsknzGMesx+T9+
X-Received: by 2002:a62:f251:: with SMTP id y17mr7406723pfl.139.1572383362578;
        Tue, 29 Oct 2019 14:09:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572383362; cv=none;
        d=google.com; s=arc-20160816;
        b=ibNWLgU+gtj0KvWIiOZZW7B0Pvvn9A2Ed/K9yru98rrVd84bkWmUs4XH++idao/FHb
         DhhcH9ZDgtFeFnidiJbRHW4J4GoiyaSG4BpDdg6QXlU8SVi5Ur83FpHqwJ5t6n3qeBFH
         2Y3/DdHlqXmj217GEVNNJ9tdimjon1skCW0OjC84yZKS09ex85zIwIFAT2NBCH1YXUVn
         hWcUt2PvFUL7LWUoCnELpHigBjecR6aSlZpOn7jKRvgkcLl97tvfAbvJr6198Ft8DrTZ
         8BjlhD88EK2juG2I8hIm6jFmVibwBt2eub9z8FPKY8iZP7HHMnJw0xEJKLj1NYxd7NxL
         8tPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=J8cn+LNGBQlD5QlWJmme2gIbrHVQ0+7rWGrSL4Madoo=;
        b=u6qiad8+so0ZTz/zMQVHQ47pOXb7RQhZBq9p9d2v6ehtZgo8+KG36LzoEJtpqhGKFD
         RoG1pLPYFjvM6mTYiGfOCbKksSNM3cm2eV17K5AvZOrckBV4xd8YCwM+hUhtHoH2MLRR
         HEp2+YJZC6UyAk7ypC1pfZj3WwgPQb/ShfuP5aS984o/uh4WYnX4U0uuo5qceDOtbF/B
         omYNwTvJ/tDypD2Fg8HLFymbWZrRdgIXgdzCa0dehJmDonH7WnAvjBXSe+iCPG3+WnbZ
         de/hvlHH5hklwehzcL5jJqpDoV+eB8zEjaAamcDRQR3KtZulleUq0pVJ12lLIgNUqu05
         J+kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eU3Ih22b;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id q196si7227pfc.0.2019.10.29.14.09.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 14:09:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eU3Ih22b;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x742.google.com with SMTP id u184so389458qkd.4
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 14:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=J8cn+LNGBQlD5QlWJmme2gIbrHVQ0+7rWGrSL4Madoo=;
        b=eU3Ih22bpawbGnzb3bGBkrltarVhNzNANX8Gi9sC1W/1OsqTeSKiQ5X7SFx9v4g5C3
         4QSgxgJ+zrtYy/QE6PnxHOsqRjVV4E2iq0QPATe+6X6DdS8M35i4nIRmes+O0AjhMWfg
         WecszofhOAuQQK57u2rFdRhDj9RXtnBqI37pzfvIlAZKKu2XREGjGfvM1KulrQ5hJoa5
         Pv8plj4m9enFLqbxuAcNtMXb79xKWUVFwvUKE6Y5lSR0LlQjr2DT92MJyVFLW1pjBmN2
         G+K9JKQ91sSg42L5ZJYyoFoevWxIJohi8NFtmguCC49zYia8Xnaov6nO3PdvEHjXcvvv
         kmVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=J8cn+LNGBQlD5QlWJmme2gIbrHVQ0+7rWGrSL4Madoo=;
        b=PnFHyv2sUJ8XMn/BPIwoZW303HNQlmg6vVQPDXrMXNMneh+H7xOYl6cb37wC9WiUKF
         4AXn2+6Z/jNKcl8xn9gL4qPKVc9bqegBQqN4gMFVi0I7/+QzNHKA6cELoTZhA54euuJe
         0LV+qkfSrm1HSUmNB2+Z09q2b+UCxd1b70esBP+MHCCprRVq3TYWRL9NUHSudkJlU5D6
         apChAQihYAKr0XlcLJS7cgk1wwaRmczYUWOKIbuIXTbaWvt8uXmgWa4Z7xCnptzaBZ7r
         3I8LPHtOo7VzK/EaPjOaa/UcF9tfX7Bk5DRjHz5NgmbVLK0ga/vEBbkGygijsi1zhxXC
         qqAQ==
X-Gm-Message-State: APjAAAVUXZljOtKf04DOzuDXZRq59tKgSR60wpmCsyrHgbGVh1xd7HUM
	+N5DlygRhfMZ/FSoA9l07EpJoGr4EjaC0w==
X-Received: by 2002:a05:620a:14bc:: with SMTP id x28mr23246894qkj.433.1572383361937;
        Tue, 29 Oct 2019 14:09:21 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id 4sm8078335qtf.87.2019.10.29.14.09.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 14:09:21 -0700 (PDT)
Date: Tue, 29 Oct 2019 18:09:17 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: vt6655: Fix lines ending with parentheses
Message-ID: <20191029210917.GA14956@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix lines ending with parentheses. Issue found by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/vt6655/card.c | 24 ++++++++----------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index eba4ee0..e65c982 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -79,14 +79,10 @@ static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
  *
  * Return Value: none
  */
-static
-void
-s_vCalculateOFDMRParameter(
-	unsigned char byRate,
-	u8 bb_type,
-	unsigned char *pbyTxRate,
-	unsigned char *pbyRsvTime
-)
+static void s_vCalculateOFDMRParameter(unsigned char byRate,
+				       u8 bb_type,
+				       unsigned char *pbyTxRate,
+				       unsigned char *pbyRsvTime)
 {
 	switch (byRate) {
 	case RATE_6M:
@@ -736,8 +732,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
 	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_24,
 		     MAKEWORD(byTxRate, byRsvTime));
 	/* RSPINF_a_36 */
-	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate(
-							   (void *)priv,
+	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate((void *)priv,
 							   RATE_36M),
 				   bb_type,
 				   &byTxRate,
@@ -745,8 +740,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
 	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_36,
 		     MAKEWORD(byTxRate, byRsvTime));
 	/* RSPINF_a_48 */
-	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate(
-							   (void *)priv,
+	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate((void *)priv,
 							   RATE_48M),
 				   bb_type,
 				   &byTxRate,
@@ -754,8 +748,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
 	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_48,
 		     MAKEWORD(byTxRate, byRsvTime));
 	/* RSPINF_a_54 */
-	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate(
-							   (void *)priv,
+	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate((void *)priv,
 							   RATE_54M),
 				   bb_type,
 				   &byTxRate,
@@ -763,8 +756,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
 	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_54,
 		     MAKEWORD(byTxRate, byRsvTime));
 	/* RSPINF_a_72 */
-	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate(
-							   (void *)priv,
+	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate((void *)priv,
 							   RATE_54M),
 				   bb_type,
 				   &byTxRate,
-- 
2.7.4


