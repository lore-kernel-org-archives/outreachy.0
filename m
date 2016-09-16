X-GM-THRID: 6330756111319171072
X-Received: by 10.98.100.3 with SMTP id y3mr8948949pfb.8.1473994034035;
        Thu, 15 Sep 2016 19:47:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.28 with SMTP id 28ls1526559iod.52.gmail; Thu, 15 Sep
 2016 19:47:13 -0700 (PDT)
X-Received: by 10.107.150.133 with SMTP id y127mr403558iod.7.1473994033714;
        Thu, 15 Sep 2016 19:47:13 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 142si3500815pfx.2.2016.09.15.19.47.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 19:47:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so2974344pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 19:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=KtFblojr4AQybqMCHgOrYe1gVrunz9skOTtBWLTBmSc=;
        b=rpEiFUhyMoagrmPDQEkUSWmVVOpuJlEO0itbu56sNF3Hf8SrzgW5vvYHmOe9NWjWRi
         zniCE2frm/o8QV2YUYA+b+oOf6M1Her+jrfPpmztLZ1d0yBIxJOywFDT0FdfARxfimOU
         eIoOxu9XUMzM8BZhmN8likLAw0lMdt34BQQeQV6jNfs9oYtYHHlYqmjRgK+b/PwlkOAl
         wzO4Get5+FFvAo6XX7TJi3Xodcc85FB3b9ugwF4osbplL192QQRWFLfHkp19uYkDPGRI
         E+c0MdEr1hpfNTQKsLgGgbVFW7PYitQTECPSZLhpbukHhPElSghWneM+NVozaQJt0dzL
         oJgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=KtFblojr4AQybqMCHgOrYe1gVrunz9skOTtBWLTBmSc=;
        b=NkVu13OX2cOx70c8t+cyMxV6A5AMz0jmiVKi4FiAgYUz43JlFA6ZSAzNJvMsJaI3ww
         GQmVa3Dx2++VIuL9e3Y/bO8/8MZFRXDWgsmm+WoRS8/P70QBk3PNlolW/X1VzNjcRBAy
         rrzE4KeN9wNVmvXLtDYgSWkL1tU/HzBae5s+AMfeuITr8/VRe4PB/hDB0TCXJs4NaU5q
         QL96cyqaoRCg0yCnZeP6RR+O8hLaH1Y1hs5Bj26MjbKoJ2EB9TGxOdIm7GsBct1/RP2J
         UXqiKtTc5EGDgoYbEvyDjB1ZAFJyLNXLLPc0CNX/JI5xxQB5Y+vDjMTUcudrgLhetQL2
         ANcQ==
X-Gm-Message-State: AE9vXwO1ww43h7rZRpTYNPuNMrSKJpFHSEEzxWL1aQlsd9Zkw+urh60RXgIpmzTzBXDKww==
X-Received: by 10.98.67.139 with SMTP id l11mr3862272pfi.16.1473994033385;
        Thu, 15 Sep 2016 19:47:13 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h67sm19190807pfg.32.2016.09.15.19.47.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 19:47:12 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 6/8] staging: wlan-ng: delete space after a cast
Date: Fri, 16 Sep 2016 08:16:08 +0530
Message-Id: <184bf0cf735c495cb964324f4a49d4dfcb363f2c.1473993585.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473993585.git.gs051095@gmail.com>
References: <cover.1473993585.git.gs051095@gmail.com>
In-Reply-To: <cover.1473993585.git.gs051095@gmail.com>
References: <cover.1473993585.git.gs051095@gmail.com>

delete space after a cast to fix the checkpatch issue, No space is
necessary after a cast.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h |   4 +-
 pace                              | 567 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 569 insertions(+), 2 deletions(-)
 create mode 100644 pace

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 616da07..2ff3805 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -255,7 +255,7 @@ Information RID Lengths:  MAC Information
   include the len or code fields)
 --------------------------------------------------------------------*/
 #define		HFA384x_RID_DBMCOMMSQUALITY_LEN	 \
