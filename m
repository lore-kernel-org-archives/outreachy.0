X-GM-THRID: 7030748849446584320
X-Received: by 2002:a17:906:b84f:: with SMTP id ga15mr46230015ejb.4.1636973790382;
        Mon, 15 Nov 2021 02:56:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:3587:: with SMTP id y7ls248404edc.2.gmail; Mon, 15
 Nov 2021 02:56:29 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwBSCcOJEJSbokHyYZ7wIsg7+QPFk7UhGgJbSGRGHZZxCCDzDsOnKdjkxGJwgw9V/gJSQZK
X-Received: by 2002:a05:6402:5190:: with SMTP id q16mr54974817edd.12.1636973789008;
        Mon, 15 Nov 2021 02:56:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636973789; cv=none;
        d=google.com; s=arc-20160816;
        b=IvDurdF7u7MKoy749xo6vCTvAegfVyF7OPePrHmTqJBlx4+WeLd0jvtZLyVdjzbINj
         AAO7A3KGiUHOVEc1nFjoLE36YHYLKLaL2Utz8ZHWSRPsO9QvIhZ7Bwc38OKCQ4zBheJf
         LcWnGUOwEz/GA4PKy6z0Iej3nqSQnhcKMuwnXUyOfeuc8rYG9gzH47w9nSzpeCmN9omB
         O1M7P7uUPRslISfyOPFlDdDFz353XsAdvfR8ux87jLOH28OpHZpwufpSXHw9sUy7MftL
         /fpCGk45il3GGEmvDOrfnA8ZLAqxL9U7dv0Cvn399qxyXDDIb/4I2WH4Ozw9YZSmclAB
         s4Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=u31AxQ7wkDGai2idA8j+UwnpueHVlzsR7IvVcZ1VJbY=;
        b=Oy7cLkskX9JbFrfv2pKL5JtdLac1zcU7fN8ch/iJetGmreISMPXlEtiADUyIWtMBtF
         cpMe0Aq1JYJW7I6qSfFXj1QXioQhJ2Kjp/QUPgpV4pkRyGQHSHiKi+Yigm5yxGwLxsQD
         IcLNR8yeNa9qJnuUXZEiCchZaJ5yG+DqJq/Mdb/nO0Ja6oy7lqhjT+sNUFbwPkdHsLsr
         vRj2lBgjhLGCcqUz0TXMiIF5j14gv+XQymG5rAlQRmxmdBrR27P682xDv+eSIDh6tePu
         yYJz2HlwXdnNwrHmYNS3wkrF7HzOCXogVtgJWR2S2bupItQJG5h9av0PQowwRue5jcBl
         AVwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=G+zD7xYh;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com. [2a00:1450:4864:20::330])
        by gmr-mx.google.com with ESMTPS id u19si1324045edo.5.2021.11.15.02.56.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 02:56:29 -0800 (PST)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) client-ip=2a00:1450:4864:20::330;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=G+zD7xYh;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x330.google.com with SMTP id 133so13551695wme.0
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Nov 2021 02:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=u31AxQ7wkDGai2idA8j+UwnpueHVlzsR7IvVcZ1VJbY=;
        b=G+zD7xYhhVWiZ57K/UVe8JKlegvdbnfMUcZD5ALSHHbnLRWd6J0QQfjINPnN4uNYB0
         fHJhPPUpclLAZ7vlxtSqq783fkFQwIIiq0XTI2+g3CvX7+uhstwCvO+Ccfq8KuP4uRKh
         dNuGgW7PK3lJUf7ADjoCrnZJ56eMGoILPENOFZXcfuOS0Zc6wg53ljhyYxLQ/ZJQkpD1
         tQh9dXf5Qfv3o01Kfpbsr9ivV+n+rV+X7e5L5kv3iWGsnMfNuZHsD+3pV5le7YbIi/Ey
         H6HcqEreZ6jAeX7L4JidgAKeculk28zzsZfZyZyFR61YJlWVeQgQfqEhFAHeCHnNtw08
         OFSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=u31AxQ7wkDGai2idA8j+UwnpueHVlzsR7IvVcZ1VJbY=;
        b=l102C/9cPF8jWLXXLq0h55Ql3Zy/w0tkZ93rF2L8yNjq7UWcpSv3hO4iqbU49C3uQh
         y4x6OYHKarnBLWewokWST+dsbUd0CXu5w1b5Q5P1N/XCsz4Dhlnxz6LXu5QAEZaedgHP
         9ZKyd5hI3KAu0WFL8h19YS54EfgxzLrDNBOZvnFjyQlsE9v6Mwz4RwoaWNbkqVSN1oLs
         yTFkI2AXYeV+iF1kUtFHhtgIe1DXgpXqwhyfnS3QvWjyG+mfZW9a36NCJXtWxfOOcWVp
         Fsy0bpSjOo6MkLin09H+JQk8NpfxPLhQ548DAPJCnV37vKP/05Zo1uBqj5sUVPxKsGm7
         xghQ==
