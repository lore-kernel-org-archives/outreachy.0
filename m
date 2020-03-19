X-GM-THRID: 6805867897863274496
X-Received: by 2002:a2e:b16c:: with SMTP id a12mr1815623ljm.83.1584614629737;
        Thu, 19 Mar 2020 03:43:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:95c8:: with SMTP id y8ls427745ljh.2.gmail; Thu, 19 Mar
 2020 03:43:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsD2A5abRr94NrP4ZA30HhTdlmEVUFJxC26Vr8DMU2r87tMvRHx8LmyflIDIJk+SgpLNMyT
X-Received: by 2002:a2e:2415:: with SMTP id k21mr1813851ljk.9.1584614628473;
        Thu, 19 Mar 2020 03:43:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584614628; cv=none;
        d=google.com; s=arc-20160816;
        b=vsI5VMk0Av0Ln4Q19Aw5lsDvneUSErvjSQDwNsQnB6pEQQN1eqdMpPdtwNPavi08hf
         l43NIn1Etqz0jLujL9lsB9ycgyIKlWeEVam38GJjKl+C8XIkG8P0Xo7LTYXGLGitNH97
         ztPEaswgdIxjZ3Fw+UYzSX3s9YYYDu59oVpC8BQRzw9V4e/NBpRMuW5nDBy3YoDBQhVe
         avxBEE7iD12S0aPZK3JxaTPDc1exxqa+SE/j8J0dvsguGDY9MSdADksAZTRpajAyvHZR
         Oi8TTREECSd6icAnKhTECfdFomt83UQqFq8OCu6sm3KcbT/g7yO9XQsa6p8DUu4QwbpK
         zWaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=n/imnfP3y1F4uWb055X9KU4vlEkRawz6EwSNHrT+Oic=;
        b=yStgigv+S90bDAi6OPn144OSdYho83jISY8m5+wYEPFX/hs8sFUPflDvMUjfk0b987
         mrMb8z9hAz79VKscD8+4AljdVUHFPoBxs2CyZSa5T++Ns+7nYzx9XbHsogzAZZTe1JuP
         Hj75EcfSAbwDsDxqf+P+O84UPcoHm4uC6QXLA5C8h8Dgeke6KibGFoGiAPLqDUx6+n5U
         pgFkEUfscupghPPFxvBdD+gQynVo945n609E4/Qi/+SzqHE9FqTSurWX2ESyWBcF8wyG
         SUZn+2fWEAjUbVg/dT4MArmgk3ApcXXCmMaoDgGLvOYa43tb2cDDSC0WP4kuhQfsT7qt
         /Q0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id a21si117737lff.3.2020.03.19.03.43.48
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 03:43:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27268 invoked from network); 19 Mar 2020 10:43:46 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 10:43:46 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 5/7] staging: rtl8723bs: core: Correct typos in comments
Date: Thu, 19 Mar 2020 16:12:55 +0530
Message-Id: <22585cb5fa717b08f2b93b8538c93260213dbade.1584519269.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584519269.git.vkor@vkten.in>
References: <cover.1584519269.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct typos in comments.
Misspellings found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v2:
 - Remove word "Fix" from subject line
 - Change "C comments" to "comments" in subject line
 - Change "C comments" to "comments" in body
---
 drivers/staging/rtl8723bs/core/rtw_recv.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 7fa8c84cf5f4..5245098b9ecf 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -1179,7 +1179,7 @@ sint validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_
 
 					/* DBG_871X("after handling ps-poll, tim =%x\n", pstapriv->tim_bitmap); */
 
-					/* upate BCN for TIM IE */
+					/* update BCN for TIM IE */
 					/* update_BCNTIM(padapter); */
 					update_beacon(padapter, _TIM_IE_, NULL, true);
 				}
@@ -1205,7 +1205,7 @@ sint validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_
 
 					pstapriv->tim_bitmap &= ~BIT(psta->aid);
 
-					/* upate BCN for TIM IE */
+					/* update BCN for TIM IE */
 					/* update_BCNTIM(padapter); */
 					update_beacon(padapter, _TIM_IE_, NULL, true);
 				}
@@ -1953,7 +1953,7 @@ static int amsdu_to_msdu(struct adapter *padapter, union recv_frame *prframe)
 	for (i = 0; i < nr_subframes; i++) {
 		sub_pkt = subframes[i];
 
-		/* Indicat the packets to upper layer */
+		/* Indicate the packets to upper layer */
 		if (sub_pkt) {
 			rtw_os_recv_indicate_pkt(padapter, sub_pkt, &prframe->u.hdr.attrib);
 		}
@@ -2606,14 +2606,14 @@ static void rtw_signal_stat_timer_hdl(struct timer_list *t)
 		if (recvpriv->signal_strength_data.update_req == 0) {/*  update_req is clear, means we got rx */
 			avg_signal_strength = recvpriv->signal_strength_data.avg_val;
 			num_signal_strength = recvpriv->signal_strength_data.total_num;
-			/*  after avg_vals are accquired, we can re-stat the signal values */
+			/*  after avg_vals are acquired, we can re-stat the signal values */
 			recvpriv->signal_strength_data.update_req = 1;
 		}
 
 		if (recvpriv->signal_qual_data.update_req == 0) {/*  update_req is clear, means we got rx */
 			avg_signal_qual = recvpriv->signal_qual_data.avg_val;
 			num_signal_qual = recvpriv->signal_qual_data.total_num;
-			/*  after avg_vals are accquired, we can re-stat the signal values */
+			/*  after avg_vals are acquired, we can re-stat the signal values */
 			recvpriv->signal_qual_data.update_req = 1;
 		}
 
-- 
2.20.1


