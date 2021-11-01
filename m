X-GM-THRID: 7025609319157596160
X-Received: by 2002:a05:600c:1c1a:: with SMTP id j26mr6971012wms.28.1635777149924;
        Mon, 01 Nov 2021 07:32:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6b08:: with SMTP id v8ls1703222wrw.3.gmail; Mon, 01 Nov
 2021 07:32:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx+htw+oviMOaIdZerDeHNWbhOfj/d2DW2K/XiTDG2OzSfHM8dJg92S7Qv1pQDck8KgHors
X-Received: by 2002:adf:d1e6:: with SMTP id g6mr39274050wrd.33.1635777148681;
        Mon, 01 Nov 2021 07:32:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635777148; cv=none;
        d=google.com; s=arc-20160816;
        b=a56uQ1kTCJU/+5AzTVMG0miISAIMMs5pFaP+3opTV+FF2Iuuq4Q9n3B/e0TuvzCSt9
         I/+mBTYons69pRYhyh69nmhQVjcCBv8D+f1ijP1PRZVeor2FqtPRLYPG+YCOiqqb8ObU
         9BVmFW73t8RG9tqiRy9s9Ak+LaHZ8/NW8uiy5ob0WgC/tPWyDMKhsz/6SFUUk5iziMG/
         9PK0DKwLX3zmCiS65QhgqfLaYiBRP4iqCATNP9cM3NKbqAW2FPDVzUtno3rLoAdPjJfG
         1eE+mngSBeMyUjfvO9QjlSDri9hQcfveGIeHYxCsJFivdaRxS6v14+ffVDhJETi9p7Vz
         rDnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lnE5IjZuGwXG6XS2XQreum/NO857Wg9hdT9kIZgNu3Y=;
        b=XqjRZxQZu5E6ldVTBMGkal7LW202+ceTQkE8u1z935Qk3ayJA/LjGfvcx8gpdtFmbc
         UTDWMS/OeHdIItle6cVQ8b2qq7I/WI1A1H+nCK426ZLS8nkXXaqfp25lsifYgdnBS9Dt
         mBrJhPw+BAnkhKMEu2PbCLK20LoaqVBjEIFGsaWHeYqdJ5v/oAWiXSP5vyNVR3TJDM6b
         8RDQDt7MdmvBD7L1ezPrT1yrP0FZZXmbB7RKmelaCZkGCdDCJKhR8eIXAxlH1ylda0TG
         eKgW9sUgjXpO7zFcDa7FQPTp2Bj5tPSm7OW/3yzTsmuq9AZU3VRXidPau+Lzqs/T9r2B
         vPlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=VEo78Gzy;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id g2si8786wmc.4.2021.11.01.07.32.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Nov 2021 07:32:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=VEo78Gzy;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id o4-20020a1c7504000000b0032cab7473caso63057wmc.1
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Nov 2021 07:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lnE5IjZuGwXG6XS2XQreum/NO857Wg9hdT9kIZgNu3Y=;
        b=VEo78Gzyp2Np+8mDr3CsmDH++MVYntUnn4LV28IFTPKlzNiiZllZ+wDg9XHrqqAuJA
         /op9GHfE57btllrGf7tiBPiBU6XKmdyeqIhSWZAUP9f/FATZglqItBzp/ntKoqUmTQth
         84QLfPNb22YJMAqT798/kro6b87uXFPpZYfXs5P2YFvQgVjtIamK3tr3NpKBJNqWKUEt
         lP7xKa5WWwTFTJBEwYck00ueIXiZ138WBbN+GKZYU9ohHoMYv/GVzoQZZDe+ACy+WQyd
         dqgJXzIi9i6tL8HdYnilYjNpmuMSsWw0e6TM/9ogiZJmj+RqzuoWr7i3s1vTCOOUQ86d
         3KDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lnE5IjZuGwXG6XS2XQreum/NO857Wg9hdT9kIZgNu3Y=;
        b=Itg5Z8unj+XGM1iAH4Rs21mnI8ZtP2IsgdG4uTtbE2BherTDshlFROpnaojvjEELwh
         S6/qPtA1jgktz9VboouoFDCoO3IYW0HrMDLGY0bIi1nd1ajVnNCCsvU0HpmI5+fGw6Zw
         fGD5Oyt2oKLOt2ziOndWfeVYPX8WKeHXrTri6TZVTFtXcSAylPQnW43TQkP7tE7uXY9R
         R/GfUfsU15NFVojM48oT4NH+rHLqkHcyGzHAgChCvVfCtOAqDOXPep3g25Cf0tergyV2
         0LAvhWwJrfOJ8hO9XTAYTQrYknQciwokXek8BfhFsnan0uHMJHiqj4GCd3bhk+y2M+Mr
         llxQ==
X-Gm-Message-State: AOAM532yaVHxJvoFV+g+z0H94NEFs42q5mjuvwj7F7v/AolwbSyFgHCB
	T11l94EP0gZu2W2p4/E5AM3I35VYVUiMjA==
X-Received: by 2002:a1c:f405:: with SMTP id z5mr31420070wma.72.1635777148515;
        Mon, 01 Nov 2021 07:32:28 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id l8sm17157721wry.43.2021.11.01.07.32.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Nov 2021 07:32:28 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH v2 6/8] staging: vt6655: Update comment for `rf_write_wake_prog_syn`
Date: Mon,  1 Nov 2021 14:32:04 +0000
Message-Id: <bac06d44359d3634ad66b7ab46128366bb985426.1635773681.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635773679.git.karolinadrobnik@gmail.com>
References: <cover.1635773679.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change the function description to include the actual parameters.
Update the comment on the return type.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 34fa54f7a92d..1fe073c5fb6f 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -669,11 +669,11 @@ bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType,
  *
  * Parameters:
  *  In:
- *      iobase      - I/O base address
- *      channel     - channel number
- *      bySleepCnt  - SleepProgSyn count
+ *      priv        - Device Structure
+ *      rf_type     - RF type
+ *      channel     - Channel number
  *
- * Return Value: None.
+ * Return Value: true if succeeded; false if failed.
  *
  */
 bool rf_write_wake_prog_syn(struct vnt_private *priv, unsigned char rf_type,
-- 
2.30.2


