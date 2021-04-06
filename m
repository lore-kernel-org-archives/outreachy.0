X-GM-THRID: 6947963118205009920
X-Received: by 2002:a17:906:2e9a:: with SMTP id o26mr15981959eji.357.1617698726582;
        Tue, 06 Apr 2021 01:45:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:c653:: with SMTP id z19ls11168719edr.2.gmail; Tue, 06
 Apr 2021 01:45:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxREGvDmYb/XG6wtJWmfOO8Xi75hsKzBNrKylMdwjqLTSeH1AIShIkZwpwVF3e+1XbCh+xi
X-Received: by 2002:aa7:de11:: with SMTP id h17mr35616449edv.83.1617698725243;
        Tue, 06 Apr 2021 01:45:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617698725; cv=none;
        d=google.com; s=arc-20160816;
        b=jXZJ5EuC9NXyL6g/y7DWm6S44UA8MD3edPzu8j9f2ylcbXQ6Rt5qG1mo2bpkeSPh9g
         QzgcbY/DVTOdNCUMAqOjqTQGM85+dqScbIUhHVdnJVvAqAnglJp5UfNdrz4sPsHfOAjr
         VuNRdbIN4q7Bw3Dq/4OqrVDKL4+Ek4jA3WEGB8MPdlX1bgXxVw6xNIDE9mFpQ/ZCzmx/
         RyvfH3hCEomoz5fAKoI0lNktNnmcabh64mCKCcmp9iJGcID2Xin2mtNP0f3Qwibj8P/f
         dhb+R+b8tkk0lvCZeSPDoWujvXG3AdbcfvzZcWWXUMAD81A2kIGGiMCLRme/2J0q2oOO
         xZ7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=q8poru9A3hWLZTxGl7RMJTZmQhNBYI0YiTv60kbCOfc=;
        b=dM3eb+v8bf21nGNcB82aBkNuhrnX35bLJdti/SxwQet6MHWPEIxlRuQoeedL1Ph2T/
         WfAFq2vJ3ZPN4bBtm5E215+12WGLuZi27shjpGTAKQtw5phdZiKGljgjvnYfhm37gp1B
         sb9QZGrraG7FjXc1shoQmeJ97QZ3t+NMWT8Exv4cvfuH0ESqeyw6tR05oIjALjWy43GP
         6UtibDqeu1imXEDXmdjnuJqK/yYs2rPzfoUL5jPvCXg8HNfkzhldMKOeV2WGO5Rso9X5
         FoN8aKrUYUX40qhDJ224SqK1cNNSKumOoKqMIJSjQA4kSlxCX55+Xal5UK3p5RWnr+4X
         jjbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nrIoxXpe;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com. [2a00:1450:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id df6si667214edb.3.2021.04.06.01.45.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 01:45:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22c as permitted sender) client-ip=2a00:1450:4864:20::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nrIoxXpe;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x22c.google.com with SMTP id c6so14060815lji.8
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 01:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=q8poru9A3hWLZTxGl7RMJTZmQhNBYI0YiTv60kbCOfc=;
        b=nrIoxXpe40DGcIFOjnCJXz5ZUABv1ihdHsn0TMarsOE0SgMeIOC8dNrKFEWkFYRlUJ
         XJ22hBzYsvKEM65p9uUQlHaxcgFyjEpW7MHAcXOWgviwp/HXc4pzNDPpqk89SDq5LYYE
         0xWKq52vgIO4a+n8Z8yJd21AoW/7uquDJeCh+t8UuGfieW//WFrd1LvtaX8o22xKvP8s
         bDp3RFemUJqifYATDHGHXCsfs5On/PANMjWR81pJj/jF+S3eDlavy6B2iz+jPGeoNC76
         dJtNDLu72TKkl3A4NEL4U3XINjmmXfuPBEr97u4M8TEU5y/AMGR7FWpDTThWmc2EhvD0
         BalA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=q8poru9A3hWLZTxGl7RMJTZmQhNBYI0YiTv60kbCOfc=;
        b=igN/t797wD81ibtklQW4abOEvyUL6Sut5N21Xn4RDd9kCsA2tAbFqdvsbn/DYpyi/f
         Pj4xHRm3yXsCiYYbiGaeZ29CsVk4bmZyPfVJoYAgq5286IMPUK8hoeF9DZAGLJAwt69Y
         9BRX3rMDuWR8n1MPC3QW40gldEKF5wZMp9BNfWQVYUnizPIHsEjS3E4XVXh+oozsNjdf
         Pxr1TbELsWpMYxOyccPs3KcCrOIqieEvtXBUOSKeI2+g5FQRIlYhs0tWdzewERUtxjEu
         QXXNSeB4YZ3v5YAPtKS2UndxWYESY4dGA0QVwxVJWa7e7+cZZGMv59+HDaCHw7/CMRcw
         sICw==
