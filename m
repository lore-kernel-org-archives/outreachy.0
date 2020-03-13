X-GM-THRID: 6803797198848917504
X-Received: by 2002:a0c:e450:: with SMTP id d16mr14761914qvm.195.1584136493106;
        Fri, 13 Mar 2020 14:54:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6214:126:: with SMTP id w6ls2573239qvs.10.gmail; Fri, 13
 Mar 2020 14:54:51 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvKh9iE9Wv/ZFL9w4OFI9qvoq4uvqnJ+trX92nSNG9kzFWuz48ZWRRc7ZbvwMeRVVj3hxDZ
X-Received: by 2002:ad4:5421:: with SMTP id g1mr14240553qvt.57.1584136491736;
        Fri, 13 Mar 2020 14:54:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584136491; cv=none;
        d=google.com; s=arc-20160816;
        b=BR8YJcNPrhgWmo9enmQMvByqFcbckxpetsZZ3nIkmkUzqhBEk/0OT+d4kSPMPeo5uf
         9YFgt0o898Zcgwm0fGv8hdz7xgTw7lI51uxnp9LEHnyDBkR4OrY3A/R/pFFv4lWUXvg5
         TNeHJp/J1ok+G4brT5+Utzk33Ocq2XzBc0SJb/strt11hAW4oFwutIOKva5kaPRzQWPE
         vu4PLIji9bTaXahKbV1pro8U233e5S60QeTGmKYpm0k/CkRwbcj23/36fP32tdFEveFd
         lEQJDgJkgoD4SAxainrWo/fhnVfiaMVt+XCdTgvxBm1z0khK2cs3MlKP75BMIkoBangc
         faDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=leI21Xf/ovePqytCKIMCpkHwVahQ+LUPcbEEFxIac2g=;
        b=OWPDK0PDOUVNftZjOFbVOkSDl+bDZX5Oay0wHF0Z8oSmBOcTb3Eg8OeLWNInQ2zwzZ
         s9c79UtgAhP1cmPyjQXOCNJhHHGt6vy3lnp04t2CkFDG4/4IsedQ314nu5QWEV7s0Gt+
         4ApV2bx02u3YsYXPBxvL+tw9Rec0LBUvP1eNsdD1eJ/4U1wFvVsUeoVBfZIFldutwlGt
         8Fv3N2VBECJlDZbDSTZPeLPha6+Kr/uVDo3SQkOS0gMO7tnAGusCdiI/ru4eZ1FWzqco
         1xxwQETdL0oLmHKU2oiElDpyssahTmXp9o58jX464ayKu73GdL/KZad7CVwtU7CynmWa
         B5GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=r9p8ltV2;
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 42si594331qtf.2.2020.03.13.14.54.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 14:54:50 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=r9p8ltV2;
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pg1-x542.google.com with SMTP id m5so5770037pgg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 14:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=leI21Xf/ovePqytCKIMCpkHwVahQ+LUPcbEEFxIac2g=;
        b=r9p8ltV2danW+BKl9j4UBAUE4WOguxVfbFK1SmFhTYYZz79wkCRR+SXzia4eDKTFw2
         r1NQpmt34vDQMI7u8oGGVEJyywQoY9J1VxW8RCVgV6RekLfvwpEZo1cPeky4DgOklwkZ
         /MWnoHsCdKKf/+uGIgbW1w/PwVQAZRjXxqDL8Ms2j3oeGB+7FemLBx/KAwj5Td+hZi9/
         4+SbzdWElJwvDEDWFbsshu+7Z4l8TjboGRhwp5g4pXby67YP0E8EtyfQ4PRSgoeeFqql
         NUJmdN54FuvX+VeDzozSc+W+saSMVvC0j0ic+68eoDoMlNr3I5tHY0fzwTMXoNqo+ndF
         z+CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=leI21Xf/ovePqytCKIMCpkHwVahQ+LUPcbEEFxIac2g=;
        b=FehlDFIJqHH8aysq3ytHMgiZJIHNNBXjBXxoSa81PJ4xlh+a9FIDqVtOusmrDBRTfN
         RyYQ7nFwDMav0Ve7p8C8/GeIAZqwLI2mavpm71KOafS5TNjk8dru4mxojuRk2EKcnL1/
         3pJMW6iDnoshf87pRH9ffU/sPYvSdq6S88vO2qQL+PykKUwUSbwAoIosg2P83v3vp5iM
         v0AS5pF8rLyikfNeuM1AAwgkT2jgI0/KOzi9gUQB9apIGuZhnjABtmI5/EmwmKcYEjXX
         +5bUGt4cSbyDhachPA12cI38+RNcU3Pv8pG3YCXNM+rVA+j9IIMP0T1lVrRpo34AMYNT
         0ZAg==
X-Gm-Message-State: ANhLgQ2rrJ5xCY2xHqJ+N3a4I+y/up8A9Kn7qRx7+N4Ymii9kZ8hB8Gs
	C3dZ7Xdd8AMCB4tpiW83+u3urA==
X-Received: by 2002:a62:686:: with SMTP id 128mr15376900pfg.152.1584136489324;
        Fri, 13 Mar 2020 14:54:49 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.113.213.153])
        by smtp.gmail.com with ESMTPSA id 3sm3277613pfe.161.2020.03.13.14.54.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 14:54:48 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH v2 3/4] staging: media: imx: remove parentheses
Date: Sat, 14 Mar 2020 03:24:05 +0530
Message-Id: <20200313215406.2485-4-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313215406.2485-1-kgupta@es.iitr.ac.in>
References: <20200313215406.2485-1-kgupta@es.iitr.ac.in>

Remove unnecessary parentheses around a binary OR in file
imx7-mipi-csis.c. Check reported by coccinelle.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 383abecb3bec..fff676a54990 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -404,7 +404,7 @@ static void mipi_csis_set_hsync_settle(struct csi_state *state, int hs_settle)
 {
 	u32 val = mipi_csis_read(state, MIPI_CSIS_DPHYCTRL);
 
-	val = ((val & ~MIPI_CSIS_DPHYCTRL_HSS_MASK) | (hs_settle << 24));
+	val = (val & ~MIPI_CSIS_DPHYCTRL_HSS_MASK) | (hs_settle << 24);
 
 	mipi_csis_write(state, MIPI_CSIS_DPHYCTRL, val);
 }
-- 
2.17.1


