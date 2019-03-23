X-GM-THRID: 6671711109199691776
X-Received: by 2002:a05:660c:708:: with SMTP id l8mr3572330itk.68.1553378791062;
        Sat, 23 Mar 2019 15:06:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:33ca:: with SMTP id k193ls3203526itk.3.canary-gmail;
 Sat, 23 Mar 2019 15:06:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwzcebVb2oikaLiXucDHRcVs2MCdF+ZSYxhj3vv8FrWa7eNx/zUr78aDHrH6EkdzYwC1DPi
X-Received: by 2002:a24:411f:: with SMTP id x31mr6291468ita.169.1553378790491;
        Sat, 23 Mar 2019 15:06:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553378790; cv=none;
        d=google.com; s=arc-20160816;
        b=LMuvgq+26Zuwm7kUc8qBMuaWh55c9de+Y+Y0Ya8WAtIXaWnNHts6Y3bILPIejmDh9e
         U64HBKdDajuacXrdsJE5R6KjNDF1ZMw2R5PdQ/uVDUmlYzmE8UMi2nhuy0F0Bw7Y69/s
         81IS8Nob/WrEebHFuqllTKVkbnf86XVpFK4oJG8QmGEG82Pcb0lMFHTm4ajV3X+Li+8+
         DD0muu0bOfocHQBEsDkkxBap/98CGAY6ZbZsXaZlnvUanEocpkOPeuofSkOBbvQocyoG
         linSs3o5qVA7WxgDBmj6n7PbsGqUVSit0PBrvtj67RmA6zs1yk4YeVXFB2FeeOP1V56m
         mG9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=j3vbKtnoQZToYDzR29cT0mCE0YASoMXjAfPBsH/hx4o=;
        b=dMsCNlTks9qyt354pvZznAI8ymFoZZ8/2fUKs9bjHeYr4+yaAI2fe4LGCCXU91rSA7
         QDpYUKU7fM8sFs/mMm9rMM1I6q8RN2YE8/77O8yIeDG+1ohK30FjrVkPtjuTpjjL7Plf
         W6aLu+SLPL72wnK7trJu8Otj8i7jMu5krtiSQfBz+H0g0FkfcXY7ze5ZuOPc+6cAIhYw
         D84lCrXS863whtqbqlhTugpY7F2a46jt44YV3e+sxBItlMrJVy81SxZ4bMhxHyHQhIjh
         NNt0RvbsZyiRYK+bGV1KCFofXZxTO99IrV5RfrTjmJLs2RFKFK+ScKCgyU10oQ40Eb5X
         KrfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZzYhf5pO;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id x26si601093iog.4.2019.03.23.15.06.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 15:06:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZzYhf5pO;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 9so3801510pfj.13
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 15:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=j3vbKtnoQZToYDzR29cT0mCE0YASoMXjAfPBsH/hx4o=;
        b=ZzYhf5pOpXafShSpZkkgXU8dQ1wBQzMAc8tVxaZM4lh8XzeNUhQeLastxyw49xljdJ
         Ezgw6OntowKPgcwNHJQDFcrfvFat+eUgWTk/+VCYspiPPeCinFwTDmq0J+4kZOo/1NpZ
         lTEJZ/p0JsvCy/mGJm3Lut3mMk1IiYDmub5zNcjAZ3CsM+hm/7iJs+HWH2Pp8pqkFA6u
         jx7FEqVfTKp9yQyUuIN/cy3zfTkCYPiUKphcUrMAv/rJNKUHwOB+Bj3q8/QsW2Cfcue+
         ZBhbpvh9JeE2+ecCvqOJh2q96qcoXmdq4aIAV269vVvzYBPcCf43YnODWSzkkiHr3tK4
         XUyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=j3vbKtnoQZToYDzR29cT0mCE0YASoMXjAfPBsH/hx4o=;
        b=YSmv+AFbHJb90zzA+eNZbGUekigKo500Vx+Z/+J/MQid8OwpiAvlwHS4DjqDV3zsa/
         uAHdqjUobluaeN0+fozp2o1ocG8/VSEP91i7JFZdfTYUL2ithku2XFGBsgwWltvdrnvT
         dnZikRFO9hmjahfiIDgwZEM592rBY6VHiL5h67FnRKuEgU/oQB3jUaU7bb4rUvQN99YR
         O79PGrr/xt48LNC5w3BdQyISaE+rFprtxR6wiZqATpaim833fUmfBJXvEG5Vtqo0KBt9
         d3VonS0W8rDu2BrLILUFxezdEGK26lohdLR/I7pPUdGB4fFZMlkKC56FNl5CInOayZ7o
         xuXQ==
