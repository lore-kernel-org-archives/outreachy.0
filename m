X-GM-THRID: 6666504737930608640
X-Received: by 2002:a63:f115:: with SMTP id f21mr10615128pgi.64.1552222688372;
        Sun, 10 Mar 2019 05:58:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:322:: with SMTP id 31ls7224055pld.1.gmail; Sun, 10
 Mar 2019 05:58:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwF8IdJv8uHH7m9FfsbjkiJQmJDsYadUabVZWWJtIsp8exjLuVcAktUteihlSYZTkU+wPug
X-Received: by 2002:a17:902:102b:: with SMTP id b40mr8850338pla.102.1552222687577;
        Sun, 10 Mar 2019 05:58:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552222687; cv=none;
        d=google.com; s=arc-20160816;
        b=E0UXRpuleJO3NS7nJOimB7SpqsBY5jHRqG2FQnqH7L8yLw4KqYv6meXAI/ozAq8yMk
         sz+A7NZxr47bJec1yUEAYv6CL91uxFdjbSjc7C37uQq74Or/kc7MaTZ6J5biWLtgrwvx
         7qcCr/qRQb2uy8OfcWiWJz2acOnL8ndml/8DKE1EONeMsukTo3wqyRitc6WkFpmiOC4n
         hUQVjGaqqIuQMZoonBu7IwizhuVL+quePxEL2pgBvJrH5v9l6GyKaBnZuuhQZX+sKmpn
         Fz2ZeQz35ck8ya7W3UWeaMmvzoi87sMe7cDlFqpzpr3ubJpTiOmX+6xgSoLuJ/xhRTLA
         77ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=8jxkPJR5lp3zNXG82dX0Hsaed0y7dWcAwEmBR7yHgOE=;
        b=pps0fOhYKV0a4Mu7cZzO3L7Kitd+mZ0/92zpth6QJgxP3u34JVS0mifvRwHZlwAW3c
         32iz1ZmfpvyOOhDgdd8Yjxq04IGm/B6QdIDKHB5c1LGwzUt5NMXibGi+A0u2gH+HaS6M
         8npDUfMe8DonlXYM0IkvxnYm8iKksVtm+cWxbp0LXwQD3XeV5llYIXXidUda/D5Wc1w0
         79ewr/SBMlKzy1QSdKx5JzBVZPpMfyFGInqVP337/U6NjKz/UW2G061UvFN2nnjFDCJj
         HyCN/cNljrjxzbXp9DlGZsAVg7rE0PVHH1DmkJ5LWyulXjzimnEckqjIdX4it91ux9Po
         UMYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CnF0rEAz;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id b19si95249pls.5.2019.03.10.05.58.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 05:58:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CnF0rEAz;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id a3so1647517pff.11
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 05:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8jxkPJR5lp3zNXG82dX0Hsaed0y7dWcAwEmBR7yHgOE=;
        b=CnF0rEAzDxrYie4vDD+pyNogfPfOyAQtUYRbT3FXHVWZKm1xB42Q9Ke9vuJjURsOQB
         fxzRcyp2tKYvJlyjj2xFh7BBVTgYEHzY1utvOII06Lrl/K+PQAe6Mcv39XCtlHuOpqAE
         7HQqX0N5AugXk0k6vJztoOfEpG49r9Ll0gJ9x3Hqw3xD0bUVDk/51DOJMpYs6lqucIZl
         /cPVbcbyuq2+YRDsYsJvtu1mDwdn8GQb5wXwIacKQH35jM5DoMVhjcUosVi1t2g53f/C
         aBkx1LWftcMWVzLVzz13fyCtx/xgjwWZY+gSdRtBtq7at889sES3LcKcseacEsrnqqNO
         SJPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8jxkPJR5lp3zNXG82dX0Hsaed0y7dWcAwEmBR7yHgOE=;
        b=j/WHG0hazeuu3wJb/D+qiABwWQ9TknsSQmwD5PM4/DpW5HgEPpnVvX02968eOmD4vo
         CWraMX71+WwY2rKCLxlr5neE+3GZKMWo7rFnDJ8zwU5KzZ8SXsK6FVQ3F8evB3E16BZ/
         S1D5Cfrb2W6PZh1pzZrlP/J/Vo2KVRV/OB9Z9TXv+yjRhqR1EzGIltKAooBmNPSjdRRk
         OQ9k3YqS8BaYqYqgs/2ZkE91pSvwdAnI/24hvOtfZF3mwjZjFZKpNrjk3RwgHAL5vcwD
         PDGWOvKjlvs/KutT9fraxQUDLf5bFLrBsHT8ydi7gFCYhkp4zw+k5uI5ukaAviimWrtt
         X5Gg==
X-Gm-Message-State: APjAAAWGD56BipsINEygEwWsf8EloAPLBawTVSmI3y15ontOTF7ufyaL
	C/7vw0/EYCHdkmC5rwTQIn3YNDiCugc=
