X-GM-THRID: 6205609650776178688
X-Received: by 10.66.249.100 with SMTP id yt4mr4379720pac.42.1444856482034;
        Wed, 14 Oct 2015 14:01:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.8 with SMTP id d8ls409949qga.59.gmail; Wed, 14 Oct 2015
 14:01:21 -0700 (PDT)
X-Received: by 10.129.74.198 with SMTP id x189mr4612393ywa.53.1444856481470;
        Wed, 14 Oct 2015 14:01:21 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id ce6si521471pad.0.2015.10.14.14.01.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 14:01:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id ws5so362986pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 14:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=jBrovZurGq7m3AEJzU0kp+Olb2H6156aWUXAXj75YoE=;
        b=r4lGLM8InuqQvJm6NeMU8SsqWwXzWxEzybVgG4R/WnjeytnwX/CroCu4dCoeYYb8nP
         qZAHgtlrjENJfrZ4LCKZEkuoUbHiMLc7U/fRmUJ4okWCQLIqrmJTQ4QTqpKzXyJFvyNk
         5q2u9VY4XXWUGaIlvmuO47EElQKC40mgt3cWkBQeBAT2w8F5IvaQU4VGMYl2grxS3Ie4
         GbB++7CBMrp4nv8iwnaNHVpmEVBmN6VIoYpqDuI/ZsMoO8CJQr1a3foN40iqprqqDUXV
         TFZYzcwdCT37Ou9UkKJOcmCmTHEJn4zAHCU5CMgJapHuQB1lTBpYJUzkc4hGmzfdpYZu
         ETxA==
X-Received: by 10.66.121.163 with SMTP id ll3mr5781572pab.69.1444856481302;
        Wed, 14 Oct 2015 14:01:21 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id of1sm11328241pbc.11.2015.10.14.14.01.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 14:01:20 -0700 (PDT)
Date: Thu, 15 Oct 2015 02:31:11 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/5] staging: rtl8712: rtl871x_mp: Remove useless
 initialisation
Message-ID: <654a2272bc6169ee93a7c08a62bc855969d878ba.1444855933.git.amitoj1606@gmail.com>
References: <cover.1444855933.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444855933.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
index 26201ea..00b80f7 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.c
+++ b/drivers/staging/rtl8712/rtl871x_mp.c
@@ -295,7 +295,7 @@ void r8712_SetChannel(struct _adapter *pAdapter)
 
 static void SetCCKTxPower(struct _adapter *pAdapter, u8 TxPower)
 {
-	u16 TxAGC = 0;
+	u16 TxAGC;
 
 	TxAGC = TxPower;
 	set_bb_reg(pAdapter, rTxAGC_CCK_Mcs32, bTxAGCRateCCK, TxAGC);
@@ -726,7 +726,7 @@ static u32 GetPhyRxPktCounts(struct _adapter *pAdapter, u32 selbit)
 
 u32 r8712_GetPhyRxPktReceived(struct _adapter *pAdapter)
 {
-	u32 OFDM_cnt = 0, CCK_cnt = 0, HT_cnt = 0;
+	u32 OFDM_cnt, CCK_cnt, HT_cnt;
 
 	OFDM_cnt = GetPhyRxPktCounts(pAdapter, OFDM_MPDU_OK_BIT);
 	CCK_cnt = GetPhyRxPktCounts(pAdapter, CCK_MPDU_OK_BIT);
@@ -736,7 +736,7 @@ u32 r8712_GetPhyRxPktReceived(struct _adapter *pAdapter)
 
 u32 r8712_GetPhyRxPktCRC32Error(struct _adapter *pAdapter)
 {
-	u32 OFDM_cnt = 0, CCK_cnt = 0, HT_cnt = 0;
+	u32 OFDM_cnt, CCK_cnt, HT_cnt;
 
 	OFDM_cnt = GetPhyRxPktCounts(pAdapter, OFDM_MPDU_FAIL_BIT);
 	CCK_cnt = GetPhyRxPktCounts(pAdapter, CCK_MPDU_FAIL_BIT);
-- 
1.9.1