X-Gm-Message-State: APjAAAX3kgfRQuAuLdH4WjSWlp5jEnfzutjbbfhiqJ+qSD6R9S5Exiz8
	V0HopCM8KKnPM9eKGLC+sq06keWAuzE=
X-Received: by 2002:a62:a50c:: with SMTP id v12mr16829492pfm.206.1553378789453;
        Sat, 23 Mar 2019 15:06:29 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.188])
        by smtp.gmail.com with ESMTPSA id 5sm9097965pfh.5.2019.03.23.15.06.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 15:06:28 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v3 3/3] staging: rtl8723bs: include: Eliminate p from structure field
Date: Sun, 24 Mar 2019 03:36:11 +0530
Message-Id: <20190323220611.9385-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Getting rid of p's from structure field 'pbuf'

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
change in v3:
 -added this to patchset

 .../staging/rtl8723bs/include/hal_btcoex.h    |   2 +-
 drivers/staging/rtl8723bs/include/ieee80211.h |   6 +-
 drivers/staging/rtl8723bs/include/rtw_ap.h    |   4 +-
 drivers/staging/rtl8723bs/include/rtw_event.h |   2 +-
 drivers/staging/rtl8723bs/include/rtw_io.h    |   2 +-
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  68 ++++----
 drivers/staging/rtl8723bs/include/rtw_recv.h  |   2 +-
 drivers/staging/rtl8723bs/include/rtw_xmit.h  |   2 +-
 drivers/staging/rtl8723bs/include/sdio_ops.h  |   4 +-
 drivers/staging/rtl8723bs/include/wifi.h      | 164 +++++++++---------
 10 files changed, 128 insertions(+), 128 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_btcoex.h b/drivers/staging/rtl8723bs/include/hal_btcoex.h
index 4066b0a1450c..720f4ff02de5 100644
--- a/drivers/staging/rtl8723bs/include/hal_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/hal_btcoex.h
@@ -53,7 +53,7 @@ u8 hal_btcoex_RpwmVal(struct adapter *);
 u8 hal_btcoex_LpsVal(struct adapter *);
 u32 hal_btcoex_GetRaMask(struct adapter *);
 void hal_btcoex_RecordPwrMode(struct adapter *padapter, u8 *pCmdBuf, u8 cmdLen);
-void hal_btcoex_DisplayBtCoexInfo(struct adapter *, u8 *pbuf, u32 bufsize);
+void hal_btcoex_DisplayBtCoexInfo(struct adapter *, u8 *buf, u32 bufsize);
 void hal_btcoex_SetDBG(struct adapter *, u32 *pDbgModule);
 u32 hal_btcoex_GetDBG(struct adapter *, u8 *pStrBuf, u32 bufSize);
 
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 9efb4dcb9d3a..156280dfae64 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -1122,8 +1122,8 @@ ParseRes rtw_ieee802_11_parse_elems(u8 *start, uint len,
 				struct rtw_ieee802_11_elems *elems,
 				int show_errors);
 