X-Gm-Message-State: AOAM530/J6VjxqILpeKxKIcZY/233iGN5zp9aQ4p3Z0vydclH9z91IBR
	ZLzU44S/10bY5aV/ulHnVBpIEaMBumXoKA==
X-Received: by 2002:a2e:302:: with SMTP id 2mr19319901ljd.159.1617698724508;
        Tue, 06 Apr 2021 01:45:24 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id d8sm2130411ljc.129.2021.04.06.01.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 01:45:24 -0700 (PDT)
Date: Tue, 6 Apr 2021 14:45:23 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: rtl8712: add spaces around operators
Message-ID: <1fa63e851a6fa403798b95b64d9147c9b3b02c93.1617697237.git.zhansayabagdaulet@gmail.com>
References: <cover.1617697237.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617697237.git.zhansayabagdaulet@gmail.com>

Add spaces around operators to adhere to Linux kernel coding style.
Reported by checkpatch.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c |  4 ++--
 drivers/staging/rtl8712/rtl871x_security.h    |  4 ++--
 drivers/staging/rtl8712/rtl871x_xmit.h        | 10 +++++-----
 drivers/staging/rtl8712/wifi.h                |  2 +-
 4 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 60dd798a6e51..6b3c5914efb4 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -144,7 +144,7 @@ static noinline_for_stack char *translate_scan_wpa(struct iw_request_info *info,
 		for (i = 0; i < wpa_len; i++) {
 			n += scnprintf(buf + n, MAX_WPA_IE_LEN - n,
 						"%02x", wpa_ie[i]);
-			if (n == MAX_WPA_IE_LEN-1)
+			if (n == MAX_WPA_IE_LEN - 1)
 				break;
 		}
 		memset(iwe, 0, sizeof(*iwe));
@@ -164,7 +164,7 @@ static noinline_for_stack char *translate_scan_wpa(struct iw_request_info *info,
 		for (i = 0; i < rsn_len; i++) {
 			n += scnprintf(buf + n, MAX_WPA_IE_LEN - n,
 						"%02x", rsn_ie[i]);
-			if (n == MAX_WPA_IE_LEN-1)
+			if (n == MAX_WPA_IE_LEN - 1)
 				break;
 		}
 		memset(iwe, 0, sizeof(*iwe));
diff --git a/drivers/staging/rtl8712/rtl871x_security.h b/drivers/staging/rtl8712/rtl871x_security.h
index b2dda16cbd0a..8461b7f05359 100644
--- a/drivers/staging/rtl8712/rtl871x_security.h
+++ b/drivers/staging/rtl8712/rtl871x_security.h
@@ -101,7 +101,7 @@ struct security_priv {
 	union pn48 Grprxpn;		/* PN48 used for Grp Key recv. */
 	u8 wps_hw_pbc_pressed;/*for hw pbc pressed*/
 	u8 wps_phase;/*for wps*/
-	u8 wps_ie[MAX_WPA_IE_LEN<<2];
+	u8 wps_ie[MAX_WPA_IE_LEN << 2];
 	int wps_ie_len;
 	u8	binstallGrpkey;
 	u8	busetkipkey;
@@ -185,7 +185,7 @@ do {\
 	txpn._byte_.TSC5 = iv[7];\
 } while (0)
 
-#define ROL32(A, n) (((A) << (n)) | (((A)>>(32-(n)))  & ((1UL << (n)) - 1)))
+#define ROL32(A, n) (((A) << (n)) | (((A) >> (32 - (n)))  & ((1UL << (n)) - 1)))
 #define ROR32(A, n) ROL32((A), 32 - (n))
 
 struct mic_data {
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
index cc58c7216935..1fb395c9d068 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.h
+++ b/drivers/staging/rtl8712/rtl871x_xmit.h
@@ -42,7 +42,7 @@ do { \
 	pattrib_iv[1] = txpn._byte_.TSC1;\
 	pattrib_iv[2] = txpn._byte_.TSC2;\
 	pattrib_iv[3] = ((keyidx & 0x3) << 6);\
-	txpn.val = (txpn.val == 0xffffff) ? 0 : (txpn.val+1);\
+	txpn.val = (txpn.val == 0xffffff) ? 0 : (txpn.val + 1);\
 } while (0)
 
 /* Fixed the Big Endian bug when doing the Tx.
@@ -53,13 +53,13 @@ do { \
 	pattrib_iv[0] = txpn._byte_.TSC1;\
 	pattrib_iv[1] = (txpn._byte_.TSC1 | 0x20) & 0x7f;\
 	pattrib_iv[2] = txpn._byte_.TSC0;\
-	pattrib_iv[3] = BIT(5) | ((keyidx & 0x3)<<6);\
+	pattrib_iv[3] = BIT(5) | ((keyidx & 0x3) << 6);\
 	pattrib_iv[4] = txpn._byte_.TSC2;\
 	pattrib_iv[5] = txpn._byte_.TSC3;\
 	pattrib_iv[6] = txpn._byte_.TSC4;\
 	pattrib_iv[7] = txpn._byte_.TSC5;\
 	txpn.val = txpn.val == 0xffffffffffffULL ? 0 : \
-	(txpn.val+1);\
+	(txpn.val + 1);\
 } while (0)
 
 #define AES_IV(pattrib_iv, txpn, keyidx)\
@@ -67,13 +67,13 @@ do { \
 	pattrib_iv[0] = txpn._byte_.TSC0;\
 	pattrib_iv[1] = txpn._byte_.TSC1;\
 	pattrib_iv[2] = 0;\
-	pattrib_iv[3] = BIT(5) | ((keyidx & 0x3)<<6);\
+	pattrib_iv[3] = BIT(5) | ((keyidx & 0x3) << 6);\
 	pattrib_iv[4] = txpn._byte_.TSC2;\
 	pattrib_iv[5] = txpn._byte_.TSC3;\
 	pattrib_iv[6] = txpn._byte_.TSC4;\
 	pattrib_iv[7] = txpn._byte_.TSC5;\
 	txpn.val = txpn.val == 0xffffffffffffULL ? 0 : \
-	(txpn.val+1);\
+	(txpn.val + 1);\
 } while (0)
 
 struct hw_xmit {
diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index f941efb1f4e2..a5992818bc5a 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -26,7 +26,7 @@ enum WIFI_FRAME_TYPE {
 	WIFI_MGT_TYPE  =	(0),
 	WIFI_CTRL_TYPE =	(BIT(2)),
 	WIFI_DATA_TYPE =	(BIT(3)),
-	WIFI_QOS_DATA_TYPE	= (BIT(7)|BIT(3)),	/*!< QoS Data */
+	WIFI_QOS_DATA_TYPE	= (BIT(7) | BIT(3)),	/*!< QoS Data */
 };
 
 enum WIFI_FRAME_SUBTYPE {
-- 
2.25.1


