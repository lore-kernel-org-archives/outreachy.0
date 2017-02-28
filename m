X-GM-THRID: 6390824128052461568
X-Received: by 10.99.108.71 with SMTP id h68mr45139pgc.130.1488280279791;
        Tue, 28 Feb 2017 03:11:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.47.2 with SMTP id j2ls334437itj.3.gmail; Tue, 28 Feb 2017
 03:11:19 -0800 (PST)
X-Received: by 10.36.33.66 with SMTP id e63mr5459902ita.38.1488280279009;
        Tue, 28 Feb 2017 03:11:19 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0224.hostedemail.com. [216.40.44.224])
        by gmr-mx.google.com with ESMTPS id s206si69556vka.2.2017.02.28.03.11.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 03:11:18 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.224 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.224;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.224 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id F0CA56B59D;
	Tue, 28 Feb 2017 11:11:06 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:41:69:355:379:541:599:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1535:1544:1593:1594:1605:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3866:3867:3871:3873:4321:4605:5007:7903:8957:10004:10848:11026:11232:11658:11914:12043:12438:12555:12683:12740:12760:12895:13439:14181:14659:14721:21060:21080:21324:30012:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: women42_269d9092cf235
X-Filterd-Recvd-Size: 5595
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Tue, 28 Feb 2017 11:11:05 +0000 (UTC)
Message-ID: <1488280264.25838.26.camel@perches.com>
Subject: Re: [PATCH v7] staging: xgifb: correct the multiple line dereference
From: Joe Perches <joe@perches.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>, 
	arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Date: Tue, 28 Feb 2017 03:11:04 -0800
In-Reply-To: <20170228104507.GA30448@arushi-HP-Pavilion-Notebook>
References: <20170228104507.GA30448@arushi-HP-Pavilion-Notebook>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2017-02-28 at 16:15 +0530, Arushi Singhal wrote:
> Error reported by checkpatch.pl as "avoid multiple line dereference".
> Addition of new variables to make the code more readable.

You should probably split this into 2 patches, one for
each file.

What Julia said about finding a better/shorter identifier
than RefreshRateTableIndex is true but I still suggest
something like:

> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c@@ -221,8 +221,8 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
>  
>  	for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
>  	       tempbx; (*i)--) {
> -		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> -				Ext_InfoFlag;
> +		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
> +

I suggest something like:
---
 drivers/staging/xgifb/vb_setmode.c | 41 ++++++++++++++++++--------------------
 1 file changed, 19 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 7c7c8c8f1df3..daa3318aab41 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -172,10 +172,12 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
 		struct vb_device_info *pVBInfo)
 {
 	unsigned short tempax, tempbx, resinfo, modeflag, infoflag;
+	const struct XGI_Ext2Struct *ext2;
 
 	modeflag = XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag;
 	resinfo = XGI330_EModeIDTable[ModeIdIndex].Ext_RESINFO;
-	tempbx = XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID;
+	ext2 = &XGI330_RefIndex[RefreshRateTableIndex];
+	tempbx = ext2[*i].ModeID;
 	tempax = 0;
 
 	if (pVBInfo->VBInfo & SetCRT2ToRAMDAC) {
@@ -219,10 +221,8 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
 			return 0;
 	}
 
-	for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
-	       tempbx; (*i)--) {
-		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
-				Ext_InfoFlag;
+	for (; ext2[*i].ModeID == tempbx; (*i)--) {
+		infoflag = ext2[*i].Ext_InfoFlag;
 		if (infoflag & tempax)
 			return 1;
 
@@ -231,12 +231,9 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
 	}
 
 	for ((*i) = 0;; (*i)++) {
-		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
-				Ext_InfoFlag;
-		if (XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID
-				!= tempbx) {
+		infoflag = ext2[*i].Ext_InfoFlag;
+		if (ext2[*i].ModeID != tempbx)
 			return 0;
-		}
 
 		if (infoflag & tempax)
 			return 1;
@@ -5050,6 +5047,7 @@ unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
 {
 	const u8 LCDARefreshIndex[] = {
 		0x00, 0x00, 0x03, 0x01, 0x01, 0x01, 0x01, 0x00 };
+	const struct XGI_Ext2Struct *ext2;
 
 	unsigned short RefreshRateTableIndex, i, index, temp;
 
@@ -5073,29 +5071,29 @@ unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
 	}
 
 	RefreshRateTableIndex = XGI330_EModeIDTable[ModeIdIndex].REFindex;
-	ModeNo = XGI330_RefIndex[RefreshRateTableIndex].ModeID;
+	ext2 = &XGI330_RefIndex[RefreshRateTableIndex];
+	ModeNo = ext2->ModeID;
 	if (pXGIHWDE->jChipType >= XG20) { /* for XG20, XG21, XG27 */
-		if ((XGI330_RefIndex[RefreshRateTableIndex].XRes == 800) &&
-		    (XGI330_RefIndex[RefreshRateTableIndex].YRes == 600)) {
+		if ((ext2->XRes == 800) &&
+		    (ext2->YRes == 600)) {
 			index++;
 		}
 		/* do the similar adjustment like XGISearchCRT1Rate() */
-		if ((XGI330_RefIndex[RefreshRateTableIndex].XRes == 1024) &&
-		    (XGI330_RefIndex[RefreshRateTableIndex].YRes == 768)) {
+		if ((ext2->XRes == 1024) &&
+		    (ext2->YRes == 768)) {
 			index++;
 		}
-		if ((XGI330_RefIndex[RefreshRateTableIndex].XRes == 1280) &&
-		    (XGI330_RefIndex[RefreshRateTableIndex].YRes == 1024)) {
+		if ((ext2->XRes == 1280) &&
+		    (ext2->YRes == 1024)) {
 			index++;
 		}
 	}
 
 	i = 0;
 	do {
-		if (XGI330_RefIndex[RefreshRateTableIndex + i].
-			ModeID != ModeNo)
+		if (ext2[i].ModeID != ModeNo)
 			break;
-		temp = XGI330_RefIndex[RefreshRateTableIndex + i].Ext_InfoFlag;
+		temp = ext2[i].Ext_InfoFlag;
 		temp &= ModeTypeMask;
 		if (temp < pVBInfo->ModeType)
 			break;
@@ -5105,8 +5103,7 @@ unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
 	} while (index != 0xFFFF);
 	if (!(pVBInfo->VBInfo & SetCRT2ToRAMDAC)) {
 		if (pVBInfo->VBInfo & SetInSlaveMode) {
-			temp = XGI330_RefIndex[RefreshRateTableIndex + i - 1].
-				Ext_InfoFlag;
+			temp = ext2[i - 1].Ext_InfoFlag;
 			if (temp & InterlaceMode)
 				i++;
 		}


