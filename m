X-GM-THRID: 6806226770839207936
X-Received: by 2002:a92:8f53:: with SMTP id j80mr11572908ild.171.1584754757091;
        Fri, 20 Mar 2020 18:39:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:9cc6:: with SMTP id x67ls1980144ill.1.gmail; Fri, 20 Mar
 2020 18:39:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsIrcTEdM2R2EAfCAimnG5aT+h3zrl53w8/V5CH7/KFaumHsmXsRzBsnRivWXnvS6VUNGpR
X-Received: by 2002:a05:6e02:1084:: with SMTP id r4mr10908684ilj.32.1584754755948;
        Fri, 20 Mar 2020 18:39:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584754755; cv=none;
        d=google.com; s=arc-20160816;
        b=OvRieTg1E2DDWdfdfPT6JhUKiZcEj7vrplvYc3AbGkQmyQ+CPE+EaJzQ6EpVyXP8c7
         l7tA6WWg+w0Gh7fM5pPHJLPrld4ZxDdWT2Ry1AVaU0+T/MDw4W6XJslXEgrsJi1TlJQ6
         CrC1GPxOwIq3zfoeaygCZE9wBE9BtlJ/mNfKM3+qd3AMA5FthFn5zT+KHyANdCNSYFjw
         Sobu2iA0p96UwTED7n9QogEpN5qrftcbGOXgAZA0ZkjHEwnnVIwhXz8J9+kmyKbvrgDe
         SeYck1DDbJKXvvsdQNLMnPrj9QUPRWwBGYT4uR+6/t//9inbH/VorIFPB4TsxT8zE+bS
         RB5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=XVyiC71qb68fGPUmbqJ1JpUXXDa3XJ+GisEi1Q3TZXA=;
        b=ddCZk2pLgaDh2VhQINSD+5/7frXySjg+Lqruk2r2ndmlqz/ZHVrTGryCf3GUD76Tdp
         efzoK+pXfjg3JVIMs182hd23EYbZqHUBlSmy9xa+fO/7l2/9YShNUozNIayR3um/82a0
         hf1d/+BVZyFGv1xhXcl/6TwPo/1STt1B4f0JyCzZcY8uFEayMKdEr0wRfh0zflIevpjl
         HXNJrUW4CLW3W8ceQbLXCP4VAp2BlnJElM7/IHvkydiBNbiRIquAU9ERp9DnwBSZ/yQg
         1Yl75cSaDwjVSdFLIXBz4HQQuR8JY/icayt7EnNkb2Hj/nCgdP2dWdbp/9TjRn0rHJ20
         pXDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KbRqyE+G;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id v13si446660ilg.4.2020.03.20.18.39.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 18:39:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KbRqyE+G;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id j16so7967267otl.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2020 18:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XVyiC71qb68fGPUmbqJ1JpUXXDa3XJ+GisEi1Q3TZXA=;
        b=KbRqyE+GtP16lcICeEWwzuG9LliByPlGZu8zVM0GRwq22MkWbBG3WFJHQYO57jfEvB
         wpqmZrjEcYU4T07HChrQiAjHTxVv1XuruWzmwqWXkd8/n3d4tsYECEl9JpQWU4lq07xk
         SEUMhu+UjKXo1nqsvr+rZ/LBhfthUvhH8r/DeqO2YTjPnA+a9F6zUc8j5eTv4RDBCouU
         Omp5Uk+Rer0d7x3FEB/qkVCuKIyZPsSP+EDMQ8C3k4fLU+nV5O2ahOf507SX2BdVX5Lv
         bGrsyPV0Ww3hBhXb+6VbPFtbIXKTLncJkAx6x+ssbD7oK0MVX7u1ChDj0Aij4LkjT6LC
         eiVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XVyiC71qb68fGPUmbqJ1JpUXXDa3XJ+GisEi1Q3TZXA=;
        b=dYccvhDwVvAUaonEnjMMCd7evc7AEgZVDZwjEbNn5TrZm63BvFfdpO+XRp92arEB/4
         Gdi1ZldWDiQjB9wENV4uBPDqBFFZz+sqGHr5z7Uz8Ighm+7fHK68j58Vb7puyag2W9QI
         z6OuUCemAbIPCtryKAxPRPZW+8loT2yB2GS3V/WaRd3QmmFX5uDzbZO8t0x+t/H+dq52
         GDH3NYNsEkNmNcNnO65NZXTyNPNXOQmb7fmn7au+3e3IlxXZxVZzGB8acBw2eG4lHA34
         A/cZBizBg9GpKLrBqg/nXoXooZEzu4Z0zhAMi7qo1sPcQtb5/Iv9A8QzpzGJ/SbO3jJC
         zJTw==
X-Gm-Message-State: ANhLgQ0GvGO4h12C9vJVFwIFOX//3t09X9H1ch4khX5kllOqUL23jvIj
	OwompZSbrHUWxhQYSVzXIzpT8gkkhH30mA==
X-Received: by 2002:a9d:30c7:: with SMTP id r7mr9146296otg.289.1584754755312;
        Fri, 20 Mar 2020 18:39:15 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id h15sm2584036oib.41.2020.03.20.18.39.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2020 18:39:14 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Tim Collier <osdevtc@gmail.com>,
	Nikola Jelic <nikola.jelic83@gmail.com>,
	Moritz Muehlenhoff <jmm@debian.org>,
	Stefano Brivio <sbrivio@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@inria.fr>
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH v2] staging: wlan-ng: Fix third argument going over 80 characters
Date: Fri, 20 Mar 2020 18:39:05 -0700
Message-Id: <20200321013905.2422334-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Create a new 'status' variable to store the value of a long argument
that goes over 80 characters. The status variable is also used for
an if check. Replacing that long statement in both places makes the
code much easier to read.

Note: the status variable is assigned after a needed byte order
conversion for usbin->rxfrm.desc.status, which uses a reference.

Issue reported by checkpatch.

Suggested-by: Stefano Brivio <sbrivio@redhat.com>
Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
v2: Resubmitting after git rebase and comments from Julia Lawall 
<julia.lawall@inria.fr>

 drivers/staging/wlan-ng/hfa384x_usb.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index f8485601aead..9016e6b32efc 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -3252,15 +3252,16 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
 	struct hfa384x *hw = wlandev->priv;
 	int hdrlen;
 	struct p80211_rxmeta *rxmeta;
-	u16 data_len;
-	u16 fc;
+	u16 data_len, fc, status;
 
 	/* Byte order convert once up front. */
 	le16_to_cpus(&usbin->rxfrm.desc.status);
 	le32_to_cpus(&usbin->rxfrm.desc.time);
 
 	/* Now handle frame based on port# */
-	switch (HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status)) {
+	status = HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status);
+
+	switch (status) {
 	case 0:
 		fc = le16_to_cpu(usbin->rxfrm.desc.frame_control);
 
@@ -3319,7 +3320,7 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
 	default:
 		netdev_warn(hw->wlandev->netdev,
 			    "Received frame on unsupported port=%d\n",
-			    HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status));
+			    status);
 		break;
 	}
 }
-- 
2.25.1