-	((u16) sizeof(hfa384x_dbmcommsquality_t))
+	((u16)sizeof(hfa384x_dbmcommsquality_t))
 #define		HFA384x_RID_JOINREQUEST_LEN \
 	((u16)sizeof(hfa384x_JoinRequest_data_t))
 
@@ -1378,7 +1378,7 @@ static inline int hfa384x_drvr_getconfig16(hfa384x_t *hw, u16 rid, void *val)
 
 	result = hfa384x_drvr_getconfig(hw, rid, val, sizeof(u16));
 	if (result == 0)
-		*((u16 *) val) = le16_to_cpu(*((u16 *) val));
+		*((u16 *)val) = le16_to_cpu(*((u16 *) val));
 	return result;
 }
 
diff --git a/pace b/pace
new file mode 100644
index 0000000..7cc2eea
--- /dev/null
+++ b/pace
@@ -0,0 +1,567 @@
+CHECK: No space is necessary after a cast
+#267: FILE: drivers/staging/wlan-ng/hfa384x.h:267:
++	((u16) sizeof(hfa384x_dbmcommsquality_t))
+
+CHECK: Avoid CamelCase: <hfa384x_JoinRequest_data_t>
+#269: FILE: drivers/staging/wlan-ng/hfa384x.h:269:
++	((u16)sizeof(hfa384x_JoinRequest_data_t))
+
+CHECK: Avoid CamelCase: <HFA384x_RID_CNFAPBCNint>
+#289: FILE: drivers/staging/wlan-ng/hfa384x.h:289:
++#define		HFA384x_RID_CNFAPBCNint		((u16)0xFC33)
+
+WARNING: do not add new typedefs
+#370: FILE: drivers/staging/wlan-ng/hfa384x.h:370:
++typedef struct hfa384x_bytestr32 {
+
+WARNING: do not add new typedefs
+#382: FILE: drivers/staging/wlan-ng/hfa384x.h:382:
++typedef struct hfa384x_compident {
+
+WARNING: do not add new typedefs
+#389: FILE: drivers/staging/wlan-ng/hfa384x.h:389:
++typedef struct hfa384x_caplevel {
+
+WARNING: do not add new typedefs
+#411: FILE: drivers/staging/wlan-ng/hfa384x.h:411:
++typedef struct hfa384x_HostScanRequest_data {
+
+CHECK: Avoid CamelCase: <hfa384x_HostScanRequest_data>
+#411: FILE: drivers/staging/wlan-ng/hfa384x.h:411:
++typedef struct hfa384x_HostScanRequest_data {
+
+CHECK: Avoid CamelCase: <channelList>
+#412: FILE: drivers/staging/wlan-ng/hfa384x.h:412:
++	u16 channelList;
+
+CHECK: Avoid CamelCase: <txRate>
+#413: FILE: drivers/staging/wlan-ng/hfa384x.h:413:
++	u16 txRate;
+
+CHECK: Avoid CamelCase: <hfa384x_HostScanRequest_data_t>
+#415: FILE: drivers/staging/wlan-ng/hfa384x.h:415:
++} __packed hfa384x_HostScanRequest_data_t;
+
+WARNING: do not add new typedefs
+#418: FILE: drivers/staging/wlan-ng/hfa384x.h:418:
++typedef struct hfa384x_JoinRequest_data {
+
+CHECK: Avoid CamelCase: <hfa384x_JoinRequest_data>
+#418: FILE: drivers/staging/wlan-ng/hfa384x.h:418:
++typedef struct hfa384x_JoinRequest_data {
+
+WARNING: do not add new typedefs
+#424: FILE: drivers/staging/wlan-ng/hfa384x.h:424:
++typedef struct hfa384x_authenticateStation_data {
+
+CHECK: Avoid CamelCase: <hfa384x_authenticateStation_data>
+#424: FILE: drivers/staging/wlan-ng/hfa384x.h:424:
++typedef struct hfa384x_authenticateStation_data {
+
+CHECK: Avoid CamelCase: <hfa384x_authenticateStation_data_t>
+#428: FILE: drivers/staging/wlan-ng/hfa384x.h:428:
++} __packed hfa384x_authenticateStation_data_t;
+
+WARNING: do not add new typedefs
+#431: FILE: drivers/staging/wlan-ng/hfa384x.h:431:
++typedef struct hfa384x_WPAData {
+
+CHECK: Avoid CamelCase: <hfa384x_WPAData>
+#431: FILE: drivers/staging/wlan-ng/hfa384x.h:431:
++typedef struct hfa384x_WPAData {
+
+CHECK: Avoid CamelCase: <hfa384x_WPAData_t>
+#434: FILE: drivers/staging/wlan-ng/hfa384x.h:434:
++} __packed hfa384x_WPAData_t;
+
+WARNING: do not add new typedefs
+#443: FILE: drivers/staging/wlan-ng/hfa384x.h:443:
++typedef struct hfa384x_downloadbuffer {
+
+WARNING: do not add new typedefs
+#457: FILE: drivers/staging/wlan-ng/hfa384x.h:457:
++typedef struct hfa384x_commsquality {
+
+CHECK: Avoid CamelCase: <CQ_currBSS>
+#458: FILE: drivers/staging/wlan-ng/hfa384x.h:458:
++	u16 CQ_currBSS;
+
+CHECK: Avoid CamelCase: <ASL_currBSS>
+#459: FILE: drivers/staging/wlan-ng/hfa384x.h:459:
++	u16 ASL_currBSS;
+
+CHECK: Avoid CamelCase: <ANL_currFC>
+#460: FILE: drivers/staging/wlan-ng/hfa384x.h:460:
++	u16 ANL_currFC;
+
+WARNING: do not add new typedefs
+#464: FILE: drivers/staging/wlan-ng/hfa384x.h:464:
++typedef struct hfa384x_dbmcommsquality {
+
+CHECK: Avoid CamelCase: <CQdbm_currBSS>
+#465: FILE: drivers/staging/wlan-ng/hfa384x.h:465:
++	u16 CQdbm_currBSS;
+
+CHECK: Avoid CamelCase: <ASLdbm_currBSS>
+#466: FILE: drivers/staging/wlan-ng/hfa384x.h:466:
++	u16 ASLdbm_currBSS;
+
+CHECK: Avoid CamelCase: <ANLdbm_currFC>
+#467: FILE: drivers/staging/wlan-ng/hfa384x.h:467:
++	u16 ANLdbm_currFC;
+
+WARNING: do not add new typedefs
+#477: FILE: drivers/staging/wlan-ng/hfa384x.h:477:
++typedef struct hfa384x_tx_frame {
+
+WARNING: line over 80 characters
+#530: FILE: drivers/staging/wlan-ng/hfa384x.h:530:
++#define	HFA384x_TX_SET(v, m, s)		((((u16)(v)) << ((u16)(s))) & ((u16)(m)))
+
+WARNING: do not add new typedefs
+#542: FILE: drivers/staging/wlan-ng/hfa384x.h:542:
++typedef struct hfa384x_rx_frame {
+
+WARNING: do not add new typedefs
+#613: FILE: drivers/staging/wlan-ng/hfa384x.h:613:
++typedef struct hfa384x_CommTallies16 {
+
+CHECK: Avoid CamelCase: <hfa384x_CommTallies16>
+#613: FILE: drivers/staging/wlan-ng/hfa384x.h:613:
++typedef struct hfa384x_CommTallies16 {
+
+CHECK: Avoid CamelCase: <hfa384x_CommTallies16_t>
+#635: FILE: drivers/staging/wlan-ng/hfa384x.h:635:
++} __packed hfa384x_CommTallies16_t;
+
+WARNING: do not add new typedefs
+#637: FILE: drivers/staging/wlan-ng/hfa384x.h:637:
++typedef struct hfa384x_CommTallies32 {
+
+CHECK: Avoid CamelCase: <hfa384x_CommTallies32>
+#637: FILE: drivers/staging/wlan-ng/hfa384x.h:637:
++typedef struct hfa384x_CommTallies32 {
+
+CHECK: Avoid CamelCase: <hfa384x_CommTallies32_t>
+#659: FILE: drivers/staging/wlan-ng/hfa384x.h:659:
++} __packed hfa384x_CommTallies32_t;
+
+WARNING: do not add new typedefs
+#662: FILE: drivers/staging/wlan-ng/hfa384x.h:662:
++typedef struct hfa384x_ScanResultSub {
+
+CHECK: Avoid CamelCase: <hfa384x_ScanResultSub>
+#662: FILE: drivers/staging/wlan-ng/hfa384x.h:662:
++typedef struct hfa384x_ScanResultSub {
+
+CHECK: Avoid CamelCase: <hfa384x_ScanResultSub_t>
+#672: FILE: drivers/staging/wlan-ng/hfa384x.h:672:
++} __packed hfa384x_ScanResultSub_t;
+
+WARNING: do not add new typedefs
+#674: FILE: drivers/staging/wlan-ng/hfa384x.h:674:
++typedef struct hfa384x_ScanResult {
+
+CHECK: Avoid CamelCase: <hfa384x_ScanResult>
+#674: FILE: drivers/staging/wlan-ng/hfa384x.h:674:
++typedef struct hfa384x_ScanResult {
+
+CHECK: Avoid CamelCase: <hfa384x_ScanResult_t>
+#678: FILE: drivers/staging/wlan-ng/hfa384x.h:678:
++} __packed hfa384x_ScanResult_t;
+
+WARNING: do not add new typedefs
+#681: FILE: drivers/staging/wlan-ng/hfa384x.h:681:
++typedef struct hfa384x_ChInfoResultSub {
+
+CHECK: Avoid CamelCase: <hfa384x_ChInfoResultSub>
+#681: FILE: drivers/staging/wlan-ng/hfa384x.h:681:
++typedef struct hfa384x_ChInfoResultSub {
+
+CHECK: Avoid CamelCase: <hfa384x_ChInfoResultSub_t>
+#686: FILE: drivers/staging/wlan-ng/hfa384x.h:686:
++} __packed hfa384x_ChInfoResultSub_t;
+
+WARNING: do not add new typedefs
+#691: FILE: drivers/staging/wlan-ng/hfa384x.h:691:
++typedef struct hfa384x_ChInfoResult {
+
+CHECK: Avoid CamelCase: <hfa384x_ChInfoResult>
+#691: FILE: drivers/staging/wlan-ng/hfa384x.h:691:
++typedef struct hfa384x_ChInfoResult {
+
+CHECK: Avoid CamelCase: <hfa384x_ChInfoResult_t>
+#694: FILE: drivers/staging/wlan-ng/hfa384x.h:694:
++} __packed hfa384x_ChInfoResult_t;
+
+WARNING: do not add new typedefs
+#697: FILE: drivers/staging/wlan-ng/hfa384x.h:697:
++typedef struct hfa384x_HScanResultSub {
+
+CHECK: Avoid CamelCase: <hfa384x_HScanResultSub>
+#697: FILE: drivers/staging/wlan-ng/hfa384x.h:697:
++typedef struct hfa384x_HScanResultSub {
+
+CHECK: Avoid CamelCase: <hfa384x_HScanResultSub_t>
+#708: FILE: drivers/staging/wlan-ng/hfa384x.h:708:
++} __packed hfa384x_HScanResultSub_t;
+
+WARNING: do not add new typedefs
+#710: FILE: drivers/staging/wlan-ng/hfa384x.h:710:
++typedef struct hfa384x_HScanResult {
+
+CHECK: Avoid CamelCase: <hfa384x_HScanResult>
+#710: FILE: drivers/staging/wlan-ng/hfa384x.h:710:
++typedef struct hfa384x_HScanResult {
+
+CHECK: Avoid CamelCase: <hfa384x_HScanResult_t>
+#714: FILE: drivers/staging/wlan-ng/hfa384x.h:714:
++} __packed hfa384x_HScanResult_t;
+
+WARNING: do not add new typedefs
+#726: FILE: drivers/staging/wlan-ng/hfa384x.h:726:
++typedef struct hfa384x_LinkStatus {
+
+CHECK: Avoid CamelCase: <hfa384x_LinkStatus>
+#726: FILE: drivers/staging/wlan-ng/hfa384x.h:726:
++typedef struct hfa384x_LinkStatus {
+
+CHECK: Avoid CamelCase: <hfa384x_LinkStatus_t>
+#728: FILE: drivers/staging/wlan-ng/hfa384x.h:728:
++} __packed hfa384x_LinkStatus_t;
+
+WARNING: do not add new typedefs
+#736: FILE: drivers/staging/wlan-ng/hfa384x.h:736:
++typedef struct hfa384x_AssocStatus {
+
+CHECK: Avoid CamelCase: <hfa384x_AssocStatus>
+#736: FILE: drivers/staging/wlan-ng/hfa384x.h:736:
++typedef struct hfa384x_AssocStatus {
+
+CHECK: Avoid CamelCase: <hfa384x_AssocStatus_t>
+#743: FILE: drivers/staging/wlan-ng/hfa384x.h:743:
++} __packed hfa384x_AssocStatus_t;
+
+WARNING: do not add new typedefs
+#747: FILE: drivers/staging/wlan-ng/hfa384x.h:747:
++typedef struct hfa384x_AuthRequest {
+
+CHECK: Avoid CamelCase: <hfa384x_AuthRequest>
+#747: FILE: drivers/staging/wlan-ng/hfa384x.h:747:
++typedef struct hfa384x_AuthRequest {
+
+CHECK: Avoid CamelCase: <hfa384x_AuthReq_t>
+#750: FILE: drivers/staging/wlan-ng/hfa384x.h:750:
++} __packed hfa384x_AuthReq_t;
+
+WARNING: do not add new typedefs
+#754: FILE: drivers/staging/wlan-ng/hfa384x.h:754:
++typedef struct hfa384x_PSUserCount {
+
+CHECK: Avoid CamelCase: <hfa384x_PSUserCount>
+#754: FILE: drivers/staging/wlan-ng/hfa384x.h:754:
++typedef struct hfa384x_PSUserCount {
+
+CHECK: Avoid CamelCase: <hfa384x_PSUserCount_t>
+#756: FILE: drivers/staging/wlan-ng/hfa384x.h:756:
++} __packed hfa384x_PSUserCount_t;
+
+WARNING: do not add new typedefs
+#758: FILE: drivers/staging/wlan-ng/hfa384x.h:758:
++typedef struct hfa384x_KeyIDChanged {
+
+CHECK: Avoid CamelCase: <hfa384x_KeyIDChanged>
+#758: FILE: drivers/staging/wlan-ng/hfa384x.h:758:
++typedef struct hfa384x_KeyIDChanged {
+
+CHECK: Avoid CamelCase: <hfa384x_KeyIDChanged_t>
+#761: FILE: drivers/staging/wlan-ng/hfa384x.h:761:
++} __packed hfa384x_KeyIDChanged_t;
+
+WARNING: do not add new typedefs
+#764: FILE: drivers/staging/wlan-ng/hfa384x.h:764:
++typedef union hfa384x_infodata {
+
+WARNING: do not add new typedefs
+#777: FILE: drivers/staging/wlan-ng/hfa384x.h:777:
++typedef struct hfa384x_InfFrame {
+
+CHECK: Avoid CamelCase: <hfa384x_InfFrame>
+#777: FILE: drivers/staging/wlan-ng/hfa384x.h:777:
++typedef struct hfa384x_InfFrame {
+
+CHECK: Avoid CamelCase: <hfa384x_InfFrame_t>
+#781: FILE: drivers/staging/wlan-ng/hfa384x.h:781:
++} __packed hfa384x_InfFrame_t;
+
+WARNING: do not add new typedefs
+#811: FILE: drivers/staging/wlan-ng/hfa384x.h:811:
++typedef struct hfa384x_usb_txfrm {
+
+WARNING: do not add new typedefs
+#816: FILE: drivers/staging/wlan-ng/hfa384x.h:816:
++typedef struct hfa384x_usb_cmdreq {
+
+WARNING: do not add new typedefs
+#825: FILE: drivers/staging/wlan-ng/hfa384x.h:825:
++typedef struct hfa384x_usb_wridreq {
+
+WARNING: do not add new typedefs
+#832: FILE: drivers/staging/wlan-ng/hfa384x.h:832:
++typedef struct hfa384x_usb_rridreq {
+
+WARNING: do not add new typedefs
+#839: FILE: drivers/staging/wlan-ng/hfa384x.h:839:
++typedef struct hfa384x_usb_wmemreq {
+
+WARNING: do not add new typedefs
+#847: FILE: drivers/staging/wlan-ng/hfa384x.h:847:
++typedef struct hfa384x_usb_rmemreq {
+
+WARNING: do not add new typedefs
+#858: FILE: drivers/staging/wlan-ng/hfa384x.h:858:
++typedef struct hfa384x_usb_rxfrm {
+
+WARNING: do not add new typedefs
+#863: FILE: drivers/staging/wlan-ng/hfa384x.h:863:
++typedef struct hfa384x_usb_infofrm {
+
+WARNING: do not add new typedefs
+#868: FILE: drivers/staging/wlan-ng/hfa384x.h:868:
++typedef struct hfa384x_usb_statusresp {
+
+WARNING: do not add new typedefs
+#876: FILE: drivers/staging/wlan-ng/hfa384x.h:876:
++typedef hfa384x_usb_cmdresp_t hfa384x_usb_wridresp_t;
+
+WARNING: do not add new typedefs
+#878: FILE: drivers/staging/wlan-ng/hfa384x.h:878:
++typedef struct hfa384x_usb_rridresp {
+
+WARNING: do not add new typedefs
+#885: FILE: drivers/staging/wlan-ng/hfa384x.h:885:
++typedef hfa384x_usb_cmdresp_t hfa384x_usb_wmemresp_t;
+
+WARNING: do not add new typedefs
+#887: FILE: drivers/staging/wlan-ng/hfa384x.h:887:
++typedef struct hfa384x_usb_rmemresp {
+
+WARNING: do not add new typedefs
+#893: FILE: drivers/staging/wlan-ng/hfa384x.h:893:
++typedef struct hfa384x_usb_bufavail {
+
+WARNING: do not add new typedefs
+#898: FILE: drivers/staging/wlan-ng/hfa384x.h:898:
++typedef struct hfa384x_usb_error {
+
+WARNING: do not add new typedefs
+#906: FILE: drivers/staging/wlan-ng/hfa384x.h:906:
++typedef union hfa384x_usbout {
+
+WARNING: do not add new typedefs
+#916: FILE: drivers/staging/wlan-ng/hfa384x.h:916:
++typedef union hfa384x_usbin {
+
+WARNING: do not add new typedefs
+#936: FILE: drivers/staging/wlan-ng/hfa384x.h:936:
++typedef struct hfa384x_pdr_pcb_partnum {
+
+WARNING: do not add new typedefs
+#940: FILE: drivers/staging/wlan-ng/hfa384x.h:940:
++typedef struct hfa384x_pdr_pcb_tracenum {
+
+WARNING: do not add new typedefs
+#944: FILE: drivers/staging/wlan-ng/hfa384x.h:944:
++typedef struct hfa384x_pdr_nic_serial {
+
+WARNING: do not add new typedefs
+#948: FILE: drivers/staging/wlan-ng/hfa384x.h:948:
++typedef struct hfa384x_pdr_mkk_measurements {
+
+WARNING: do not add new typedefs
+#966: FILE: drivers/staging/wlan-ng/hfa384x.h:966:
++typedef struct hfa384x_pdr_nic_ramsize {
+
+WARNING: do not add new typedefs
+#970: FILE: drivers/staging/wlan-ng/hfa384x.h:970:
++typedef struct hfa384x_pdr_mfisuprange {
+
+WARNING: do not add new typedefs
+#977: FILE: drivers/staging/wlan-ng/hfa384x.h:977:
++typedef struct hfa384x_pdr_cfisuprange {
+
+WARNING: do not add new typedefs
+#984: FILE: drivers/staging/wlan-ng/hfa384x.h:984:
++typedef struct hfa384x_pdr_nicid {
+
+WARNING: do not add new typedefs
+#991: FILE: drivers/staging/wlan-ng/hfa384x.h:991:
++typedef struct hfa384x_pdr_refdac_measurements {
+
+WARNING: do not add new typedefs
+#995: FILE: drivers/staging/wlan-ng/hfa384x.h:995:
++typedef struct hfa384x_pdr_vgdac_measurements {
+
+WARNING: do not add new typedefs
+#999: FILE: drivers/staging/wlan-ng/hfa384x.h:999:
++typedef struct hfa384x_pdr_level_comp_measurements {
+
+WARNING: do not add new typedefs
+#1003: FILE: drivers/staging/wlan-ng/hfa384x.h:1003:
++typedef struct hfa384x_pdr_mac_address {
+
+WARNING: do not add new typedefs
+#1007: FILE: drivers/staging/wlan-ng/hfa384x.h:1007:
++typedef struct hfa384x_pdr_mkk_callname {
+
+WARNING: do not add new typedefs
+#1011: FILE: drivers/staging/wlan-ng/hfa384x.h:1011:
++typedef struct hfa384x_pdr_regdomain {
+
+WARNING: do not add new typedefs
+#1016: FILE: drivers/staging/wlan-ng/hfa384x.h:1016:
++typedef struct hfa384x_pdr_allowed_channel {
+
+WARNING: do not add new typedefs
+#1020: FILE: drivers/staging/wlan-ng/hfa384x.h:1020:
++typedef struct hfa384x_pdr_default_channel {
+
+WARNING: do not add new typedefs
+#1024: FILE: drivers/staging/wlan-ng/hfa384x.h:1024:
++typedef struct hfa384x_pdr_privacy_option {
+
+WARNING: do not add new typedefs
+#1028: FILE: drivers/staging/wlan-ng/hfa384x.h:1028:
++typedef struct hfa384x_pdr_temptype {
+
+WARNING: do not add new typedefs
+#1032: FILE: drivers/staging/wlan-ng/hfa384x.h:1032:
++typedef struct hfa384x_pdr_refdac_setup {
+
+WARNING: do not add new typedefs
+#1036: FILE: drivers/staging/wlan-ng/hfa384x.h:1036:
++typedef struct hfa384x_pdr_vgdac_setup {
+
+WARNING: do not add new typedefs
+#1040: FILE: drivers/staging/wlan-ng/hfa384x.h:1040:
++typedef struct hfa384x_pdr_level_comp_setup {
+
+WARNING: do not add new typedefs
+#1044: FILE: drivers/staging/wlan-ng/hfa384x.h:1044:
++typedef struct hfa384x_pdr_trimdac_setup {
+
+WARNING: do not add new typedefs
+#1049: FILE: drivers/staging/wlan-ng/hfa384x.h:1049:
++typedef struct hfa384x_pdr_ifr_setting {
+
+WARNING: do not add new typedefs
+#1053: FILE: drivers/staging/wlan-ng/hfa384x.h:1053:
++typedef struct hfa384x_pdr_rfr_setting {
+
+WARNING: do not add new typedefs
+#1057: FILE: drivers/staging/wlan-ng/hfa384x.h:1057:
++typedef struct hfa384x_pdr_hfa3861_baseline {
+
+WARNING: do not add new typedefs
+#1061: FILE: drivers/staging/wlan-ng/hfa384x.h:1061:
++typedef struct hfa384x_pdr_hfa3861_shadow {
+
+WARNING: do not add new typedefs
+#1065: FILE: drivers/staging/wlan-ng/hfa384x.h:1065:
++typedef struct hfa384x_pdr_hfa3861_ifrf {
+
+WARNING: do not add new typedefs
+#1069: FILE: drivers/staging/wlan-ng/hfa384x.h:1069:
++typedef struct hfa384x_pdr_hfa3861_chcalsp {
+
+WARNING: do not add new typedefs
+#1073: FILE: drivers/staging/wlan-ng/hfa384x.h:1073:
++typedef struct hfa384x_pdr_hfa3861_chcali {
+
+WARNING: do not add new typedefs
+#1077: FILE: drivers/staging/wlan-ng/hfa384x.h:1077:
++typedef struct hfa384x_pdr_hfa3861_nic_config {
+
+WARNING: do not add new typedefs
+#1081: FILE: drivers/staging/wlan-ng/hfa384x.h:1081:
++typedef struct hfa384x_pdr_hfo_delay {
+
+WARNING: do not add new typedefs
+#1085: FILE: drivers/staging/wlan-ng/hfa384x.h:1085:
++typedef struct hfa384x_pdr_hfa3861_manf_testsp {
+
+WARNING: do not add new typedefs
+#1089: FILE: drivers/staging/wlan-ng/hfa384x.h:1089:
++typedef struct hfa384x_pdr_hfa3861_manf_testi {
+
+WARNING: do not add new typedefs
+#1093: FILE: drivers/staging/wlan-ng/hfa384x.h:1093:
++typedef struct hfa384x_end_of_pda {
+
+WARNING: do not add new typedefs
+#1097: FILE: drivers/staging/wlan-ng/hfa384x.h:1097:
++typedef struct hfa384x_pdrec {
+
+WARNING: do not add new typedefs
+#1145: FILE: drivers/staging/wlan-ng/hfa384x.h:1145:
++typedef struct hfa384x_statusresult {
+
+WARNING: do not add new typedefs
+#1159: FILE: drivers/staging/wlan-ng/hfa384x.h:1159:
++typedef struct hfa384x_rridresult {
+
+CHECK: Please use a blank line after function/struct/union/enum declarations
+#1176: FILE: drivers/staging/wlan-ng/hfa384x.h:1176:
++};
++typedef enum ctlx_state CTLX_STATE;
+
+WARNING: do not add new typedefs
+#1176: FILE: drivers/staging/wlan-ng/hfa384x.h:1176:
++typedef enum ctlx_state CTLX_STATE;
+
+WARNING: do not add new typedefs
+#1186: FILE: drivers/staging/wlan-ng/hfa384x.h:1186:
++typedef struct hfa384x_usbctlx {
+
+WARNING: Missing a blank line after declarations
+#1196: FILE: drivers/staging/wlan-ng/hfa384x.h:1196:
++	struct completion done;
++	volatile int reapable;	/* Food for the reaper task */
+
+WARNING: Use of volatile is usually wrong: see Documentation/volatile-considered-harmful.txt
+#1196: FILE: drivers/staging/wlan-ng/hfa384x.h:1196:
++	volatile int reapable;	/* Food for the reaper task */
+
+WARNING: do not add new typedefs
+#1205: FILE: drivers/staging/wlan-ng/hfa384x.h:1205:
++typedef struct hfa384x_usbctlxq {
+
+CHECK: spinlock_t definition without comment
+#1206: FILE: drivers/staging/wlan-ng/hfa384x.h:1206:
++	spinlock_t lock;
+
+WARNING: do not add new typedefs
+#1213: FILE: drivers/staging/wlan-ng/hfa384x.h:1213:
++typedef struct hfa484x_metacmd {
+
+WARNING: do not add new typedefs
+#1248: FILE: drivers/staging/wlan-ng/hfa384x.h:1248:
++typedef struct hfa384x {
+
+WARNING: line over 80 characters
+#1379: FILE: drivers/staging/wlan-ng/hfa384x.h:1379:
++	struct prism2sta_authlist authlist;	/* Authenticated station list. */
+
+CHECK: No space is necessary after a cast
+#1409: FILE: drivers/staging/wlan-ng/hfa384x.h:1409:
++		*((u16 *) val) = le16_to_cpu(*((u16 *) val));
+
+total: 0 errors, 90 warnings, 49 checks, 1454 lines checked
+
+NOTE: For some of the reported defects, checkpatch may be able to
+      mechanically convert to the typical style using --fix or --fix-inplace.
+
+drivers/staging/wlan-ng/hfa384x.h has style problems, please review.
+
+NOTE: If any of the errors are false positives, please report
+      them to the maintainer, see CHECKPATCH in MAINTAINERS.
-- 
2.9.2


