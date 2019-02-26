X-GM-THRID: 6662096183503093760
X-Received: by 2002:a24:108b:: with SMTP id 133mr895007ity.29.1551140142296;
        Mon, 25 Feb 2019 16:15:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:9784:: with SMTP id s4ls3229816jaj.2.gmail; Mon, 25 Feb
 2019 16:15:41 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbSBPFymgJpA6yYG+P5bMoOJpQE2tF5bdKn+lYawYOW9qs+InafF87xlDEgmBI5y1Mt8hgI
X-Received: by 2002:a02:89a1:: with SMTP id p30mr9278446jaj.1.1551140141499;
        Mon, 25 Feb 2019 16:15:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551140141; cv=none;
        d=google.com; s=arc-20160816;
        b=megNfDUbVBgh5B3Y87ATmJLhvHa5/osYJzgc9N8qtzCdtNrTLPE+UFdyDNLuk3f1Jm
         /hSBtjIQEGtbUFqbcKkxHWZc/Gc8cPmxIU55RV3RtrSA5rKjor9MTnoYTR7gmB1r3Mt6
         IvZa3Ac+ztX09Dj0d4s42M4ocfa+05g55sylChWJUj9DVtGfOLP9sXfc5msESgyr3bw7
         z04rWRqkroFdp731YepAZ7FGai1gq4r71Bgy8GFyglKO5cZ5IvNP96qTEy3dItYJzeCZ
         xul2f5ucld2J8t56BP8D27fWiBoppCeNY7SFpIHrK0bUIP9S7t5X38kiGNKmu5H7Wf26
         7O/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=WyZ3TiRdhhy/r9GrkD4a3hWPzuQDUfUDzrc+4B+RFYI=;
        b=NEXjBgkAiWy6/qkxxo10kkNO686PbK/xBzVoaRtcRaP0Xhaklz9NCuwIEjLaDjrqBq
         /8JuAQRUOfNDkqGPBrfciL4Q7aEh8M+J2lEh8swA5MTBAvYYpe+lD4mP3F0UcyT1P1l5
         ACgGzhU+GHBe4S6TEM4XTOj12b1aXDwJQNJIrDZutkB250bkn+EIK75hjGHtcYUDaHl9
         M8m7g7AdHWjqgvXz5rhMNcFkc+OZSKIFXvT4n71X0egqsQrTlhu2ERgQ5M8/bMfaCk0G
         0uUoB8HCJZcYjxicYC9SrA70VvCEBsE/GVoZwHjEw55/PI6tFSEX7c7y6kuNHjfNwRxV
         uq5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iZlDnOd6;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id d127si593287iof.1.2019.02.25.16.15.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:15:41 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iZlDnOd6;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id r14so5264645pls.12
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 16:15:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WyZ3TiRdhhy/r9GrkD4a3hWPzuQDUfUDzrc+4B+RFYI=;
        b=iZlDnOd6f/4U2Ducp4KNUMgtMtvRNDv1iHIwqS7Px2MvhcwuogaKmwwqaOtZWSZTwQ
         jYBCJbvmdciyEnDh28KNy3nCF5pqDLdFpbOln71WYPY+kbFVWC1A4xUXgRG0LNk6Sal8
         rGAuNWV9wa5OYUvkpM19SaBBb3kIAm7wL8g9eIX2Vh4W9P9opsYgCe8Pi+8nA0EdRM3+
         S4GyQU62DOeQDvfOi78u7JddIXBiIakRmojxZ/TkH+2VK9TzRaw7DLW0s+e6JlQ4GlZv
         rhm6hkDZKLCQ5s0JPl55rty8QwNpVJhQzn137CzuGvaBfwzOB41fwr98gah0levbMFVW
         qLqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WyZ3TiRdhhy/r9GrkD4a3hWPzuQDUfUDzrc+4B+RFYI=;
        b=fIstwIR9K9ZSPdiuJoESTLqKuThNVNDVw2eOEtwjqJdrmdBWJWmm1HS7LqTXgI8vyK
         ZpIszpigwDzz6lUDO2RZPjQrUnBF3utnnBOnsKT7nZ29Fc0MhFshCQCLautiCttQr2LS
         645YZjYHSS1+IbcxRSP0bmP+RMxmPGjdCAiSVnsUjEbK8hWLEB2UfZdqUk4fEO4xiN0h
         90Qd7to7+1dPKF5P8vMHjE+h33NqYZXN1SdxIHdiVz7BnOXrHL15ufbOCezBoBvjy/Dn
         vw1yEhue0BjBhpg0C8laTwYTmAEBk9vF+FkxLMgTSQFNwVMBz2/UffuJlQejsfMiPDoY
         j7LQ==
X-Gm-Message-State: AHQUAua0jZlsi47DD4whz5+rSfj4o+GA8JagCXXEKRqREsxRZABuDY6k
	eGUNdc5NCjemVfXLdtdVmMVc9gNJ7Vk=
X-Received: by 2002:a17:902:6508:: with SMTP id b8mr23571711plk.17.1551140140357;
        Mon, 25 Feb 2019 16:15:40 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id e63sm30723858pfc.47.2019.02.25.16.15.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:15:39 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4] Staging: ks7010: Match alignments with open parenthesis
Date: Tue, 26 Feb 2019 05:45:23 +0530
Message-Id: <20190226001523.14838-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Adjust parameters of "netdev_dbg" to match alignment with
open parenthesis.
Issue found using checkpatch.pl

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

v2: commit log modified to be imperative
v3: commit log modified
v4: commit log and subject line corrected

 drivers/staging/ks7010/ks_hostif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index d938b0997a53..e48fc36b6ebd 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -730,7 +730,7 @@ void hostif_scan_indication(struct ks_wlan_private *priv)
 	priv->scan_ind_count++;
 	if (priv->scan_ind_count < LOCAL_APLIST_MAX + 1) {
 		netdev_dbg(priv->net_dev, " scan_ind_count=%d :: aplist.size=%d\n",
-			priv->scan_ind_count, priv->aplist.size);
+			   priv->scan_ind_count, priv->aplist.size);
 		get_ap_information(priv, (struct ap_info *)(priv->rxp),
 				   &priv->aplist.ap[priv->scan_ind_count - 1]);
 		priv->aplist.size = priv->scan_ind_count;
-- 
2.17.1


