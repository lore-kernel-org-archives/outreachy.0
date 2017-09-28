X-GM-THRID: 6468559183298953216
X-Received: by 10.84.134.35 with SMTP id 32mr467180plg.35.1506601938354;
        Thu, 28 Sep 2017 05:32:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.134.10 with SMTP id x10ls1128766pfd.3.gmail; Thu, 28 Sep
 2017 05:32:17 -0700 (PDT)
X-Received: by 10.99.94.194 with SMTP id s185mr636461pgb.63.1506601937674;
        Thu, 28 Sep 2017 05:32:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506601937; cv=none;
        d=google.com; s=arc-20160816;
        b=cUdqSr+aiuHNePUVIBJfCQDBknfRMuFJCVx7IDPLTJaNhLM3cDkgTsVsEs7qXcJ0Ah
         /qtRNFXIwpOwuZ8L4zM7kih40i8INL17jl2W3FTkGy1OAdbSO/5LO2lhqoIMYn3G5OXO
         KoVyJasaXgeGFA+1tO9dxJsgqKqbW6sKd5BPc9r7NxK4vPGUS2j5Bf3XgIAFE/AXgeob
         pv+IKjD+CZrlrTJrOPRG4TmjHLxXRdHmWjJl8Aeq4oeHrW443lT38PQH94wijiLlN2Vj
         GOtsXco1XntsMuMm7HjSUqtXggMBw1DoSA/lcim/SlJag5pWiQYKEV7uko1IdXL4tnzr
         gUVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=FmhgRrU6++ApUPpZ0IgHKFxNj9o5NwrM00xRkf0xciU=;
        b=ssYnGMctjvMcGWJFQQPJ5N1CPjB8Eta/9M0xKKAOqJ5QnqT6Z1DncfVPu8r6i+hmk9
         Cl30sIR4lu9uo3ZmnncJWl95qJwoOEtEvFORDnUUjiPjtFnWK3uTfyIRb0V8HMS5xqMg
         uVsmhK0DGRRXEVkr/Wao5B5/LMb7CwLoC1w2FoOmFO45skKe1pyp/fnmYXDZRwKUee51
         qLIuAwgQ5QEA3Rmb0YKygPFoEviPZ3yD0wCTqAn5aQXvJ/Hf6H51DkPvSjg0lt1r45ye
         CLqEipH7FbG+yL5GU7BLUF47FAT6x5V1PvUG2AxOaaWhw28w+tzSIJhheNuTEKTUotq+
         1jSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NTmj8x38;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id m186si188766pfm.2.2017.09.28.05.32.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 05:32:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NTmj8x38;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id f84so1392275pfj.3
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 05:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FmhgRrU6++ApUPpZ0IgHKFxNj9o5NwrM00xRkf0xciU=;
        b=NTmj8x38sauMVUps8uJdtqCjEEjYQitebrXxvKm9wFzpdi+b9AIdwjYL1ECCQzst3G
         oZLLjgspPenwufPhttinwMbAxWHIwmwt8iTzA2SrVN0DD/Xci/A66REtWhwfYBoZ45Wc
         hnKXGFKJDR+NXwG7cvkGPjGU5H0jW/lTqUKfdfFSwP6hGjC43jcAyBC6J2+EgLxPZ5ZY
         a1E/amvipOh6bKRQCnismuVPCm3hmOfBgCm+cLey/gMoktxX8q1ooTtyJLN47DT0VfcY
         nqzLQk8rNUbqJJdu9GDCLXek3qaZ41ejB0ltzG1zAI+zcfK1r534ybOfFm05S/DxeJ8B
         jlxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FmhgRrU6++ApUPpZ0IgHKFxNj9o5NwrM00xRkf0xciU=;
        b=uhNWeFymGSdxAeotdVHDOmtxmtTS7yJ6Qn66JzU/Kn6TwQR7mIipv/DBzqmQMFDSrS
         JuEI7r12AYWvpR1sbrE2W49r+3mUywA/rVqwRaxZdJWLlJi4kzwzDm+QG6U79TR9dFBV
         flIKzA6t6BhpQWdrQecexPH4ELEERIDPtD6yCS98LCrQauxgaxLOKsGKh53fuSd3sTbI
         CCWzxXS82Jfwvl3YOxQDCRCtdXVjcUp2c4EvnGggGams7LTei5gm25Jh9TfEmO1tU/R6
         pE5siR6O3ZBgrQNDUbD9OI85Y/M6v33XAlIHcsGRqvG40hWN62ma9gV1QkEKiTMG+rRN
         fC4Q==