-u8 *rtw_set_fixed_ie(unsigned char *pbuf, unsigned int len, unsigned char *source, unsigned int *frlen);
-u8 *rtw_set_ie(u8 *pbuf, sint index, uint len, u8 *source, uint *frlen);
+u8 *rtw_set_fixed_ie(unsigned char *buf, unsigned int len, unsigned char *source, unsigned int *frlen);
+u8 *rtw_set_ie(u8 *buf, sint index, uint len, u8 *source, uint *frlen);
 
 enum secondary_ch_offset {
 	SCN = 0, /* no secondary channel */
@@ -1131,7 +1131,7 @@ enum secondary_ch_offset {
 	SCB = 3,  /* secondary channel below */
 };
 
-u8 *rtw_get_ie(u8*pbuf, sint index, sint *len, sint limit);
+u8 *rtw_get_ie(u8*buf, sint index, sint *len, sint limit);
 u8 *rtw_get_ie_ex(u8 *in_ie, uint in_len, u8 eid, u8 *oui, u8 oui_len, u8 *ie, uint *ielen);
 int rtw_ies_remove_ie(u8 *ies, uint *ies_len, uint offset, u8 eid, u8 *oui, u8 oui_len);
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_ap.h b/drivers/staging/rtl8723bs/include/rtw_ap.h
index fd56c9db16a9..1d5c64328106 100644
--- a/drivers/staging/rtl8723bs/include/rtw_ap.h
+++ b/drivers/staging/rtl8723bs/include/rtw_ap.h
@@ -14,8 +14,8 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx);
 void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level);
 void expire_timeout_chk(struct adapter *padapter);
 void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta);
-void start_bss_network(struct adapter *padapter, u8 *pbuf);
-int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len);
+void start_bss_network(struct adapter *padapter, u8 *buf);
+int rtw_check_beacon_data(struct adapter *padapter, u8 *buf,  int len);
 void rtw_ap_restore_network(struct adapter *padapter);
 void rtw_set_macaddr_acl(struct adapter *padapter, int mode);
 int rtw_acl_add_sta(struct adapter *padapter, u8 *addr);
