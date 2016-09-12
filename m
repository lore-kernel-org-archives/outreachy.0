X-GM-THRID: 6329560500673708032
X-Received: by 10.66.231.104 with SMTP id tf8mr17818804pac.15.1473715645989;
        Mon, 12 Sep 2016 14:27:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.65.36 with SMTP id x36ls1527626ita.15.canary; Mon, 12 Sep
 2016 14:27:24 -0700 (PDT)
X-Received: by 10.98.27.70 with SMTP id b67mr8373976pfb.1.1473715644168;
        Mon, 12 Sep 2016 14:27:24 -0700 (PDT)
Return-Path: <shaily15297@yahoo.com>
Received: from nm48-vm2.bullet.mail.gq1.yahoo.com (nm48-vm2.bullet.mail.gq1.yahoo.com. [67.195.87.190])
        by gmr-mx.google.com with ESMTPS id y124si2491763pfg.1.2016.09.12.14.27.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 14:27:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of shaily15297@yahoo.com designates 67.195.87.190 as permitted sender) client-ip=67.195.87.190;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com;
       spf=pass (google.com: domain of shaily15297@yahoo.com designates 67.195.87.190 as permitted sender) smtp.mailfrom=shaily15297@yahoo.com;
       dmarc=pass (p=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1473715643; bh=koIURS/Yk9I9JXSkXjSVJMnkM7e1aBRIYC61CANHTZ4=; h=From:To:Cc:Subject:Date:From:Subject; b=sH/pVJxX3t+7LHlYrmhhlKMgsMAFh4k3FKlzvnP7kjJYOnvMBAxmEbVDg5KH/denJDc2MFjVk7xrykuBGRUegACZCIRcpFCizwq04JI9YvOduWTeLHsXW5rBSIq01qjUZeeZlLvGPZ0A7H/ozQ6w9vfh75bA+kYBbaiPuGu5An7Hx0t4ECXE56woZFUB9zNqJuf6OabTjyLan/DkkV/ASy2zZPmCvxAOTDKdRw6c7EraPr6ukYz5eiJqhXlBz2ayhBv4lAQ0qZjdyzM1GozP9cbYf3Qy7yExe0H0Q/Pp1u8JN65zzLCZ4gOhShAQLshgihtY8E6uusav/eAM27Ydpw==
Received: from [127.0.0.1] by nm48.bullet.mail.gq1.yahoo.com with NNFMP; 12 Sep 2016 21:27:23 -0000
Received: from [98.137.12.188] by nm48.bullet.mail.gq1.yahoo.com with NNFMP; 12 Sep 2016 21:24:34 -0000
Received: from [208.71.42.202] by tm9.bullet.mail.gq1.yahoo.com with NNFMP; 12 Sep 2016 21:24:34 -0000
Received: from [127.0.0.1] by smtp213.mail.gq1.yahoo.com with NNFMP; 12 Sep 2016 21:24:34 -0000
X-Yahoo-Newman-Id: 85252.42757.bm@smtp213.mail.gq1.yahoo.com
X-Yahoo-Newman-Property: ymail-4
X-YMail-OSG: GPXSQCAVM1kxF0Vkl5wjjtiaH5T85fcorvuzRTESHRr5it_
 0TBZHC76zfhoqq4b3gsCc2tAg9Fg3wRF7kaibDFOq7JeU3wJXXnH1reZIQt8
 .nonkWElu07iSI.QWNS4JAgzFxpAntWin4LcZIz9ZmM3YE_220XBtULlMioT
 jAfthfFEUggXVQe6Npr9oWLx3A93JjY0_3gVcx7vGrvYadaTaDkkuJCOaRcG
 XGN7Q.YZMp_8rNtuTmae7M74a3mZiv_orRzH_uR2CS1W8yQFiZHRWN1V2_Ad
 vh32qIAXMdqAlnvm_8AhObvgL9P2pRoRHuV2KH4NX8_6ovTL_fYKkz4ZCqx_
 JNQ6h8xzJ3UrbTyFBpQLvj2Pox6viJyOZYUHaw0pf3AjdVlz49f5jxavZJTT
 W4yctoxIQGn2Y0AJvYlEUnvkxQ60gq87VCbAcGXG2OaxnJH2H3KnK2pYq9lf
 fA5iLTrWpwIvEbpe7ryy86um0yY.umfS2QMt9d.2wkIH1WQhNTuZ_qIczd_K
 GoURUC5DdkXtwocDCUk3zOO7E9JkHEhVcUFkfDLCptR.IX3rSKoX550THzyz
 CCj4Lo1Bop.eGemjpkSj.TSgShDnJagW.lrYhog--
X-Yahoo-SMTP: XlbbucGswBDP_CADncIk2ZBRLyRPW8tbtgbDhWQ45oUGSNiads2htjKJJBAsMr1gxxaKZRk-
From: Shaily Sangwan <shaily15297@yahoo.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shaily Sangwan <shaily15297@yahoo.com>
Subject: [PATCH] staging: rtl8712: fix block comments
Date: Tue, 13 Sep 2016 02:54:14 +0530
Message-Id: <1473715454-14385-1-git-send-email-shaily15297@yahoo.com>
X-Mailer: git-send-email 2.7.4

This patch fixes the following checkpatch.pl warning:
Block comments use * on subsequent lines

Signed-off-by: Shaily Sangwan <shaily15297@yahoo.com>
---
 drivers/staging/rtl8712/rtl8712_recv.h |  14 +-
 drivers/staging/rtl8712/rtl871x_cmd.h  | 264 ++++++++++++++++-----------------
 2 files changed, 139 insertions(+), 139 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.h b/drivers/staging/rtl8712/rtl8712_recv.h
index 96ca3e2..0b0c273 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.h
+++ b/drivers/staging/rtl8712/rtl8712_recv.h
@@ -116,13 +116,13 @@ struct recv_buf {
 };
 
 /*
-	head  ----->
-		data  ----->
-			payload
-		tail  ----->
-	end   ----->
-	len = (unsigned int )(tail - data);
-*/
+ *	head  ----->
+ *		data  ----->
+ *			payload
+ *		tail  ----->
+ *	end   ----->
+ *	len = (unsigned int )(tail - data);
+ */
 struct recv_frame_hdr {
 	struct list_head list;
 	_pkt	*pkt;
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index a2cee36..3284dcf 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -217,15 +217,15 @@ struct SetMacAddr_param {
 };
 
 /*
-Caller Ad-Hoc/AP
-
-Command -Rsp(AID == CAMID) mode
-
-This is to force fw to add an sta_data entry per driver's request.
-
-FW will write an cam entry associated with it.
-
-*/
+ *	Caller Ad-Hoc/AP
+ *
+ *	Command -Rsp(AID == CAMID) mode
+ *
+ *	This is to force fw to add an sta_data entry per driver's request.
+ *
+ *	FW will write an cam entry associated with it.
+ *
+ */
 struct set_assocsta_parm {
 	u8	addr[ETH_ALEN];
 };
@@ -236,27 +236,27 @@ struct set_assocsta_rsp {
 };
 
 /*
-	Caller Ad-Hoc/AP
-
-	Command mode
-
-	This is to force fw to del an sta_data entry per driver's request
-
-	FW will invalidate the cam entry associated with it.
-
-*/
+ *	Caller Ad-Hoc/AP
+ *
+ *	Command mode
+ *
+ *	This is to force fw to del an sta_data entry per driver's request
+ *
+ *	FW will invalidate the cam entry associated with it.
+ *
+ */
 struct del_assocsta_parm {
 	u8	addr[ETH_ALEN];
 };
 
 /*
-Caller Mode: AP/Ad-HoC(M)
-
-Notes: To notify fw that given staid has changed its power state
-
-Command Mode
-
-*/
+ *	Caller Mode: AP/Ad-HoC(M)
+ *
+ *	Notes: To notify fw that given staid has changed its power state
+ *
+ *	Command Mode
+ *
+ */
 struct setstapwrstate_parm {
 	u8	staid;
 	u8	status;
@@ -264,25 +264,25 @@ struct setstapwrstate_parm {
 };
 
 /*
-Caller Mode: Any
-
-Notes: To setup the basic rate of RTL8711
-
-Command Mode
-
-*/
+ *	Caller Mode: Any
+ *
+ *	Notes: To setup the basic rate of RTL8711
+ *
+ *	Command Mode
+ *
+ */
 struct	setbasicrate_parm {
 	u8	basicrates[NumRates];
 };
 
 /*
-Caller Mode: Any
-
-Notes: To read the current basic rate
-
-Command-Rsp Mode
-
-*/
+ *	Caller Mode: Any
+ *
+ *	Notes: To read the current basic rate
+ *
+ *	Command-Rsp Mode
+ *
+ */
 struct getbasicrate_parm {
 	u32 rsvd;
 };
@@ -292,13 +292,13 @@ struct getbasicrate_rsp {
 };
 
 /*
-Caller Mode: Any
-
-Notes: To setup the data rate of RTL8711
-
-Command Mode
-
-*/
+ *	Caller Mode: Any
+ *
+ *	Notes: To setup the data rate of RTL8711
+ *
+ *	Command Mode
+ *
+ */
 struct setdatarate_parm {
 	u8	mac_id;
 	u8	datarates[NumRates];
@@ -334,13 +334,13 @@ struct SetChannelPlan_param {
 };
 
 /*
-Caller Mode: Any
-
-Notes: To read the current data rate
-
-Command-Rsp Mode
-
-*/
+ *	Caller Mode: Any
+ *
+ *	Notes: To read the current data rate
+ *
+ *	Command-Rsp Mode
+ *
+ */
 struct getdatarate_parm {
 	u32 rsvd;
 
@@ -351,36 +351,36 @@ struct getdatarate_rsp {
 
 
 /*
-Caller Mode: Any
-AP: AP can use the info for the contents of beacon frame
-Infra: STA can use the info when sitesurveying
-Ad-HoC(M): Like AP
-Ad-HoC(C): Like STA
-
-
-Notes: To set the phy capability of the NIC
-
-Command Mode
-
-*/
+ *	Caller Mode: Any
+ *	AP: AP can use the info for the contents of beacon frame
+ *	Infra: STA can use the info when sitesurveying
+ *	Ad-HoC(M): Like AP
+ *	Ad-HoC(C): Like STA
+ *
+ *
+ *	Notes: To set the phy capability of the NIC
+ *
+ *	Command Mode
+ *
+ */
 
 /*
-Caller Mode: Any
-
-Notes: To set the channel/modem/band
-This command will be used when channel/modem/band is changed.
-
-Command Mode
-
-*/
+ *	Caller Mode: Any
+ *
+ *	Notes: To set the channel/modem/band
+ *	This command will be used when channel/modem/band is changed.
+ *
+ *	Command Mode
+ *
+ */
 /*
-Caller Mode: Any
-
-Notes: To get the current setting of channel/modem/band
-
-Command-Rsp Mode
-
-*/
+ *	Caller Mode: Any
+ *
+ *	Notes: To get the current setting of channel/modem/band
+ *
+ *	Command-Rsp Mode
+ *
+ */
 struct	getphy_rsp {
 	u8	rfchannel;
 	u8	modem;
@@ -430,58 +430,58 @@ struct getrfintfs_parm {
 };
 
 /*
-	Notes: This command is used for H2C/C2H loopback testing
-
-	mac[0] == 0
-	==> CMD mode, return H2C_SUCCESS.
-	The following condition must be ture under CMD mode
-		mac[1] == mac[4], mac[2] == mac[3], mac[0]=mac[5]= 0;
-		s0 == 0x1234, s1 == 0xabcd, w0 == 0x78563412, w1 == 0x5aa5def7;
-		s2 == (b1 << 8 | b0);
-
-	mac[0] == 1
-	==> CMD_RSP mode, return H2C_SUCCESS_RSP
-
-	The rsp layout shall be:
-	rsp:			parm:
-		mac[0]  =   mac[5];
-		mac[1]  =   mac[4];
-		mac[2]  =   mac[3];
-		mac[3]  =   mac[2];
-		mac[4]  =   mac[1];
-		mac[5]  =   mac[0];
-		s0		=   s1;
-		s1		=   swap16(s0);
-		w0		=	swap32(w1);
-		b0		=	b1
-		s2		=	s0 + s1
-		b1		=	b0
-		w1		=	w0
-
-	mac[0] ==	2
-	==> CMD_EVENT mode, return	H2C_SUCCESS
-	The event layout shall be:
-	event:	     parm:
-	mac[0]  =   mac[5];
-	mac[1]  =   mac[4];
-	mac[2]  =   event's sequence number, starting from 1 to parm's marc[3]
-	mac[3]  =   mac[2];
-	mac[4]  =   mac[1];
-	mac[5]  =   mac[0];
-	s0		=   swap16(s0) - event.mac[2];
-	s1		=   s1 + event.mac[2];
-	w0		=	swap32(w0);
-	b0		=	b1
-	s2		=	s0 + event.mac[2]
-	b1		=	b0
-	w1		=	swap32(w1) - event.mac[2];
-
-	parm->mac[3] is the total event counts that host requested.
-
-
-	event will be the same with the cmd's param.
-
-*/
+ *	Notes: This command is used for H2C/C2H loopback testing
+ *
+ *	mac[0] == 0
+ *	==> CMD mode, return H2C_SUCCESS.
+ *	The following condition must be ture under CMD mode
+ *		mac[1] == mac[4], mac[2] == mac[3], mac[0]=mac[5]= 0;
+ *		s0 == 0x1234, s1 == 0xabcd, w0 == 0x78563412, w1 == 0x5aa5def7;
+ *		s2 == (b1 << 8 | b0);
+ *
+ *	mac[0] == 1
+ *	==> CMD_RSP mode, return H2C_SUCCESS_RSP
+ *
+ *	The rsp layout shall be:
+ *	rsp:			parm:
+ *		mac[0]  =   mac[5];
+ *		mac[1]  =   mac[4];
+ *		mac[2]  =   mac[3];
+ *		mac[3]  =   mac[2];
+ *		mac[4]  =   mac[1];
+ *		mac[5]  =   mac[0];
+ *		s0		=   s1;
+ *		s1		=   swap16(s0);
+ *		w0		=	swap32(w1);
+ *		b0		=	b1
+ *		s2		=	s0 + s1
+ *		b1		=	b0
+ *		w1		=	w0
+ *
+ *	mac[0] ==	2
+ *	==> CMD_EVENT mode, return	H2C_SUCCESS
+ *	The event layout shall be:
+ *	event:	     parm:
+ *	mac[0]  =   mac[5];
+ *	mac[1]  =   mac[4];
+ *	mac[2]  =   event's sequence number, starting from 1 to parm's marc[3]
+ *	mac[3]  =   mac[2];
+ *	mac[4]  =   mac[1];
+ *	mac[5]  =   mac[0];
+ *	s0		=   swap16(s0) - event.mac[2];
+ *	s1		=   s1 + event.mac[2];
+ *	w0		=	swap32(w0);
+ *	b0		=	b1
+ *	s2		=	s0 + event.mac[2]
+ *	b1		=	b0
+ *	w1		=	swap32(w1) - event.mac[2];
+ *
+ *	parm->mac[3] is the total event counts that host requested.
+ *
+ *
+ *	event will be the same with the cmd's param.
+ *
+ */
 
 /* CMD param Formart for DRV INTERNAL CMD HDL*/
 struct drvint_cmd_parm {
-- 
2.7.4


