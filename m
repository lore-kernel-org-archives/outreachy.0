X-GM-THRID: 6950585257777168384
X-Received: by 2002:a17:906:3509:: with SMTP id r9mr22817446eja.490.1618309239704;
        Tue, 13 Apr 2021 03:20:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:4c2:: with SMTP id n2ls3008372edw.2.gmail; Tue, 13
 Apr 2021 03:20:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzYHHy98pq4dH+e95WNKg9bf05Uvs0hDqsXhjXxPqfsYpFQniqFWUDXMemAtSgKOqvtOkJj
X-Received: by 2002:a50:ed17:: with SMTP id j23mr32640885eds.260.1618309238238;
        Tue, 13 Apr 2021 03:20:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618309238; cv=none;
        d=google.com; s=arc-20160816;
        b=k3wgLhkrqXPVff9/y/Ouh1bu7ut3iRnR5Ud++bh6/Dx77v3yRcV8GjN97jMHP/3UYO
         8Vj3qNhCiVlqP89fG0rZG2JT3DMilWKgstbfvJTwANzT3UdtXsNAopwqYf8Q/EScsWqi
         FxlSsgatV7Ex+GS+47z6g7Eeo+BUzxCuGxJcc0OBU4W/4MROrDFBYRqvCgnafmq3oQkl
         9I5xfcDowx1vjlq/5PIsmQT9gpJ6vX8pXVB3XIVCZwi0vJLxUA5cj127iEpRGQ0Ax82Q
         WrLiGD3LbnwvFGF/IVroAlWL5idpXVkATNEJqKWiLohVQ4azshq/qijVUTo9a1wi97zL
         QjLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=dvmfAjhAD75vFCCwV7Fr+IU7OY4E5qiwJqveL+UcwEs=;
        b=Xaepu3izRraowhF/Z17w8cn1tLbjmyQyJFrBRywHfmVbQZkhtD++W5z6nRs1tFo79Q
         TY8Kw05Nd2zOhzNSc0Fo3Bdq7OF6e8abXdvppzNe7b1XcKu7rNWVPlkO05xcUeFLgE9S
         sQimwRAT58Tf+YAmXGj1GGLuJyJUvt+1VmTqiHBJVQLwhTzPj5KxUmIPQAAneGgDqrzk
         mS1kz1CzzACoV5lOz8fr/ZXSht9UuWf0r+xVJV/8WF7T6GE93l+Lj4tnoctTdGGvLFHd
         0e7UXGTPyKQ45cC94pyeVCmhCDILNiXeiQDl3IpMkAmEf8Axa35fFSIBic47CFunmm5a
         EP8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uMlyqifq;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id c12si1083156eds.0.2021.04.13.03.20.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 03:20:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uMlyqifq;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62b.google.com with SMTP id e14so25006396ejz.11
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 03:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dvmfAjhAD75vFCCwV7Fr+IU7OY4E5qiwJqveL+UcwEs=;
        b=uMlyqifqVFl76a2qS3JaTbUAuKVxnmP7ZjDUGoO5A0rDRibyZhWKK67CzIe1nABH4k
         WdY7wMIRIJoJrGZ9Vw7QIYvlgEwJfba85e+uM1Ycqpf2ZOBN7d9iuCZ0QhpozpDeJnCb
         /Qk2a1GYoH9/53XjiYhCfWhVz4WammPeG120HKy4wdPcoRl5vChyp3RSMykGxmSpzG5V
         GD8RIvY6l61Wik3G2ZZ7C5Wcmd/CUjkwrKhr5KtjcvqHTfGYwPmSw0WFyJ53pvIMsh2g
         LSmFprisskPRKpQ2qbQAEYXDiI190annCbYAaW0MUGCu+KHuOCpbfMu/YKTGx7t/qecm
         IstA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dvmfAjhAD75vFCCwV7Fr+IU7OY4E5qiwJqveL+UcwEs=;
        b=hNin9/Z19K2bIoWINBhkfC5KfvI+Z+xtbl0XvkC6RXqc6mZGYqjAIAIeiIednRs4Nq
         y/fxdyfhCjxy5vyYYdf5Jr5e42ZkdngAZg9EZy3VnYtTZLoAAiVg0e6WWMR6boywbIDn
         NYUfeFvyQElV24j3BMDkGuY/R0Jk7zrUCa0Fj7k8gkGayTfUxDrqYW5X4+37Z5sCGdwB
         8PnkvYuaNk5YsdDu/6gmNyBWEqERNLnVHlHRpZVBfkplO/+FUPxQ01Jef/7T8Gw0fWCN
         uPTa/cMfEzBaPfo9sjZGfOt0wGDg8U0WWs6kJQg+sMBIjmuPywpAcCouXF2wkGzpXDcf
         +BhA==
X-Gm-Message-State: AOAM531tzF7zQOpK/utm7yl6UKhzc6HQCb5qOeWrMtyv89WuVsWAZQcB
	UELuUkgP9f996X9JQ3rMRe7az77X33cdrKbj
X-Received: by 2002:a17:906:524f:: with SMTP id y15mr31008850ejm.65.1618309237743;
        Tue, 13 Apr 2021 03:20:37 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id y6sm7496565ejw.83.2021.04.13.03.20.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 03:20:37 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy patch] [PATCH] staging: rtl8188eu: Move channel_table away from rtw_mlme_ext.h
Date: Tue, 13 Apr 2021 12:20:33 +0200
Message-Id: <20210413102033.24781-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Moved "static const struct channel_table[]" from include/rtw_mlme_ext.h
to core/rtw_ioctl_set.c because the latter is the only file that uses
that array of struct(s) in the whole driver. "make rtl8188eu/ W=1" output
several warnings about "'channel_table' defined but not used
[-Wunused-const-variable=]".

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ioctl_set.c   | 8 ++++++++
 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h | 8 --------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
index 1ef32ff900a9..17b999f45132 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
@@ -11,6 +11,14 @@
 #include <rtw_ioctl_set.h>
 #include <hal_intf.h>
 
+static const struct {
+        int channel_plan;
+        char *name;
+} channel_table[] = { { RT_CHANNEL_DOMAIN_FCC, "US" },
+        { RT_CHANNEL_DOMAIN_ETSI, "EU" },
+        { RT_CHANNEL_DOMAIN_MKK, "JP" },
+        { RT_CHANNEL_DOMAIN_CHINA, "CN"} };
+
 extern void indicate_wx_scan_complete_event(struct adapter *padapter);
 
 u8 rtw_do_join(struct adapter *padapter)
diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
index 77eb5e3ef172..03d55eb7dc16 100644
--- a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
@@ -171,14 +171,6 @@ struct rt_channel_plan_map {
 	unsigned char	Index2G;
 };
 
-static const struct {
-	int channel_plan;
-	char *name;
-} channel_table[] = { { RT_CHANNEL_DOMAIN_FCC, "US" },
-	{ RT_CHANNEL_DOMAIN_ETSI, "EU" },
-	{ RT_CHANNEL_DOMAIN_MKK, "JP" },
-	{ RT_CHANNEL_DOMAIN_CHINA, "CN"} };
-
 enum Associated_AP {
 	atherosAP	= 0,
 	broadcomAP	= 1,
-- 
2.31.1