X-Gm-Message-State: AHPjjUjVl45pMZNbixe/C/IvjfuzmmCOynWb2xY+3QTi61QEstyKrOV3
	fbs0wpwjNUmVNp6zCrgKgNnTw1hG
X-Google-Smtp-Source: AOwi7QBJ4Su7IegxbBDIP/63rwzrT7fuj/cwd9QE9fCXZ0yRYJvOZ8tzSc4XE+/cyhW0dLDhAvtW3w==
X-Received: by 10.98.74.156 with SMTP id c28mr4200867pfj.266.1506601937360;
        Thu, 28 Sep 2017 05:32:17 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.227.14.65])
        by smtp.gmail.com with ESMTPSA id b66sm3008182pfe.165.2017.09.28.05.32.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 05:32:16 -0700 (PDT)
Date: Thu, 28 Sep 2017 17:45:51 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH 3/3] staging: rtl8188eu: wrap lines in 80 characters
Message-ID: <dc7b0a307f4dd26e33a5f47a89607af1119716c1.1506600813.git.aishpant@gmail.com>
References: <cover.1506600813.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506600813.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Perform cleanup for all function declarations in core/rtw_mlme_ext wherever
checkpatch complains about lines being over 80 characters long.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 51 ++++++++++++++++++---------
 1 file changed, 34 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 99f3d5c..19625ad5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -605,7 +605,9 @@ static void issue_probersp(struct adapter *padapter, unsigned char *da)
 	dump_mgntframe(padapter, pmgntframe);
 }
 
-static int issue_probereq(struct adapter *padapter, struct ndis_802_11_ssid *pssid, u8 *da, bool wait_ack)
+static int issue_probereq(struct adapter *padapter,
+			  struct ndis_802_11_ssid *pssid, u8 *da,
+			  bool wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame		*pmgntframe;
@@ -1196,7 +1198,8 @@ static void issue_assocreq(struct adapter *padapter)
 }
 
 /* when wait_ack is true, this function should be called at process context */
-static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, bool wait_ack)
+static int _issue_nulldata(struct adapter *padapter, unsigned char *da,
+			   unsigned int power_mode, bool wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame			*pmgntframe;
@@ -1269,7 +1272,8 @@ static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned
 
 /* when wait_ms > 0 , this function should be called at process context */
 /* da == NULL for station mode */
-int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, int try_cnt, int wait_ms)
+int issue_nulldata(struct adapter *padapter, unsigned char *da,
+		   unsigned int power_mode, int try_cnt, int wait_ms)
 {
 	int ret;
 	int i = 0;
@@ -1316,7 +1320,8 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
 }
 
 /* when wait_ack is true, this function should be called at process context */
-static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, bool wait_ack)
+static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da,
+			       u16 tid, bool wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame			*pmgntframe;
@@ -1396,7 +1401,8 @@ static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16
 
 /* when wait_ms > 0 , this function should be called at process context */
 /* da == NULL for station mode */
-int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int try_cnt, int wait_ms)
+int issue_qos_nulldata(struct adapter *padapter, unsigned char *da,
+		       u16 tid, int try_cnt, int wait_ms)
 {
 	int ret;
 	int i = 0;
@@ -1442,7 +1448,8 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
 	return ret;
 }
 