diff --git a/drivers/staging/rtl8723bs/include/rtw_event.h b/drivers/staging/rtl8723bs/include/rtw_event.h
index ee80aa21eb10..69bc2f157b69 100644
--- a/drivers/staging/rtl8723bs/include/rtw_event.h
+++ b/drivers/staging/rtl8723bs/include/rtw_event.h
@@ -76,7 +76,7 @@ struct wmm_event
 
 struct fwevent {
 	u32 parmsize;
-	void (*event_callback)(struct adapter *dev, u8 *pbuf);
+	void (*event_callback)(struct adapter *dev, u8 *buf);
 };
 
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_io.h b/drivers/staging/rtl8723bs/include/rtw_io.h
index 99d104b3647a..361f2150d604 100644
--- a/drivers/staging/rtl8723bs/include/rtw_io.h
+++ b/drivers/staging/rtl8723bs/include/rtw_io.h
@@ -114,7 +114,7 @@ struct io_req {
 	volatile u32 val;
 	u32 command;
 	u32 status;
-	u8 *pbuf;
+	u8 *buf;
 
 	void (*_async_io_callback)(struct adapter *padater, struct io_req *pio_req, u8 *cnxt);
 	u8 *cnxt;
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index f6eabad4bbe0..eb31ec01d290 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -748,41 +748,41 @@ int rtw_get_ch_setting_union(struct adapter *adapter, u8 *ch, u8 *bw, u8 *offset
 
 struct cmd_hdl {
 	uint	parmsize;
-	u8 (*h2cfuns)(struct adapter *padapter, u8 *pbuf);
+	u8 (*h2cfuns)(struct adapter *padapter, u8 *buf);
 };
 
 
-u8 read_macreg_hdl(struct adapter *padapter, u8 *pbuf);
-u8 write_macreg_hdl(struct adapter *padapter, u8 *pbuf);
-u8 read_bbreg_hdl(struct adapter *padapter, u8 *pbuf);
-u8 write_bbreg_hdl(struct adapter *padapter, u8 *pbuf);
-u8 read_rfreg_hdl(struct adapter *padapter, u8 *pbuf);
-u8 write_rfreg_hdl(struct adapter *padapter, u8 *pbuf);
-
-
-u8 NULL_hdl(struct adapter *padapter, u8 *pbuf);
-u8 join_cmd_hdl(struct adapter *padapter, u8 *pbuf);
-u8 disconnect_hdl(struct adapter *padapter, u8 *pbuf);
-u8 createbss_hdl(struct adapter *padapter, u8 *pbuf);
-u8 setopmode_hdl(struct adapter *padapter, u8 *pbuf);
-u8 sitesurvey_cmd_hdl(struct adapter *padapter, u8 *pbuf);
-u8 setauth_hdl(struct adapter *padapter, u8 *pbuf);
-u8 setkey_hdl(struct adapter *padapter, u8 *pbuf);
-u8 set_stakey_hdl(struct adapter *padapter, u8 *pbuf);
-u8 set_assocsta_hdl(struct adapter *padapter, u8 *pbuf);
-u8 del_assocsta_hdl(struct adapter *padapter, u8 *pbuf);
-u8 add_ba_hdl(struct adapter *padapter, unsigned char *pbuf);
-
-u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf);
-u8 h2c_msg_hdl(struct adapter *padapter, unsigned char *pbuf);
-u8 chk_bmc_sleepq_hdl(struct adapter *padapter, unsigned char *pbuf);
-u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf);
-u8 set_ch_hdl(struct adapter *padapter, u8 *pbuf);
-u8 set_chplan_hdl(struct adapter *padapter, unsigned char *pbuf);
-u8 led_blink_hdl(struct adapter *padapter, unsigned char *pbuf);
-u8 set_csa_hdl(struct adapter *padapter, unsigned char *pbuf);	/* Kurt: Handling DFS channel switch announcement ie. */
-u8 tdls_hdl(struct adapter *padapter, unsigned char *pbuf);
-u8 run_in_thread_hdl(struct adapter *padapter, u8 *pbuf);
+u8 read_macreg_hdl(struct adapter *padapter, u8 *buf);
+u8 write_macreg_hdl(struct adapter *padapter, u8 *buf);
+u8 read_bbreg_hdl(struct adapter *padapter, u8 *buf);
+u8 write_bbreg_hdl(struct adapter *padapter, u8 *buf);
+u8 read_rfreg_hdl(struct adapter *padapter, u8 *buf);
+u8 write_rfreg_hdl(struct adapter *padapter, u8 *buf);
+
+
+u8 NULL_hdl(struct adapter *padapter, u8 *buf);
+u8 join_cmd_hdl(struct adapter *padapter, u8 *buf);
+u8 disconnect_hdl(struct adapter *padapter, u8 *buf);
+u8 createbss_hdl(struct adapter *padapter, u8 *buf);
+u8 setopmode_hdl(struct adapter *padapter, u8 *buf);
+u8 sitesurvey_cmd_hdl(struct adapter *padapter, u8 *buf);
+u8 setauth_hdl(struct adapter *padapter, u8 *buf);
+u8 setkey_hdl(struct adapter *padapter, u8 *buf);
+u8 set_stakey_hdl(struct adapter *padapter, u8 *buf);
+u8 set_assocsta_hdl(struct adapter *padapter, u8 *buf);
+u8 del_assocsta_hdl(struct adapter *padapter, u8 *buf);
+u8 add_ba_hdl(struct adapter *padapter, unsigned char *buf);
+
+u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *buf);
+u8 h2c_msg_hdl(struct adapter *padapter, unsigned char *buf);
+u8 chk_bmc_sleepq_hdl(struct adapter *padapter, unsigned char *buf);
+u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *buf);
+u8 set_ch_hdl(struct adapter *padapter, u8 *buf);
+u8 set_chplan_hdl(struct adapter *padapter, unsigned char *buf);
+u8 led_blink_hdl(struct adapter *padapter, unsigned char *buf);
+u8 set_csa_hdl(struct adapter *padapter, unsigned char *buf);	/* Kurt: Handling DFS channel switch announcement ie. */
+u8 tdls_hdl(struct adapter *padapter, unsigned char *buf);
+u8 run_in_thread_hdl(struct adapter *padapter, u8 *buf);
 
 
 #define GEN_DRV_CMD_HANDLER(size, cmd)	{size, &cmd ## _hdl},
@@ -804,8 +804,8 @@ struct C2HEvent_Header
 	unsigned int rsvd;
 };
 