X-Gm-Message-State: AOAM53291GZJAJHsRBUJWVxt3Ecxvcd/HSoV013m7vKnvl5aoFEQXLEU
	Jh5+P9lBw17UsQ7HhuSmPKaEkINcNXk=
X-Received: by 2002:a7b:cb55:: with SMTP id v21mr41305881wmj.83.1636973788809;
        Mon, 15 Nov 2021 02:56:28 -0800 (PST)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id d1sm13516532wrz.92.2021.11.15.02.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 02:56:28 -0800 (PST)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH v3 5/8] staging: vt6655: Rename `RFvWriteWakeProgSyn` function
Date: Mon, 15 Nov 2021 10:55:46 +0000
Message-Id: <29899f738b4f381a2b3f01fd0748e9b96f835239.1636729147.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1636729147.git.karolinadrobnik@gmail.com>
References: <cover.1636729147.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To align with the kernel coding style, remove the type from
the function name and do not use CamelCase.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <RFvWriteWakeProgSyn>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/channel.c | 2 +-
 drivers/staging/vt6655/rf.c      | 4 ++--
 drivers/staging/vt6655/rf.h      | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/channel.c b/drivers/staging/vt6655/channel.c
index b550a1a0844e..e37c8e35a45b 100644
--- a/drivers/staging/vt6655/channel.c
+++ b/drivers/staging/vt6655/channel.c
@@ -189,7 +189,7 @@ bool set_channel(struct vnt_private *priv, struct ieee80211_channel *ch)
 
 	/* Init Synthesizer Table */
 	if (priv->bEnablePSMode)
-		RFvWriteWakeProgSyn(priv, priv->byRFType, ch->hw_value);
+		rf_write_wake_prog_syn(priv, priv->byRFType, ch->hw_value);
 
 	bb_software_reset(priv);
 
diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 5246ba211ffb..569b430dd9ae 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -676,8 +676,8 @@ bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType,
  * Return Value: None.
  *
  */
-bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
-			 u16 channel)
+bool rf_write_wake_prog_syn(struct vnt_private *priv, unsigned char rf_type,
+			    u16 channel)
 {
 	void __iomem *iobase = priv->port_offset;
 	int i;
diff --git a/drivers/staging/vt6655/rf.h b/drivers/staging/vt6655/rf.h
index 0939937d47a8..9fef81846a9f 100644
--- a/drivers/staging/vt6655/rf.h
+++ b/drivers/staging/vt6655/rf.h
@@ -60,7 +60,7 @@
 bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData);
 bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType, u16 byChannel);
 bool RFbInit(struct vnt_private *priv);
-bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type, u16 channel);
+bool rf_write_wake_prog_syn(struct vnt_private *priv, unsigned char rf_type, u16 channel);
 bool RFbSetPower(struct vnt_private *priv, unsigned int rate, u16 uCH);
 bool RFbRawSetPower(struct vnt_private *priv, unsigned char byPwr,
 		    unsigned int rate);
-- 
2.30.2


