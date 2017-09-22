X-GM-THRID: 6468559183298953216
X-Received: by 10.129.52.131 with SMTP id b125mr7043105ywa.142.1506078882583;
        Fri, 22 Sep 2017 04:14:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.44.187 with SMTP id 56ls1481697qtw.0.gmail; Fri, 22 Sep
 2017 04:14:42 -0700 (PDT)
X-Received: by 10.55.165.201 with SMTP id o192mr5845181qke.39.1506078882165;
        Fri, 22 Sep 2017 04:14:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506078882; cv=none;
        d=google.com; s=arc-20160816;
        b=mxUPnbuT0+vIev6rYmy2pdaRnHPB/xRilMNxh986g0G0wxpCtBhe7ykIY1eAeMpUhz
         t23aqRzKF6cGN1CPyXFeSzP99M7r9an2LmufcByHVZ3WUy0uR4k1kBL7oP43ORlvrE5S
         JLV6/FpVMWAu3p50UcZnRSUaqPwGyNOIix2bxIbSCBMpHwzCEcot+rdFDQ0HHgPvWzuh
         wiTrGok1tnSiHLeK9oMc+Jne8SdbdFNjwxzidtACzt4PPPz6yTpy+AmQVXgrSGnuDwgI
         BjIKQUypveWbj6gzBSmf8cyJVoGQziPwc6lWxayH7kR52LoQfS7Kmk0Imy93fICxw21d
         fKkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=FmhgRrU6++ApUPpZ0IgHKFxNj9o5NwrM00xRkf0xciU=;
        b=nimpsKMKl7HYl2dFY+sX6ARTe7PtAKGZRBn7lagJ3N91D4G3VxvWa51YWL8KvShIZN
         cPaVk9/Oud3995ExIDHv9ow5348eFhZl7Lne2EZPYYomceNaNviGXEQZYgUao8sbVPcR
         jU3pwrFsx56IYOQs/PYCUec9rWQ8zl+Q2C7FS/sUa/Shy0I6y1ZnpAvVYVjtVACrkZHW
         q7a3Wt7wwvX0LYUnasVCuR95YPf8hXYEYgYhGBUG9/9zvZUSWhO45t/PdjAMA+W4nJaF
         VKq2uI4TcCiQVe484nG2TKZtWvxDYQvfuCU/n1Y2SGqAKOHRAoXXkc/ZErbexD6LPt1q
         pHxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lax/LfSv;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-io0-x242.google.com (mail-io0-x242.google.com. [2607:f8b0:4001:c06::242])
        by gmr-mx.google.com with ESMTPS id z184si159240ywb.32.2017.09.22.04.14.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 04:14:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) client-ip=2607:f8b0:4001:c06::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lax/LfSv;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x242.google.com with SMTP id 93so1207153iol.4
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 04:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FmhgRrU6++ApUPpZ0IgHKFxNj9o5NwrM00xRkf0xciU=;
        b=lax/LfSvTLtsO2T/gUT/Y+AHPdA5GKEe8sv0zBpqEfMhtiU7lf1FIyoRU7nC09ZQY4
         4G4fkaued/SW3Doaibt5ZMgjLyKLtp8XytHDgs9WeNVpAd8IMGn+0HAEtal31WCcbnv7
         fMYfEwMhqnEt0byS0QiCUZIdDEpYB8jYJVR7KpIGe7DobTiwmxONhl7ZOBK1KSo1uPpn
         C6ylAu14IYBMuYTg0b+silYJ+xPQyebnLAplgfhjOq9yOvJstjlwS2fhU//Ml+Eu4yhx
         rEpqkZns/lCtIidK9VkGWRilqj05OJfVrZKb1WW4pHkVtQZuuFusvCnkpezDCWogmuTZ
         kRcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FmhgRrU6++ApUPpZ0IgHKFxNj9o5NwrM00xRkf0xciU=;
        b=qAafnY/uLLLDWKZDXfv14ipZ6y8LLIVnRWSo9TcSHl2xc5X1oRaKXa3gpvAD49hNXI
         V5+WM3zl5725RnzQx4aLpRhznEuGOhF6WoCfoOMNGMcE8qPa1eocjnH+i4DXrBO77zXE
         IWWyI2Hdn8OPdNiSeKqFJZVhhj8NGj7LnZpstH/xOpM1vXqHg8216i7mUldyDCmyl143
         xwJFz0ZVaN+QviNDyMidqOQC1SCda1Z5GaDtZjBTO0xYOe9u0M5w95d2sh28ZiczrR96
         VCe0ZX7ikKC9L+z9hXxS7I615wxY3EoLpdOTulMf90ghAiR+a6SuF4WCvf+SWlsfVbec
         M5Fg==
X-Gm-Message-State: AHPjjUg4fHHJmDs/cb2fb3VT2cYvkDZ8BCGcL9TRv7BKs0SewT9fvRYq
	2m8Nfzpl+u6XPDXulfg+xzI=
X-Google-Smtp-Source: AOwi7QC9WAW9fWGbOQxq+TMHAiECi1h3CGGXsdnyL7STu92kfXrBdKDLkjTk2XLe5PAamNwVw93MIg==
X-Received: by 10.107.81.10 with SMTP id f10mr6486055iob.22.1506078881549;
        Fri, 22 Sep 2017 04:14:41 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.15])
        by smtp.gmail.com with ESMTPSA id a100sm1936289ioj.47.2017.09.22.04.14.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 04:14:41 -0700 (PDT)
Date: Fri, 22 Sep 2017 16:44:36 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, julia.lawall@lip6.fr
Subject: [PATCH 3/3] staging: rtl8188eu: wrap lines in 80 characters
Message-ID: <6cd3693f6cd275398c6fd7727324deb1118022da.1506078496.git.aishpant@gmail.com>
References: <cover.1506078496.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506078496.git.aishpant@gmail.com>
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