-void rtw_dummy_event_callback(struct adapter *adapter , u8 *pbuf);
-void rtw_fwdbg_event_callback(struct adapter *adapter , u8 *pbuf);
+void rtw_dummy_event_callback(struct adapter *adapter , u8 *buf);
+void rtw_fwdbg_event_callback(struct adapter *adapter , u8 *buf);
 
 enum rtw_c2h_event
 {
diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index b4ac00e2ba43..93567f804cb8 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -304,7 +304,7 @@ struct recv_buf
 
 	struct adapter *adapter;
 
-	u8 *pbuf;
+	u8 *buf;
 	u8 *allocated_buf;
 
 	u32 len;
diff --git a/drivers/staging/rtl8723bs/include/rtw_xmit.h b/drivers/staging/rtl8723bs/include/rtw_xmit.h
index 6e4e047ad5cc..6058d529dd52 100644
--- a/drivers/staging/rtl8723bs/include/rtw_xmit.h
+++ b/drivers/staging/rtl8723bs/include/rtw_xmit.h
@@ -254,7 +254,7 @@ struct xmit_buf
 
 	u8 *allocated_buf;
 
-	u8 *pbuf;
+	u8 *buf;
 
 	void *priv_data;
 
diff --git a/drivers/staging/rtl8723bs/include/sdio_ops.h b/drivers/staging/rtl8723bs/include/sdio_ops.h
index 0f117ff1fbbe..7e663f26073b 100644
--- a/drivers/staging/rtl8723bs/include/sdio_ops.h
+++ b/drivers/staging/rtl8723bs/include/sdio_ops.h
@@ -16,8 +16,8 @@ extern void sdio_set_intf_ops(struct adapter *padapter, struct _io_ops *pops);
 /* extern void sdio_func1cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *wmem); */
 extern u8 SdioLocalCmd52Read1Byte(struct adapter *padapter, u32 addr);
 extern void SdioLocalCmd52Write1Byte(struct adapter *padapter, u32 addr, u8 v);
-extern s32 sdio_local_read(struct adapter *padapter, u32 addr, u32 cnt, u8 *pbuf);
-extern s32 sdio_local_write(struct adapter *padapter, u32 addr, u32 cnt, u8 *pbuf);
+extern s32 sdio_local_read(struct adapter *padapter, u32 addr, u32 cnt, u8 *buf);
+extern s32 sdio_local_write(struct adapter *padapter, u32 addr, u32 cnt, u8 *buf);
 
 u32 _sdio_read32(struct adapter *padapter, u32 addr);
 s32 _sdio_write32(struct adapter *padapter, u32 addr, u32 val);
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index ee1994ecbf18..da39adbe4606 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -198,147 +198,147 @@ enum WIFI_REG_DOMAIN {
 #define _PRIVACY_	BIT(14)
 #define _ORDER_			BIT(15)
 
-#define SetToDs(pbuf)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16(_TO_DS_)
+#define SetToDs(buf)	\
+	*(__le16 *)(buf) |= cpu_to_le16(_TO_DS_)
 
-#define GetToDs(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_TO_DS_)) != 0)
+#define GetToDs(buf)	(((*(__le16 *)(buf)) & cpu_to_le16(_TO_DS_)) != 0)
 
-#define ClearToDs(pbuf)	\
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_TO_DS_))
+#define ClearToDs(buf)	\
+	*(__le16 *)(buf) &= (~cpu_to_le16(_TO_DS_))
 
-#define SetFrDs(pbuf)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16(_FROM_DS_)
+#define SetFrDs(buf)	\
+	*(__le16 *)(buf) |= cpu_to_le16(_FROM_DS_)
 
-#define GetFrDs(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_FROM_DS_)) != 0)
+#define GetFrDs(buf)	(((*(__le16 *)(buf)) & cpu_to_le16(_FROM_DS_)) != 0)
 
-#define ClearFrDs(pbuf)	\
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_FROM_DS_))
+#define ClearFrDs(buf)	\
+	*(__le16 *)(buf) &= (~cpu_to_le16(_FROM_DS_))
 
 #define get_tofr_ds(pframe)	((GetToDs(pframe) << 1) | GetFrDs(pframe))
 