-static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned short reason, bool wait_ack)
+static int _issue_deauth(struct adapter *padapter, unsigned char *da,
+			 unsigned short reason, bool wait_ack)
 {
 	struct xmit_frame			*pmgntframe;
 	struct pkt_attrib			*pattrib;
@@ -1502,7 +1509,8 @@ static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned s
 	return ret;
 }
 
-int issue_deauth(struct adapter *padapter, unsigned char *da, unsigned short reason)
+int issue_deauth(struct adapter *padapter, unsigned char *da,
+		 unsigned short reason)
 {
 	DBG_88E("%s to %pM\n", __func__, da);
 	return _issue_deauth(padapter, da, reason, false);
@@ -3757,7 +3765,8 @@ static unsigned int on_action_public_vendor(struct recv_frame *precv_frame)
 	return ret;
 }
 
-static unsigned int on_action_public_default(struct recv_frame *precv_frame, u8 action)
+static unsigned int on_action_public_default(struct recv_frame *precv_frame,
+					     u8 action)
 {
 	unsigned int ret = _FAIL;
 	u8 *pframe = precv_frame->pkt->data;
@@ -3972,9 +3981,10 @@ static int has_channel(struct rt_channel_info *channel_set,
 	return 0;
 }
 
-static void init_channel_list(struct adapter *padapter, struct rt_channel_info *channel_set,
-							  u8 chanset_size,
-							struct p2p_channels *channel_list)
+static void init_channel_list(struct adapter *padapter,
+			      struct rt_channel_info *channel_set,
+			      u8 chanset_size,
+			      struct p2p_channels *channel_list)
 {
 	struct p2p_oper_class_map op_class[] = {
 		{ IEEE80211G,  81,   1,  13,  1, BW20 },
@@ -4015,7 +4025,8 @@ static void init_channel_list(struct adapter *padapter, struct rt_channel_info *
 	channel_list->reg_classes = cla;
 }
 
-static u8 init_channel_set(struct adapter *padapter, u8 ChannelPlan, struct rt_channel_info *channel_set)
+static u8 init_channel_set(struct adapter *padapter, u8 ChannelPlan,
+			   struct rt_channel_info *channel_set)
 {
 	u8 index, chanset_size = 0;
 	u8 b2_4GBand = false;
@@ -4105,7 +4116,9 @@ void free_mlme_ext_priv(struct mlme_ext_priv *pmlmeext)
 	}
 }
 
-static void _mgt_dispatcher(struct adapter *padapter, struct mlme_handler *ptable, struct recv_frame *precv_frame)
+static void _mgt_dispatcher(struct adapter *padapter,
+			    struct mlme_handler *ptable,
+			    struct recv_frame *precv_frame)
 {
 	u8 bc_addr[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 	u8 *pframe = precv_frame->pkt->data;
@@ -4351,7 +4364,8 @@ void report_join_res(struct adapter *padapter, int res)
 	rtw_enqueue_cmd(pcmdpriv, pcmd_obj);
 }
 
-void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsigned short reason)
+void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr,
+			  unsigned short reason)
 {
 	struct cmd_obj *pcmd_obj;
 	u8 *pevtcmd;
@@ -4406,7 +4420,8 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
 	rtw_enqueue_cmd(pcmdpriv, pcmd_obj);
 }
 
-void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int cam_idx)
+void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr,
+			  int cam_idx)
 {
 	struct cmd_obj *pcmd_obj;
 	u8 *pevtcmd;
@@ -5125,8 +5140,10 @@ u8 disconnect_hdl(struct adapter *padapter, unsigned char *pbuf)
 	return	H2C_SUCCESS;
 }
 
-static int rtw_scan_ch_decision(struct adapter *padapter, struct rtw_ieee80211_channel *out,
-	u32 out_num, struct rtw_ieee80211_channel *in, u32 in_num)
+static int rtw_scan_ch_decision(struct adapter *padapter,
+				struct rtw_ieee80211_channel *out,
+				u32 out_num,
+				struct rtw_ieee80211_channel *in, u32 in_num)
 {
 	int i, j;
 	int set_idx;
-- 
2.7.4


