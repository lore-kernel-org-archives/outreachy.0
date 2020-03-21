X-GM-THRID: 6806226770839207936
X-Received: by 2002:aca:ab4b:: with SMTP id u72mr12329464oie.97.1584831506149;
        Sat, 21 Mar 2020 15:58:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:51c6:: with SMTP id d6ls4376646oth.4.gmail; Sat, 21 Mar
 2020 15:58:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt4XlfzfcapjN48k0VwtZPNcCehLm062BFivYb2qUL3sWaZHisU65I2sMdZEQFO1Mv0kh5n
X-Received: by 2002:a05:6830:1285:: with SMTP id z5mr12615951otp.241.1584831504894;
        Sat, 21 Mar 2020 15:58:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584831504; cv=none;
        d=google.com; s=arc-20160816;
        b=YP69o9jZEuFCcemW3JFv22j9AfDmy1UQHWrBUzv7psuH6OPjOjuXh7HkXOtNjIXr3g
         O3fn9isQ87QEZe57hsr1oaJ1Lta4Sgszo+I/HZU40zBMujqL4XC93H1VmVMF43jUHjJi
         AyrC04+2yKcVUtb4D8+djyxWMId7MLX2WeAQy93O5jtw611X8NAiP6e5QfFobGCAXYcA
         4R+rkmnaBtDYXMx3HxshBYpdHBQDY9inyLc3Fk4GAgTjM38Kb7kfTBGD2/qxZ1FkudhP
         /u3SG8DaUjBH+CeES9fNNIQccpG6Rn5dPIGMGHVUaSlp+CpQnrSQjjDwPKI06fW2G5Wk
         Gy5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=QIBsIZv1xz1Qj94IsZwEVSitcD39SyrUvfWDhG99Z14=;
        b=MWmlMFRqMJMkeVZmn+ukJk2PJ1TLROvdxi1I1K0dAzy3O70bdm01/ZBrK91ZrdJYdw
         Rf/jewyDgBviK1DfiAIt+d0AO2TqqahyQsy8HnFtV1WUifc0/JwaScMDgbtQtALbFpzS
         3yVHclJhTW8KTzpW4UCAwkV8zqv5VYefM7myBvwMEplwVZXYW+dhpno2o+IAOFDacqDo
         FN6IXoGIpL9Aw+Rd2CmrMuRWJA5TBNR9ouK0febaJpcMnyKWeYlFqeSdWFaCmP1W0n3V
         SlGw5Vim3EnsdPhFGzlpstmtipKRkjx+9yn6FytWrliMxmyu57F88HycsMywBaYBCrTg
         D0zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fizaaZZf;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id t81si550373oie.5.2020.03.21.15.58.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 15:58:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fizaaZZf;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id 9so10725873oiq.12
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 15:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QIBsIZv1xz1Qj94IsZwEVSitcD39SyrUvfWDhG99Z14=;
        b=fizaaZZfOEXwT4ozhDIQTe92GLptCx4weflEMvtFX3LbVADNs96550CycfLi1EoI4Z
         fdBBjtJ7F6p8HAlirlPXZq6GKlBDRAaAvlUAV4IuTnfqr7J9aefEpoom/1QTktbeB+bg
         CIMNZAsiRhA7FJoD91x++1D99KipAFrWcM231QZvAAgBkWREtPX/qyICCdOaMOGlUZmo
         DQBaGVrvIvhNuH4riq+AZvjbi9mAkJV9gg7J4YBbtK4bbxx6kQhPxlpipx5nkulaycD7
         G9hHDlAqa5EgkA0SBgv9QV6yVycH5RmwDxtxQQKoArii5ppnK8hGMwPr/Yft5juGhR+i
         QQXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QIBsIZv1xz1Qj94IsZwEVSitcD39SyrUvfWDhG99Z14=;
        b=YXBix2hqjaaxaP02HTmdOqXXvpj3nfEUv+YUi5beZZWDnMtxVP+oOsmS0VGCRFLLk9
         cD4zuMq/3+2wpvO1bZht+jazUiEOmCbPBrMiMhm322MfBUaWn6y3jXK9+r6jyjDRf37i
         yBlE0u2SuFb4gA1s8xqm0/kut+0iqLLSdgoRv70XIxKeN4OaWJItD5zXLjvGzCXmEX9p
         jWhAINB5rHcgCzj/BPaTMs1QEiK4BhanaHh+7ai9qh9J6XcvAD3bsqh2gvpTMVrBxGHz
         bdHjWjgvFnb8zoJUp0lEbjPjdPIuXl4fUonswibzTEiovwYaX0gM62Mhs+RZMbr2/H/1
         aogA==
X-Gm-Message-State: ANhLgQ3El+bsE6D2NpoPXHqWu2jOZSifRR4rgmWW93nsmf9YwAk4xzlw
	C24cF7JQPdUheVyALjKIht43BsqoP4N+Cg==
X-Received: by 2002:aca:d44d:: with SMTP id l74mr12226120oig.83.1584831504537;
        Sat, 21 Mar 2020 15:58:24 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id m21sm3434345otf.16.2020.03.21.15.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 15:58:24 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Tim Collier <osdevtc@gmail.com>,
	Nikola Jelic <nikola.jelic83@gmail.com>,
	Moritz Muehlenhoff <jmm@debian.org>,
	Stefano Brivio <sbrivio@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@inria.fr>
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH v3] staging: wlan-ng: Fix third argument going over 80 characters
Date: Sat, 21 Mar 2020 15:58:08 -0700
Message-Id: <20200321225808.2494564-1-jbwyatt4@gmail.com>
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
v3: Resubmitting after style comments from Greg Kroah-Hartman <gregkh@linuxfoundation.org>

v2: Resubmitting after git rebase and comments from Julia Lawall <julia.lawall@inria.fr>

 drivers/staging/wlan-ng/hfa384x_usb.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index f8485601aead..e38acb58cd5e 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -3254,13 +3254,16 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
 	struct p80211_rxmeta *rxmeta;
 	u16 data_len;
 	u16 fc;
+	u16 status;
 
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
 
@@ -3319,7 +3322,7 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
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