-#define SetMFrag(pbuf)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16(_MORE_FRAG_)
+#define SetMFrag(buf)	\
+	*(__le16 *)(buf) |= cpu_to_le16(_MORE_FRAG_)
 
-#define GetMFrag(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_MORE_FRAG_)) != 0)
+#define GetMFrag(buf)	(((*(__le16 *)(buf)) & cpu_to_le16(_MORE_FRAG_)) != 0)
 
-#define ClearMFrag(pbuf)	\
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_MORE_FRAG_))
+#define ClearMFrag(buf)	\
+	*(__le16 *)(buf) &= (~cpu_to_le16(_MORE_FRAG_))
 
-#define SetRetry(pbuf)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16(_RETRY_)
+#define SetRetry(buf)	\
+	*(__le16 *)(buf) |= cpu_to_le16(_RETRY_)
 
-#define GetRetry(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_RETRY_)) != 0)
+#define GetRetry(buf)	(((*(__le16 *)(buf)) & cpu_to_le16(_RETRY_)) != 0)
 
-#define ClearRetry(pbuf)	\
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_RETRY_))
+#define ClearRetry(buf)	\
+	*(__le16 *)(buf) &= (~cpu_to_le16(_RETRY_))
 
-#define SetPwrMgt(pbuf)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16(_PWRMGT_)
+#define SetPwrMgt(buf)	\
+	*(__le16 *)(buf) |= cpu_to_le16(_PWRMGT_)
 
-#define GetPwrMgt(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_PWRMGT_)) != 0)
+#define GetPwrMgt(buf)	(((*(__le16 *)(buf)) & cpu_to_le16(_PWRMGT_)) != 0)
 
-#define ClearPwrMgt(pbuf)	\
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_PWRMGT_))
+#define ClearPwrMgt(buf)	\
+	*(__le16 *)(buf) &= (~cpu_to_le16(_PWRMGT_))
 
-#define SetMData(pbuf)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16(_MORE_DATA_)
+#define SetMData(buf)	\
+	*(__le16 *)(buf) |= cpu_to_le16(_MORE_DATA_)
 
-#define GetMData(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_MORE_DATA_)) != 0)
+#define GetMData(buf)	(((*(__le16 *)(buf)) & cpu_to_le16(_MORE_DATA_)) != 0)
 
-#define ClearMData(pbuf)	\
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_MORE_DATA_))
+#define ClearMData(buf)	\
+	*(__le16 *)(buf) &= (~cpu_to_le16(_MORE_DATA_))
 
-#define SetPrivacy(pbuf)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16(_PRIVACY_)
+#define SetPrivacy(buf)	\
+	*(__le16 *)(buf) |= cpu_to_le16(_PRIVACY_)
 
-#define GetPrivacy(pbuf)					\
-	(((*(__le16 *)(pbuf)) & cpu_to_le16(_PRIVACY_)) != 0)
+#define GetPrivacy(buf)					\
+	(((*(__le16 *)(buf)) & cpu_to_le16(_PRIVACY_)) != 0)
 
-#define ClearPrivacy(pbuf)	\
-	*(__le16 *)(pbuf) &= (~cpu_to_le16(_PRIVACY_))
+#define ClearPrivacy(buf)	\
+	*(__le16 *)(buf) &= (~cpu_to_le16(_PRIVACY_))
 
 
-#define GetOrder(pbuf)					\
-	(((*(__le16 *)(pbuf)) & cpu_to_le16(_ORDER_)) != 0)
+#define GetOrder(buf)					\
+	(((*(__le16 *)(buf)) & cpu_to_le16(_ORDER_)) != 0)
 
-#define GetFrameType(pbuf)				\
-	(le16_to_cpu(*(__le16 *)(pbuf)) & (BIT(3) | BIT(2)))
+#define GetFrameType(buf)				\
+	(le16_to_cpu(*(__le16 *)(buf)) & (BIT(3) | BIT(2)))
 
