X-GM-THRID: 6751257049994100736
X-Received: by 2002:aa7:980c:: with SMTP id e12mr18323610pfl.165.1571949342815;
        Thu, 24 Oct 2019 13:35:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:aa91:: with SMTP id d17ls2137544plr.2.gmail; Thu, 24
 Oct 2019 13:35:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw/ZEkv8qiH0fc3bDYb9zLCpiIiq5da0Bx29zWM1efMDsna7gqHGuyizOj7+MY2hwxgQrha
X-Received: by 2002:a17:90a:b902:: with SMTP id p2mr9527708pjr.62.1571949341547;
        Thu, 24 Oct 2019 13:35:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571949341; cv=none;
        d=google.com; s=arc-20160816;
        b=mCwNkSyNjmVB/mV0TvOM51NdJPRMtoiWyMUQ/5qP0I5c0Psuhr8wyFmKHwVKQ2pg9e
         QkS+d0meiVLpc9YeRibpLIvNyf+CPanHHf0w2M+q3HJFQcg6dlUfEXUk5vI8bEU/LtTs
         hBGic5fvHpjy4PROJ1DlaWIigkvTJLs2FDdjBJlch7bXjSzSYQswHkwIbqqdA1gltVkM
         grtEbQiy8aDSwgudQIqy99x2DIOPj5Qk/GhPInCWvcTPTYhVvLJPm/WYS8EJtS2hUh+L
         EdaNVI8FHuphPaM7b/6UDSjdcca1OKtI1tNl+R1a2ODf82n+u9Fs0S/3Yoe7HrMLKECb
         yz3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=K1wK9DSlnqh4rqAQK9a2cGU1zu6rZx39FiAaWiUAh/Q=;
        b=LdKcsXSdXk1ZNaxangYIbiabKijMPh/h2mG/ZXLjr3FYCWn2tulgbSDwRoj3wQv+LZ
         71/fYQBp0Ooh+pkIdXz/zJw+PV4GOxZo5RZGal3D03gd4rmY05yRTVJthFhLZNOU9ifI
         XkVR8quh3TAB96ODfB86Qn7Rdugm0tTLR4rW0FgTsb00cr998nk/aH+aHyEXadIaQD+q
         syk80bARXBHFb+d8SjkUEpTjDj4eYr5KTzc25sGivifRe93tM6XpCMHJyC8yE6HCm6Eo
         266EAGLV2Rcbi++LVeiWScPG+h58kSEJoYnHXR6AD9h5S5skiFRYTjI5XwZXoCFUm8qQ
         Af1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P6BUBIwZ;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x22si949789pgx.2.2019.10.24.13.35.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 13:35:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P6BUBIwZ;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id v4so13555pff.6
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 13:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=K1wK9DSlnqh4rqAQK9a2cGU1zu6rZx39FiAaWiUAh/Q=;
        b=P6BUBIwZsgXmv15DE2P/PkoJXRFyNgiKv/niQk9ZS2LcRR9hRw5bQClz6ctSr9lyB3
         DG6odympH4JNQm/UwutBeBeo3PbFji1yUix9te3VQn4EBl/loWfnYSCCb+AJB5/nKIYT
         GLKGPw4n2RFsKWRtUb2BzQgPcUniQfDoC7vnfBuVCFl/MDJK9c90aMZwTbtuBbsJDcr3
         7//UKvcpQGTlaa7Q80R7lJ3O3Ge5FQ3jWvcUsXtkvXXobfM4ICplAmBKlZfjLPhuxrt1
         TQQtZFtVbkxne4dZsshp1x4O6rok63Zocor/zi/PatL5IAZ6k8Rbg9JvZFpgpxwbwpuK
         T2ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=K1wK9DSlnqh4rqAQK9a2cGU1zu6rZx39FiAaWiUAh/Q=;
        b=pI1Op4CeH1aUospcNvkDeVF77KkWkXVnHp1Iem/SLeZqzaNgYTVKFUBbHHRCGI0aN5
         azZYJzcPOfHAcMSiP2JmIgPy0sZkNkBj2FTipt9iTY6FzhNRO4fNM7RDodoVE1cfiNJI
         04evuK2Qyc03oL44xtX/hdYm+kt5BgmpjoPYn3ZINenxTz134irk+/PgRxSJKl3kBQNf
         Kfno8GEfPc9MlRUXLxUqY9PHOH+mD2Mc+SwuZd6delp2BkyPp1c4p/1c+r9YCo93FWW+
         k8GNiaB4BqS+1EqUez0GGcXwpqK4QzyTAyWenBrZqk7iWk1WP65UVNHqYl7V1lsvp+Xg
         GnPg==
X-Gm-Message-State: APjAAAU0ebCRVhLQe3QFqGrn2Um6Zq81NFGY7op3aWTj/oXStHxKOTwp
	UwSOYtPoucNOxbIktQ/wTko=
X-Received: by 2002:a63:ee48:: with SMTP id n8mr19453700pgk.374.1571949341170;
        Thu, 24 Oct 2019 13:35:41 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id c14sm30885278pfm.179.2019.10.24.13.35.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 13:35:40 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 2/2] staging: kpc2000: kpc_i2c: Remove commented code
Date: Thu, 24 Oct 2019 13:35:20 -0700
Message-Id: <72c095d97ca3542232824ace3e07361a4a36543d.1571948876.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571948876.git.jamal.k.shareef@gmail.com>
References: <cover.1571948876.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1571948876.git.jamal.k.shareef@gmail.com>
References: <cover.1571948876.git.jamal.k.shareef@gmail.com>

Remove some commented out code.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index 69128fd7fd5e..d04fbc1fe7c2 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -145,7 +145,6 @@ static int i801_check_pre(struct i2c_device *priv)
 
 	status &= STATUS_FLAGS;
 	if (status) {
-		//dev_dbg(&priv->adapter.dev, "Clearing status flags (%02x)\n", status);
 		outb_p(status, SMBHSTSTS(priv));
 		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
 		if (status) {
@@ -528,7 +527,6 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr,
 	}
 
 	if (block) {
-		//ret = 0;
 		dev_dbg(&priv->adapter.dev, "  [acc] block: yes\n");
 		ret = i801_block_transaction(priv, data, read_write, size,
 					     hwpec);
@@ -684,7 +682,6 @@ static int pi2c_probe(struct platform_device *pldev)
 	/* Retry up to 3 times on lost arbitration */
 	priv->adapter.retries = 3;
 
-	//snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter at %04lx", priv->smba);
 	snprintf(priv->adapter.name, sizeof(priv->adapter.name),
 		 "Fake SMBus I801 adapter");
 
-- 
2.17.1


