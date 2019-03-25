X-GM-THRID: 6672360992338345984
X-Received: by 2002:a37:a34f:: with SMTP id m76mr21073935qke.245.1553530104970;
        Mon, 25 Mar 2019 09:08:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:8b55:: with SMTP id d21ls2808556qvc.2.gmail; Mon, 25 Mar
 2019 09:08:24 -0700 (PDT)
X-Received: by 2002:a0c:963c:: with SMTP id 57mr21292714qvx.166.1553530104600;
        Mon, 25 Mar 2019 09:08:24 -0700 (PDT)
Received: by 2002:a37:4cd0:0:0:0:0:0 with SMTP id z199msqka;
        Sun, 24 Mar 2019 20:15:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzjvmWfvgUjDBKIkZ7TC2RZAmUzP8IjOk9Rt4CcLePQhJEGFIMQoe2CtIP+54KpYVNZdGjb
X-Received: by 2002:a0c:92c1:: with SMTP id c1mr17967939qvc.237.1553483734954;
        Sun, 24 Mar 2019 20:15:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553483734; cv=none;
        d=google.com; s=arc-20160816;
        b=RR8ObqVKc12pCxHi2R7wo6OjrlljdLnHzHqFkZySagC2fh8yXsWkjH8LHqwN79Pzhg
         Om1BNx6ejUuqxsoqVD4ejil4BbKkI5tNaW/Y/U72qw2nILVgX6+2QLe5MBnbvfCH6Tok
         VgSQeF96gfSuXxs3DxTgONTejGH0f1yr+xk6pTlZp14XKVsTyeQyRSn4NYIFuJCgeN/j
         yWagnbY5LYtxDp03bS68yHqmEbl1IsTHbxtmmwI2qvLZHnwtgZW/FlKkFvz7lbwobhAO
         Z4I7NUDEYvCMZUkWUuOywNI2XFga46lGgsKBomc9t8HLbSbvtVV9NAQg7UFx7RJQRBHv
         tSdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=8IEGMB3W+8+udX+a3XZGvNArxeIe9cbV7N6t4Wvuv54=;
        b=Jjo610iF7GfE0k/eLGmrT5h8eGjabrdrWkoyB3kCIhoO/6w0xb65ltuLZX5oEWmVq5
         dcyIQBYkFUVJzY7ZT7rqFQIOhHwJs7VomtE0yKOsoWebILmu0/oXCYywdUJp3/hGnOka
         UKWCOjKeWG5YJrx3g2fiPuTh8OineNyj8Bk8bx0DlHb/qsxY+c3BCnGCpvgSYeYPc9ox
         R7uAss7+92Z0x53Lkld49EjRjXO+SGkT2e3AKMufO881bz3d/EbiQsGcxnRX6wA93RB8
         SZJzlhn2TpKR+1cx/SfPX30Vsf7XUZGCI09fIVYvJnA/2jqLEZZh0rBXVoTK+VsEHXmB
         o6Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j9CBC+yU;
       spf=pass (google.com: domain of abdlwahdsa@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=abdlwahdsa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <abdlwahdsa@gmail.com>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id q58si207988qtf.5.2019.03.24.20.15.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 20:15:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of abdlwahdsa@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j9CBC+yU;
       spf=pass (google.com: domain of abdlwahdsa@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=abdlwahdsa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x743.google.com with SMTP id k130so4489431qke.3
        for <outreachy-kernel@googlegroups.com>; Sun, 24 Mar 2019 20:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=8IEGMB3W+8+udX+a3XZGvNArxeIe9cbV7N6t4Wvuv54=;
        b=j9CBC+yU1mjisGxro+tA/eokN/u3FhV+Kd1QOsSLqnuOqp0gM/GoYBZpkXIZPE/Vci
         prCT55sL6oRv7JD9bIAiSYOXc35Z3nNGPNo+JR1oijNCfo6wFR5RRQU2pm775Ns6Maza
         d4X2DuGEBIGKSTagtkRhcYtQPz7PJlzw4vYIF0O8yoXkeHpccxjHZrqV8VzbCk4bcvX3
         4asoSmBcq3CBYVKo4BqXR+OxfnZaULHuMpB9OfbZoGWsv4gbf21w3S9g0rgrNcl7h2f+
         rQn8+HdTCzrlsPH+jxnV6MCXu2dowmbdSto9dp4sUQdeVf6wLzdybqa5atppMz2NLbxl
         YMsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=8IEGMB3W+8+udX+a3XZGvNArxeIe9cbV7N6t4Wvuv54=;
        b=icgERgEuG+im6gQybCpHcIe8stE6KMcz6SjtHW9NrSC7FBtsuPTyZAwt+feMLO810I
         S4AYMV5zW0qvWJ8BBLZDcyLFBmYCje3RZjjSdKyPwiUmQjlH62CZg1I+zRGCi7Tj+UnH
         qhm4p9MuhR9vkQovuqqDUf7rP59johOnRaDqLyzkDC8KoJYZCqQvZrTaGBIIF71Q6HvY
         UjsxXusNzY4lzZP+8/mof9GfrYq/N+tklaz3MwZ8IQFnM9KwR6xVLoIQJHc+AZEZ2lre
         4RaGn4BC2QX5H70i0RISR0xxExd9fBMvGY8tHdq8G+Q4bxN6visYmNihm/xmse4wPTZk
         F5hg==
X-Gm-Message-State: APjAAAVTO5S0Szvic0+jz0SWXC+fNoUSM8Zk8i+TlALwsWHvdRmGY8To
	Nyhu2WEKnxE3xUVQWz5eqpF4I4W/
X-Received: by 2002:a05:620a:1646:: with SMTP id c6mr18147570qko.69.1553483734738;
        Sun, 24 Mar 2019 20:15:34 -0700 (PDT)
Return-Path: <abdlwahdsa@gmail.com>
Received: from localhost.localdomain (cpe-98-14-109-73.nyc.res.rr.com. [98.14.109.73])
        by smtp.gmail.com with ESMTPSA id f9sm7364151qth.77.2019.03.24.20.15.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 20:15:33 -0700 (PDT)
From: Sammy Abed <abdlwahdsa@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	abdlwahdsa@gmail.com
Subject: [PATCH] staging: rtl8723bs: include: Fix indentation and spacing issues
Date: Sun, 24 Mar 2019 20:15:03 -0700
Message-Id: <20190325031503.4616-1-abdlwahdsa@gmail.com>
X-Mailer: git-send-email 2.17.1

Replaced spaces with tabs at the beginning of lines.
Added spaces around a (+) operator.

Signed-off-by: Sammy Abed <abdlwahdsa@gmail.com>
---
 .../staging/rtl8723bs/include/wlan_bssdef.h   | 56 +++++++++----------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/wlan_bssdef.h b/drivers/staging/rtl8723bs/include/wlan_bssdef.h
index bdb14a84e5a5..88890b1c3c4c 100644
--- a/drivers/staging/rtl8723bs/include/wlan_bssdef.h
+++ b/drivers/staging/rtl8723bs/include/wlan_bssdef.h
@@ -129,15 +129,15 @@ struct ndis_801_11_ai_resfi {
 
 typedef struct _NDIS_802_11_ASSOCIATION_INFORMATION
 {
-    u32                   Length;
-    u16                  AvailableRequestFixedIEs;
-    struct ndis_802_11_ai_reqfi    RequestFixedIEs;
-    u32                   RequestIELength;
-    u32                   OffsetRequestIEs;
-    u16                  AvailableResponseFixedIEs;
-    struct ndis_801_11_ai_resfi    ResponseFixedIEs;
-    u32                   ResponseIELength;
-    u32                   OffsetResponseIEs;
+	u32                   Length;
+	u16                  AvailableRequestFixedIEs;
+	struct ndis_802_11_ai_reqfi    RequestFixedIEs;
+	u32                   RequestIELength;
+	u32                   OffsetRequestIEs;
+	u16                  AvailableResponseFixedIEs;
+	struct ndis_801_11_ai_resfi    ResponseFixedIEs;
+	u32                   ResponseIELength;
+	u32                   OffsetResponseIEs;
 } NDIS_802_11_ASSOCIATION_INFORMATION, *PNDIS_802_11_ASSOCIATION_INFORMATION;
 
 enum NDIS_802_11_RELOAD_DEFAULTS {
@@ -148,19 +148,19 @@ enum NDIS_802_11_RELOAD_DEFAULTS {
 /*  Key mapping keys require a BSSID */
 typedef struct _NDIS_802_11_KEY
 {
-    u32           Length;             /*  Length of this structure */
-    u32           KeyIndex;
-    u32           KeyLength;          /*  length of key in bytes */
-    NDIS_802_11_MAC_ADDRESS BSSID;
-    unsigned long long KeyRSC;
-    u8           KeyMaterial[32];     /*  variable length depending on above field */
+	u32           Length;             /*  Length of this structure */
+	u32           KeyIndex;
+	u32           KeyLength;          /*  length of key in bytes */
+	NDIS_802_11_MAC_ADDRESS BSSID;
+	unsigned long long KeyRSC;
+	u8           KeyMaterial[32];     /*  variable length depending on above field */
 } NDIS_802_11_KEY, *PNDIS_802_11_KEY;
 
 typedef struct _NDIS_802_11_REMOVE_KEY
 {
-    u32                   Length;        /*  Length of this structure */
-    u32                   KeyIndex;
-    NDIS_802_11_MAC_ADDRESS BSSID;
+	u32                   Length;        /*  Length of this structure */
+	u32                   KeyIndex;
+	NDIS_802_11_MAC_ADDRESS BSSID;
 } NDIS_802_11_REMOVE_KEY, *PNDIS_802_11_REMOVE_KEY;
 
 struct ndis_802_11_wep {
@@ -181,7 +181,7 @@ struct ndis_802_11_wep {
 #define MIC_CHECK_TIME	60000000
 
 #ifndef Ndis802_11APMode
-#define Ndis802_11APMode (Ndis802_11InfrastructureMax+1)
+#define Ndis802_11APMode (Ndis802_11InfrastructureMax + 1)
 #endif
 
 struct wlan_phy_info {
@@ -240,15 +240,15 @@ struct	wlan_network {
 };
 
 enum VRTL_CARRIER_SENSE {
-    DISABLE_VCS,
-    ENABLE_VCS,
-    AUTO_VCS
+	DISABLE_VCS,
+	ENABLE_VCS,
+	AUTO_VCS
 };
 
 enum VCS_TYPE {
-    NONE_VCS,
-    RTS_CTS,
-    CTS_TO_SELF
+	NONE_VCS,
+	RTS_CTS,
+	CTS_TO_SELF
 };
 
 #define PWR_CAM 0
@@ -259,9 +259,9 @@ enum VCS_TYPE {
 
 enum UAPSD_MAX_SP {
 	NO_LIMIT,
-       TWO_MSDU,
-       FOUR_MSDU,
-       SIX_MSDU
+	TWO_MSDU,
+	FOUR_MSDU,
+	SIX_MSDU
 };
 
 #define NUM_PRE_AUTH_KEY 16
-- 
2.17.1