X-Received: by 2002:a17:902:1025:: with SMTP id b34mr29352900pla.306.1552222686904;
        Sun, 10 Mar 2019 05:58:06 -0700 (PDT)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e8d:68c7:f828:5bfa:d9dc:e4ec])
        by smtp.gmail.com with ESMTPSA id p34sm6254955pgb.18.2019.03.10.05.58.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Mar 2019 05:58:06 -0700 (PDT)
Date: Sun, 10 Mar 2019 18:28:00 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/2] staging: rtl8712: line over 80 characters.
Message-ID: <20190310125800.GA25941@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues, which solves checkpatch.pl warning:
"WARNING: line over 80 characters".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v2:
  - Put kmalloc on the next line.

 drivers/staging/rtl8712/hal_init.c     | 3 ++-
 drivers/staging/rtl8712/ieee80211.c    | 3 ++-
 drivers/staging/rtl8712/ieee80211.h    | 3 ++-
 drivers/staging/rtl8712/rtl871x_xmit.c | 8 ++++----
 4 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 4c6519c..401f0e4 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -100,7 +100,8 @@ static void fill_fwpriv(struct _adapter *padapter, struct fw_priv *pfwpriv)
 		pfwpriv->rf_config = RTL8712_RFC_1T2R;
 	}
 	pfwpriv->mp_mode = (pregpriv->mp_mode == 1) ? 1 : 0;
-	pfwpriv->vcs_type = pregpriv->vrtl_carrier_sense; /* 0:off 1:on 2:auto */
+	/* 0:off 1:on 2:auto */
+	pfwpriv->vcs_type = pregpriv->vrtl_carrier_sense;
 	pfwpriv->vcs_mode = pregpriv->vcs_type; /* 1:RTS/CTS 2:CTS to self */
 	/* default enable turbo_mode */
 	pfwpriv->turbo_mode = ((pregpriv->wifi_test == 1) ? 0 : 1);
diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
index 2eae11d..4cca739 100644
--- a/drivers/staging/rtl8712/ieee80211.c
+++ b/drivers/staging/rtl8712/ieee80211.c
@@ -238,7 +238,8 @@ unsigned char *r8712_get_wpa_ie(unsigned char *pie, uint *wpa_ie_len, int limit)
 	return NULL;
 }
 
-unsigned char *r8712_get_wpa2_ie(unsigned char *pie, uint *rsn_ie_len, int limit)
+unsigned char *r8712_get_wpa2_ie(unsigned char *pie, uint *rsn_ie_len,
+				 int limit)
 {
 	return r8712_get_ie(pie, _WPA2_IE_ID_, rsn_ie_len, limit);
 }
diff --git a/drivers/staging/rtl8712/ieee80211.h b/drivers/staging/rtl8712/ieee80211.h
index 1470771d..8098f69 100644
--- a/drivers/staging/rtl8712/ieee80211.h
+++ b/drivers/staging/rtl8712/ieee80211.h
@@ -728,7 +728,8 @@ struct registry_priv;
 
 u8 *r8712_set_ie(u8 *pbuf, sint index, uint len, u8 *source, uint *frlen);
 u8 *r8712_get_ie(u8 *pbuf, sint index, uint *len, sint limit);
-unsigned char *r8712_get_wpa_ie(unsigned char *pie, uint *rsn_ie_len, int limit);
+unsigned char *r8712_get_wpa_ie(unsigned char *pie, uint *rsn_ie_len,
+				int limit);
 unsigned char *r8712_get_wpa2_ie(unsigned char *pie, uint *rsn_ie_len,
 				 int limit);
 int r8712_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher,
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 7c88574..f6fe8ea 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -75,8 +75,8 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	 * and initialize free_xmit_frame below.
 	 * Please also apply  free_txobj to link_up all the xmit_frames...
 	 */
-	pxmitpriv->pallocated_frame_buf = kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4,
-						  GFP_ATOMIC);
+	pxmitpriv->pallocated_frame_buf =
+		kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4, GFP_ATOMIC);
 	if (!pxmitpriv->pallocated_frame_buf) {
 		pxmitpriv->pxmit_frame_buf = NULL;
 		return _FAIL;
@@ -114,8 +114,8 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	/*init xmit_buf*/
 	_init_queue(&pxmitpriv->free_xmitbuf_queue);
 	_init_queue(&pxmitpriv->pending_xmitbuf_queue);
-	pxmitpriv->pallocated_xmitbuf = kmalloc(NR_XMITBUFF * sizeof(struct xmit_buf) + 4,
-						GFP_ATOMIC);
+	pxmitpriv->pallocated_xmitbuf =
+		kmalloc(NR_XMITBUFF * sizeof(struct xmit_buf) + 4, GFP_ATOMIC);
 	if (!pxmitpriv->pallocated_xmitbuf) {
 		kfree(pxmitpriv->pallocated_frame_buf);
 		pxmitpriv->pallocated_frame_buf = NULL;
-- 
2.7.4


