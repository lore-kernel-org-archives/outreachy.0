X-GM-THRID: 6753034664415330304
X-Received: by 2002:a05:6830:198:: with SMTP id q24mr4955637ota.354.1572313412225;
        Mon, 28 Oct 2019 18:43:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7455:: with SMTP id p21ls1450037otk.10.gmail; Mon, 28
 Oct 2019 18:43:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxzTXhWVyIJKg0ZH60Xv08/dgxDSk3Ll6VA75/qiRpE3+Auf4GVMHCZOEMdRtH0MEyTqHfo
X-Received: by 2002:a9d:4c07:: with SMTP id l7mr5169916otf.206.1572313411630;
        Mon, 28 Oct 2019 18:43:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572313411; cv=none;
        d=google.com; s=arc-20160816;
        b=mMVlDDAZOMgCxLEdwxf+8yMgTvOe9zztzXrcx7gnLkNTHt2PU14XnyAuQJhGjgw883
         EKhnPNF70yL1MwFrq1hBzWLRlZMPDhOcU/yv0JtESboLZBA+dHXtfSSsLznRoJ8lAPkg
         +TIcOqh+RFdWIS5f+J8AgNY22Jf0T/4V+gUiMcwws9YuVzDH5YVCTWkFN+IAqRomeJBz
         8dnokOuZaDY2Pe2fyQhQK7avoYIXt7J+4oWcS/Euw1wLhLWQ4ZojXpRwgODSv8D2+ZPb
         9ZzuwAUkcmc5R3ckvljgfrhtZuNTUTLsMQV/+FPd1f2aYGzrAOK5VkNeJrhJtWiCxWlS
         7GHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=X6pL/xiDS/rERWaTtkpN3WZ9KElC/+F38pnanmSrxfQ=;
        b=aviMJvegZvgoMdy1AVWvLp/BivkY0JdGkW8HbC0dhczTrLHe1ne0w0jLTCXKftZG5t
         Kt6wLMeE3v6Ap7/zOeQ0t0+2G7upxiYtBouyB3jd9kifm/E+8bDFA9KF2lLjZkROhnYp
         +mDnXJqjzOqeTb/+euOHDvpIknzg7OgYqWWOMR021/aiVj9eAaJp8Ig/StIi9Yuho1rB
         lM6LuaXL+edCF8qX0cTAUhE+8WYfDMnjFrbpi0LBbSHYxQOGrmqtE9JMbhwXEOZNm7qb
         WSTVIr1eDKW+XrtopHfWLy8vfjXORQDgH4RitlZVZwrA/bsePRlQ+iVwNT6ncc0uNg//
         9+9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vr5P6YWn;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id i19si717393otk.0.2019.10.28.18.43.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 18:43:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vr5P6YWn;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id z22so17740895qtq.11
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 18:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X6pL/xiDS/rERWaTtkpN3WZ9KElC/+F38pnanmSrxfQ=;
        b=Vr5P6YWnWuty2sCRj0ER73ABkvrtifU2f1UD80c8mj+f05Lxxt8lmWBrY2a6CAx1aK
         xwGFdy1+liMSJ4p1Gkb5KkjE95ftnNQ0TeoN7aClTPc4uihitkyIahRbQ/g03HIuR1Is
         2iLbNtm0VSqXa8WJzgYClo7XG2TUkUp17HOO/tHgj+119DiauPpXlSYr8sTCNMW5uIfA
         gt+Xn1gb5p2fW1CWvTmzf1Feoe41RYCI7rFp/YzCjylxY3q40DXv3DbCzqOLoFNB0j8X
         9d66q8WzDOaRrsCwneRXamAFX9us1hs1afapF/LrgrSZ1lDctrGYAVwzweIKMKwvjwqr
         eWHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X6pL/xiDS/rERWaTtkpN3WZ9KElC/+F38pnanmSrxfQ=;
        b=PYbCW8s5Vbg4pHuCx7MBWRv/O6zIJM/Jrw5b7ZZ25qA8aRzbvQTMJYvKc7H2xf5pp5
         0wdA2zm3EQLgMnudnEzx/r1qTdorRkJCa+exa4754WJV3FXaz4VNIWLSVzJ/EivoaNce
         GGTq6+zG872jmQJKB4mPdpXYNGQMplJlmMjPxG3VDVSaaiW+tzCNw17EglpG/bAICX9H
         TsF5tp/NRsSkXpmtHFKLBsdsAHmq2BKW7LDuAhvxvzJaiToh4WFNv6rx+5+l1EJr0AII
         xgJMY+rOG44egeHyNtwbz42z7fVt2MVXmPng5TOZetqiyYAWlFAuqYp0+GkEl2LV3hS3
         un0A==
