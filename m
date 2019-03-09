X-GM-THRID: 6666504737930608640
X-Received: by 2002:ac8:32f7:: with SMTP id a52mr14652927qtb.56.1552166589552;
        Sat, 09 Mar 2019 13:23:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:35d0:: with SMTP id c199ls2484977qka.4.gmail; Sat, 09
 Mar 2019 13:23:09 -0800 (PST)
X-Google-Smtp-Source: APXvYqwdsbM/NSTtAeeREQr683S3oObgHiVzCBSKVPgZnjQs6iqquN7hCMqfeMLZjuNTpHSXHKwn
X-Received: by 2002:a05:620a:130d:: with SMTP id o13mr8276411qkj.48.1552166588983;
        Sat, 09 Mar 2019 13:23:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552166588; cv=none;
        d=google.com; s=arc-20160816;
        b=BIPeqxL6xWznfH76f4fzzY6klw6hLXTf0ueqURRpTQ9UuwzF/PER/76xvQTKW2FjAl
         clhCPFVZTGI/I3jdUWjlm1RHJyqVlm/Rp5aq2FwnHbJ05uJlzqfqFHu5sXaFbf6WEd2V
         pvFj3npEnA/MvwtYD7RMX6+LSd9w83maGGEj359TNt0Metc7Cmpx/kL/TzZAdbnxNYWX
         HDdBzT/qsIf8D9FHLDbvvXDso6uTldxwdNhPS8neKeqQsgt7UpOBZiCQtMnDi6hDlKTl
         bNABs1lynyPkepLFqIePUMInSROcTT/3LqvTg1HSOO6n+NP3v+0CwPW7Fn6pjUOVnpL+
         IDNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=etkWVsMJl7Y4RD0sKCFEF41C9IC/2HCxLfx2ORTD158=;
        b=NlfslzAJjnCN/dZooGnDmGAXGnmCTpvQoBjEkAvalbXBdm9RLZYOo068u/uuqQoeEh
         EtP+ab4k1LxZCdBDj3sOVbi+6N8Xe+lrvpmMGlkEwApfACvJpKQVq8slJumZDD5BlyJN
         yAAXUx+MSGMWg716aAStUpxjIlcaiWD50QWyGb+5pXd+hBAf8x+JI6KrQqj7nzcq9M45
         ZEs9t8fXht/9BDxf9H7LJH0w2y0DKDS6jNa3MqPJgSL4QsSJVEoE4+PuyObi9BpledCO
         bpR2jnvnsQ22jkKDN9rOhJbdzvHgZc9vk8ov89MfDqZwWZDKpOolTXKvcW9HnkjKSgHn
         bUXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="e/jQPkQw";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 27si69200qtp.1.2019.03.09.13.23.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 13:23:08 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="e/jQPkQw";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id j5so759544pfa.2
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 13:23:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=etkWVsMJl7Y4RD0sKCFEF41C9IC/2HCxLfx2ORTD158=;
        b=e/jQPkQwTwvoDgoB3Rcv2n0VZDlSCrpRDbDrrOy4wObEHKS2egDtAcPi/8TUx0WLR4
         Wx3Bu6gmKdVpCXywO6V1bf/w8fxTf2R8OpCOhK+GWQs5AfqY5qleu9amyz+gYI3O+8Kt
         9DCwHvB7eN4/GkTV9vEACBlPVOtf0WEEakVCF2MrqRhhXP5izv3Hv6W41NQES2r+Qg/y
         6lZ5XBIlkt76dNqioFvjpN8fr9HPNNtG6GU9LDd/IGsDtTGZ4Y34J0+sRxdJm1rFoCA2
         UZlWMBaQxxX5b2SMGYbAdVen8VbnnfKEUW3N3WfZfWqDaDEjYwdZdvj2QL6uUIadBzGx
         bxag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=etkWVsMJl7Y4RD0sKCFEF41C9IC/2HCxLfx2ORTD158=;
        b=IEpkRBKB6uAWQow6na0d8VrMlsGOGRem0qpBKGGelM1uPE3afktgQx7UJ+6hpI9dbx
         ML7aLOqoHlFqawdPv9Z2D9V8WDSQUcNC72uFNkZtsr/QQj1x1vF118+GeIHya5RacMWo
         aag6QU+Zy9WytYln6ocDVBOESU6Bx9Fll7AYZDGx3OY1ccmMeW/QO1zJkhvAHOetpRJf
         OMwvheeSYlXcFitmfX80RHfO1wCbQNfcecNDf5WQ+ON952m2rIXqtqo16JH9coZ3dqGD
         vTKX16EkJ7BBsv6Ahzr7fRYjO+9fY+YI9Gb/5corK9vrIO4omvvgdQPPQE67p3Tj6Qw8
         exsQ==
X-Gm-Message-State: APjAAAU9JRlvV4fVpvj+f21x9S1teyaRMppOeqjAabfv6wdZc+/p99W9
	CX1MRxwoO/jv7pte3c9vQxp2zGcMi24=
X-Received: by 2002:a62:48c1:: with SMTP id q62mr25508537pfi.113.1552166587790;
        Sat, 09 Mar 2019 13:23:07 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e8c:9ce5:f828:5bfa:d9dc:e4ec])
        by smtp.gmail.com with ESMTPSA id t8sm2034719pgp.5.2019.03.09.13.23.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Mar 2019 13:23:07 -0800 (PST)
Date: Sun, 10 Mar 2019 02:53:02 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] staging: rtl8712: line over 80 characters.
Message-ID: <20190309212302.GA22031@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues, which solves checkpatch.pl warning:
"WARNING: line over 80 characters".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
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
index 94c2a48..4060c55 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -75,8 +75,8 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	 * and initialize free_xmit_frame below.
 	 * Please also apply  free_txobj to link_up all the xmit_frames...
 	 */
-	pxmitpriv->pallocated_frame_buf = kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4,
-						  GFP_ATOMIC);
+	pxmitpriv->pallocated_frame_buf = kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) +
+						  4, GFP_ATOMIC);
 	if (!pxmitpriv->pallocated_frame_buf) {
 		pxmitpriv->pxmit_frame_buf = NULL;
 		return _FAIL;
@@ -114,8 +114,8 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	/*init xmit_buf*/
 	_init_queue(&pxmitpriv->free_xmitbuf_queue);
 	_init_queue(&pxmitpriv->pending_xmitbuf_queue);
-	pxmitpriv->pallocated_xmitbuf = kmalloc(NR_XMITBUFF * sizeof(struct xmit_buf) + 4,
-						GFP_ATOMIC);
+	pxmitpriv->pallocated_xmitbuf = kmalloc(NR_XMITBUFF * sizeof(struct xmit_buf) +
+						4, GFP_ATOMIC);
 	if (!pxmitpriv->pallocated_xmitbuf) {
 		kfree(pxmitpriv->pallocated_frame_buf);
 		pxmitpriv->pallocated_frame_buf = NULL;
-- 
2.7.4


