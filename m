X-GM-THRID: 6745898329157140480
X-Received: by 2002:a63:c10:: with SMTP id b16mr7485833pgl.333.1570665305130;
        Wed, 09 Oct 2019 16:55:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:24f:: with SMTP id t15ls483083pje.1.canary-gmail;
 Wed, 09 Oct 2019 16:55:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzgNL0fMORkPx+FbG/OrP1b9m4D8Es9dFw5oIPWv4AtqcKQuntlk+XIpW2eoYLkxU8fGzI0
X-Received: by 2002:a17:902:ff0b:: with SMTP id f11mr5786728plj.307.1570665303915;
        Wed, 09 Oct 2019 16:55:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570665303; cv=none;
        d=google.com; s=arc-20160816;
        b=txk4Fyd8UTBngKf7oo4d5pALYBw9QYEh4XgKssoxSwmjkdjepSDq6L8iDkmFwYzt5D
         Cb5QsOf7ud260kWRbEIeTRpcI54q3V7wPu/ZP8F2Fi9vb/o0SqE2dNVfvP7DySGDkEHu
         vJSie8PtFzwngavI1SmU0EU8iN1AOtqDgco2utSSDQmazCt/mjf06L+K0hRMVOYm60x6
         WwnZJ+rKnlfJCgHtK9aoUN8O3hEmTbnFTZf2NxM6VZvJOak1z9RQWI5f7g1SMb5+yHaK
         8pQgDy5GnwjfyVSbPA4Cy0Mqob9LYqQQGZd3HmbeT+V6wCSi3wuTOW/KLIP22tDeC5ln
         m+cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=XkEYep/YzstSBo/DFhGHJeJF/eqHS1/eju4KdSyt5O8=;
        b=PzBkAJXUO/xNsjjOuzDWXEZqMOXnVhDg89SIzYo7I1l5yQmT57LWjN7idoGiQ18vt8
         FW8xbdDpsjdfdOa3qGsG2J6L4uU0tF8TdhDrzWfF5rRu3YZIh3AK85bgLC1C2LMCI/15
         5ASdv0U8S+qWJrZjjXio20SsN2MLOLyq8fUDkN0IDiBSPBF+rJcsEfjRhYGaBF2BSYNc
         1wmRsspzf48AjKsyTZFUdVYDbqOYJ56v9Brp3yCcHgPjf2dt9k1svNUp/Up7fjQgf7qD
         HNiJ3I0FyHlJGl+YVOfZszPKGk6bnBDP5lr0VdvMUoAhZvjOLJcghl0+7KvsZ5IzaWQt
         N+pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.4 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0004.hostedemail.com. [216.40.44.4])
        by gmr-mx.google.com with ESMTPS id o23si343814pjt.2.2019.10.09.16.55.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Oct 2019 16:55:03 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.4 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.4;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.4 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 6B0D7837F24C;
	Wed,  9 Oct 2019 23:55:02 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::,RULES_HIT:41:69:355:379:599:960:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1543:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2692:2828:2895:3138:3139:3140:3141:3142:3355:3622:3865:3867:3868:3871:3872:3874:4250:4321:5007:7901:7903:9592:10004:10400:10471:11026:11232:11473:11658:11914:12043:12296:12297:12438:12555:12663:12679:12740:12760:12895:13255:13439:13972:14096:14097:14181:14659:14721:21080:21220:21451:21627:30012:30046:30054:30070:30090:30091,0,RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:26,LUA_SUMMARY:none