-#define SetFrameType(pbuf, type)	\
+#define SetFrameType(buf, type)	\
 	do {	\
-		*(unsigned short *)(pbuf) &= __constant_cpu_to_le16(~(BIT(3) | BIT(2))); \
-		*(unsigned short *)(pbuf) |= __constant_cpu_to_le16(type); \
+		*(unsigned short *)(buf) &= __constant_cpu_to_le16(~(BIT(3) | BIT(2))); \
+		*(unsigned short *)(buf) |= __constant_cpu_to_le16(type); \
 	} while (0)
 
-#define GetFrameSubType(pbuf)	(le16_to_cpu(*(__le16 *)(pbuf)) & (BIT(7) |\
+#define GetFrameSubType(buf)	(le16_to_cpu(*(__le16 *)(buf)) & (BIT(7) |\
 	 BIT(6) | BIT(5) | BIT(4) | BIT(3) | BIT(2)))
 
-#define SetFrameSubType(pbuf, type) \
+#define SetFrameSubType(buf, type) \
 	do {    \
-		*(__le16 *)(pbuf) &= cpu_to_le16(~(BIT(7) | BIT(6) |	\
+		*(__le16 *)(buf) &= cpu_to_le16(~(BIT(7) | BIT(6) |	\
 		 BIT(5) | BIT(4) | BIT(3) | BIT(2))); \
-		*(__le16 *)(pbuf) |= cpu_to_le16(type); \
+		*(__le16 *)(buf) |= cpu_to_le16(type); \
 	} while (0)
 
-#define GetSequence(pbuf)			\
-	(le16_to_cpu(*(__le16 *)((size_t)(pbuf) + 22)) >> 4)
+#define GetSequence(buf)			\
+	(le16_to_cpu(*(__le16 *)((size_t)(buf) + 22)) >> 4)
 
-#define GetFragNum(pbuf)			\
-	(le16_to_cpu(*(__le16 *)((size_t)(pbuf) + 22)) & 0x0f)
+#define GetFragNum(buf)			\
+	(le16_to_cpu(*(__le16 *)((size_t)(buf) + 22)) & 0x0f)
 
-#define GetTupleCache(pbuf)			\
-	(cpu_to_le16(*(unsigned short *)((size_t)(pbuf) + 22)))
+#define GetTupleCache(buf)			\
+	(cpu_to_le16(*(unsigned short *)((size_t)(buf) + 22)))
 
-#define SetFragNum(pbuf, num) \
+#define SetFragNum(buf, num) \
 	do {    \
-		*(unsigned short *)((size_t)(pbuf) + 22) = \
-			((*(unsigned short *)((size_t)(pbuf) + 22)) &	\
+		*(unsigned short *)((size_t)(buf) + 22) = \
+			((*(unsigned short *)((size_t)(buf) + 22)) &	\
 			le16_to_cpu(~(0x000f))) | \
 			cpu_to_le16(0x0f & (num));     \
 	} while (0)
 
-#define SetSeqNum(pbuf, num) \
+#define SetSeqNum(buf, num) \
 	do {    \
-		*(__le16 *)((size_t)(pbuf) + 22) = \
-			((*(__le16 *)((size_t)(pbuf) + 22)) & cpu_to_le16((unsigned short)0x000f)) | \
+		*(__le16 *)((size_t)(buf) + 22) = \
+			((*(__le16 *)((size_t)(buf) + 22)) & cpu_to_le16((unsigned short)0x000f)) | \
 			cpu_to_le16((unsigned short)(0xfff0 & (num << 4))); \
 	} while (0)
 
-#define SetDuration(pbuf, dur) \
-	*(__le16 *)((size_t)(pbuf) + 2) = cpu_to_le16(0xffff & (dur))
+#define SetDuration(buf, dur) \
+	*(__le16 *)((size_t)(buf) + 2) = cpu_to_le16(0xffff & (dur))
 
 
-#define SetPriority(pbuf, tid)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16(tid & 0xf)
+#define SetPriority(buf, tid)	\
+	*(__le16 *)(buf) |= cpu_to_le16(tid & 0xf)
 
-#define GetPriority(pbuf)	((le16_to_cpu(*(__le16 *)(pbuf))) & 0xf)
+#define GetPriority(buf)	((le16_to_cpu(*(__le16 *)(buf))) & 0xf)
 
-#define SetEOSP(pbuf, eosp)	\
-		*(__le16 *)(pbuf) |= cpu_to_le16((eosp & 1) << 4)
+#define SetEOSP(buf, eosp)	\
+		*(__le16 *)(buf) |= cpu_to_le16((eosp & 1) << 4)
 
-#define SetAckpolicy(pbuf, ack)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16((ack & 3) << 5)
+#define SetAckpolicy(buf, ack)	\
+	*(__le16 *)(buf) |= cpu_to_le16((ack & 3) << 5)
 
-#define GetAckpolicy(pbuf) (((le16_to_cpu(*(__le16 *)pbuf)) >> 5) & 0x3)
+#define GetAckpolicy(buf) (((le16_to_cpu(*(__le16 *)buf)) >> 5) & 0x3)
 
-#define GetAMsdu(pbuf) (((le16_to_cpu(*(__le16 *)pbuf)) >> 7) & 0x1)
+#define GetAMsdu(buf) (((le16_to_cpu(*(__le16 *)buf)) >> 7) & 0x1)
 
-#define SetAMsdu(pbuf, amsdu)	\
-	*(__le16 *)(pbuf) |= cpu_to_le16((amsdu & 1) << 7)
+#define SetAMsdu(buf, amsdu)	\
+	*(__le16 *)(buf) |= cpu_to_le16((amsdu & 1) << 7)
 
-#define GetAid(pbuf)	(le16_to_cpu(*(__le16 *)((size_t)(pbuf) + 2)) & 0x3fff)
+#define GetAid(buf)	(le16_to_cpu(*(__le16 *)((size_t)(buf) + 2)) & 0x3fff)
 
-#define GetTid(pbuf)	(le16_to_cpu(*(__le16 *)((size_t)(pbuf) +	\
-			(((GetToDs(pbuf)<<1) | GetFrDs(pbuf)) == 3 ?	\
+#define GetTid(buf)	(le16_to_cpu(*(__le16 *)((size_t)(buf) +	\
+			(((GetToDs(buf)<<1) | GetFrDs(buf)) == 3 ?	\
 			30 : 24))) & 0x000f)
 
-#define GetAddr1Ptr(pbuf)	((unsigned char *)((size_t)(pbuf) + 4))
+#define GetAddr1Ptr(buf)	((unsigned char *)((size_t)(buf) + 4))
 
-#define GetAddr2Ptr(pbuf)	((unsigned char *)((size_t)(pbuf) + 10))
+#define GetAddr2Ptr(buf)	((unsigned char *)((size_t)(buf) + 10))
 
-#define GetAddr3Ptr(pbuf)	((unsigned char *)((size_t)(pbuf) + 16))
+#define GetAddr3Ptr(buf)	((unsigned char *)((size_t)(buf) + 16))
 
-#define GetAddr4Ptr(pbuf)	((unsigned char *)((size_t)(pbuf) + 24))
+#define GetAddr4Ptr(buf)	((unsigned char *)((size_t)(buf) + 24))
 
 #define MacAddr_isBcst(addr) \
 	(\
@@ -633,12 +633,12 @@ enum ELEMENT_ID {
 				Below is the definition for 802.11n
 ------------------------------------------------------------------------------*/
 
-#define SetOrderBit(pbuf)	\
+#define SetOrderBit(buf)	\
 	do	{	\
-		*(unsigned short *)(pbuf) |= cpu_to_le16(_ORDER_); \
+		*(unsigned short *)(buf) |= cpu_to_le16(_ORDER_); \
 	} while (0)
 
-#define GetOrderBit(pbuf)	(((*(unsigned short *)(pbuf)) & cpu_to_le16(_ORDER_)) != 0)
+#define GetOrderBit(buf)	(((*(unsigned short *)(buf)) & cpu_to_le16(_ORDER_)) != 0)
 
 #define ACT_CAT_VENDOR				0x7F/* 127 */
 
-- 
2.17.1