X-Gm-Message-State: APjAAAX1oftTCubmXN7S5Gnzr6A4vF/b/vqoYxE7M8qkFyhp2snJH/sX
	uMvsGp1nxeBoEXm+NxS5rnNvWcctRdI11g==
X-Received: by 2002:ac8:5354:: with SMTP id d20mr1686212qto.229.1572313410756;
        Mon, 28 Oct 2019 18:43:30 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
        by smtp.gmail.com with ESMTPSA id 197sm6698394qkh.80.2019.10.28.18.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 18:43:30 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	kim.jamie.bradley@gmail.com,
	nishkadg.linux@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH 2/5] staging: rts5208: Eliminate the use of Camel Case in file ms.h
Date: Mon, 28 Oct 2019 22:43:13 -0300
Message-Id: <20191029014316.6452-3-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
References: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Avoid CamelCase" in file ms.h

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/ms.h | 70 ++++++++++++++++++------------------
 1 file changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/rts5208/ms.h b/drivers/staging/rts5208/ms.h
index 952cc14dd079..dc7289ba9c4c 100644
--- a/drivers/staging/rts5208/ms.h
+++ b/drivers/staging/rts5208/ms.h
@@ -92,37 +92,37 @@
 #define PRO_FORMAT		0x10
 #define PRO_SLEEP		0x11
 
-#define	IntReg			0x01
-#define StatusReg0		0x02
-#define StatusReg1		0x03
-
-#define SystemParm		0x10
-#define BlockAdrs		0x11
-#define CMDParm			0x14
-#define PageAdrs		0x15
-
-#define OverwriteFlag		0x16
-#define ManagemenFlag		0x17
-#define LogicalAdrs		0x18
-#define ReserveArea		0x1A
-
-#define	Pro_IntReg		0x01
-#define Pro_StatusReg		0x02
-#define Pro_TypeReg		0x04
-#define	Pro_IFModeReg		0x05
-#define Pro_CatagoryReg		0x06
-#define Pro_ClassReg		0x07
-
-#define Pro_SystemParm		0x10
-#define Pro_DataCount1		0x11
-#define Pro_DataCount0		0x12
-#define Pro_DataAddr3		0x13
-#define Pro_DataAddr2		0x14
-#define Pro_DataAddr1		0x15
-#define Pro_DataAddr0		0x16
-
-#define Pro_TPCParm		0x17
-#define Pro_CMDParm		0x18
+#define int_REG			0x01
+#define status_reg0		0x02
+#define status_reg1		0x03
+
+#define system_parm		0x10
+#define block_adrs		0x11
+#define CMD_parm		0x14
+#define page_adrs		0x15
+
+#define overwrite_flag		0x16
+#define managemen_flag		0x17
+#define logical_adrs		0x18
+#define reserve_area		0x1A
+
+#define pro_int_REG		0x01
+#define pro_status_reg		0x02
+#define pro_type_reg		0x04
+#define pro_IF_mode_reg		0x05
+#define pro_category_reg	0x06
+#define pro_class_reg		0x07
+
+#define pro_system_parm		0x10
+#define pro_data_count1		0x11
+#define pro_data_count0		0x12
+#define pro_data_addr3		0x13
+#define pro_data_addr2		0x14
+#define pro_data_addr1		0x15
+#define pro_data_addr0		0x16
+
+#define pro_TPC_parm		0x17
+#define pro_CMD_parm		0x18
 
 #define	INT_REG_CED		0x80
 #define	INT_REG_ERR		0x40
@@ -152,12 +152,12 @@
 #define	PAGE_SIZE_0		(PPBUF_BASE2 + 0x1a0 + 8)
 #define	PAGE_SIZE_1		(PPBUF_BASE2 + 0x1a0 + 9)
 
-#define MS_Device_Type		(PPBUF_BASE2 + 0x1D8)
+#define MS_device_type		(PPBUF_BASE2 + 0x1D8)
 
-#define	MS_4bit_Support		(PPBUF_BASE2 + 0x1D3)
+#define MS_4bit_support		(PPBUF_BASE2 + 0x1D3)
 
-#define setPS_NG	1
-#define setPS_Error	0
+#define set_PS_NG	1
+#define set_PS_error	0
 
 #define	PARALLEL_8BIT_IF	0x40
 #define	PARALLEL_4BIT_IF	0x00
-- 
2.20.1