X-HE-Tag: face04_2bc696171af0c
X-Filterd-Recvd-Size: 4735
Received: from XPS-9350.home (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA;
	Wed,  9 Oct 2019 23:55:00 +0000 (UTC)
Message-ID: <f9bdcaeccc9dd131f28a64f4b19136d1c92a27e2.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: qlge: Fix multiple
 assignments warning by splitting the assignement into two each
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
 GR-Linux-NIC-Dev@marvell.com, netdev@vger.kernel.org,
 devel@driverdev.osuosl.org,  linux-kernel@vger.kernel.org
Date: Wed, 09 Oct 2019 16:54:59 -0700
In-Reply-To: <alpine.DEB.2.21.1910092248170.2570@hadrien>
References: <20191009204311.7988-1-jbi.octave@gmail.com>
	 <alpine.DEB.2.21.1910092248170.2570@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2019-10-09 at 22:48 +0200, Julia Lawall wrote:
> On Wed, 9 Oct 2019, Jules Irenge wrote:
> > Fix multiple assignments warning " check
> >  issued by checkpatch.pl tool:
> > "CHECK: multiple assignments should be avoided".
[]
> > diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
[]
> > @@ -141,8 +141,10 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
> >  	u32 *direct_ptr, temp;
> >  	u32 *indirect_ptr;
> > 
> > -	xfi_direct_valid = xfi_indirect_valid = 0;
> > -	xaui_direct_valid = xaui_indirect_valid = 1;
> > +	xfi_indirect_valid = 0;
> > +	xfi_direct_valid = xfi_indirect_valid;
> > +	xaui_indirect_valid = 1;
> > +	xaui_direct_valid = xaui_indirect_valid
> 
> Despite checkpatch, I think that the original code was easier to
> understand.

It'd likely be easier to understand if all the
<foo>_valid uses were bool and the ql_get_both_serdes
<foo>_valid arguments were change to bool from
unsigned int as well.

btw: qlge likely is going to be deleted and not updated.

---
 drivers/staging/qlge/qlge_dbg.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 7e16066a3527..90ab37d4c49d 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -112,7 +112,7 @@ static int ql_read_serdes_reg(struct ql_adapter *qdev, u32 reg, u32 *data)
 
 static void ql_get_both_serdes(struct ql_adapter *qdev, u32 addr,
 			u32 *direct_ptr, u32 *indirect_ptr,
-			unsigned int direct_valid, unsigned int indirect_valid)
+			bool direct_valid, bool indirect_valid)
 {
 	unsigned int status;
 
@@ -136,14 +136,12 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 				struct ql_mpi_coredump *mpi_coredump)
 {
 	int status;
-	unsigned int xfi_direct_valid, xfi_indirect_valid, xaui_direct_valid;
-	unsigned int xaui_indirect_valid, i;
+	bool xfi_direct_valid = false, xfi_indirect_valid = false;
+	bool xaui_direct_valid = true, xaui_indirect_valid = true;
+	unsigned int i;
 	u32 *direct_ptr, temp;
 	u32 *indirect_ptr;
 
-	xfi_direct_valid = xfi_indirect_valid = 0;
-	xaui_direct_valid = xaui_indirect_valid = 1;
-
 	/* The XAUI needs to be read out per port */
 	status = ql_read_other_func_serdes_reg(qdev,
 			XG_SERDES_XAUI_HSS_PCS_START, &temp);
@@ -152,7 +150,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 
 	if ((temp & XG_SERDES_ADDR_XAUI_PWR_DOWN) ==
 				XG_SERDES_ADDR_XAUI_PWR_DOWN)
-		xaui_indirect_valid = 0;
+		xaui_indirect_valid = false;
 
 	status = ql_read_serdes_reg(qdev, XG_SERDES_XAUI_HSS_PCS_START, &temp);
 
@@ -161,7 +159,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 
 	if ((temp & XG_SERDES_ADDR_XAUI_PWR_DOWN) ==
 				XG_SERDES_ADDR_XAUI_PWR_DOWN)
-		xaui_direct_valid = 0;
+		xaui_direct_valid = false;
 
 	/*
 	 * XFI register is shared so only need to read one
@@ -176,18 +174,18 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 		/* now see if i'm NIC 1 or NIC 2 */
 		if (qdev->func & 1)
 			/* I'm NIC 2, so the indirect (NIC1) xfi is up. */
-			xfi_indirect_valid = 1;
+			xfi_indirect_valid = true;
 		else
-			xfi_direct_valid = 1;
+			xfi_direct_valid = true;
 	}
 	if ((temp & XG_SERDES_ADDR_XFI2_PWR_UP) ==
 					XG_SERDES_ADDR_XFI2_PWR_UP) {
 		/* now see if i'm NIC 1 or NIC 2 */
 		if (qdev->func & 1)
 			/* I'm NIC 2, so the indirect (NIC1) xfi is up. */
-			xfi_direct_valid = 1;
+			xfi_direct_valid = true;
 		else
-			xfi_indirect_valid = 1;
+			xfi_indirect_valid = true;
 	}
 
 	/* Get XAUI_AN register block. */


