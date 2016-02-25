X-GM-THRID: 6255232975470854144
X-Received: by 10.66.221.100 with SMTP id qd4mr41384175pac.0.1456409919680;
        Thu, 25 Feb 2016 06:18:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.139 with SMTP id j11ls451568qgf.54.gmail; Thu, 25 Feb
 2016 06:18:39 -0800 (PST)
X-Received: by 10.129.51.2 with SMTP id z2mr41091072ywz.49.1456409919097;
        Thu, 25 Feb 2016 06:18:39 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x232.google.com (mail-io0-x232.google.com. [2607:f8b0:4001:c06::232])
        by gmr-mx.google.com with ESMTPS id k15si211208igt.3.2016.02.25.06.18.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:18:39 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) client-ip=2607:f8b0:4001:c06::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x232.google.com with SMTP id l127so88998829iof.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:18:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sD3qs6fs9WgcrWZa1ILd61HOs9rBshmVCJJIMXEjnyY=;
        b=QADra1/aoWIJbzmiRaD2MVHUJf//+8PqeWyhsU/p5Ly2R1ZEZlhDxdBAQE0nIPfSdV
         GsF3YDOPqoIP7LGcJFFaPN1VgBOUd/dji9q4f78yz/O2rw0Pr7xyaVOSF1uStAr9/P1W
         D3otGY01ha8BXMG24qOalcb3Jcjpn0iWWP9ewxNT5vPvyFuCFpuSqwum3eV/vNGgjL1Y
         0rcmJ2yGFSlAwJqej22iG6zK10zqERLKgSaGtF0F1Hf6eccHzoWzyLCUR4l0Vsg+cL42
         wfhwcpgxeZeL7VycSdsXILtzdpj32CQSxDtXmmSNUPCfjXUSgKT83nKkfVcCH45z1WjS
         GIPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sD3qs6fs9WgcrWZa1ILd61HOs9rBshmVCJJIMXEjnyY=;
        b=INseZUdgJ8yRXCpAgsg3eKGtq5wcqn98baefrZ4M11hKwV7EcLfqhcuReSCmInLgtd
         QfcFiCHaaFi8o0HH59SIMGen0+J3/siyOAEPiiiMfk8jU8WY/HxBWnDIY5txREYTb95o
         8iJwz8lPMBa2pE3e+Ee8M3OaV5KC0W+qB7wto9MPkNG6nt7BzYqj24HnzrES3BlRhdKF
         fDS5VdRT2MLb5z5UBpxmvNsZ7JcEliuJJGdcPBn4MCv7lq1Ew8uYbfJKjqP+r5KPGA5i
         Z/Hzy+Yt5MmUp3Zf2zW4UywEgjAhumolGd2wqcwH8YlBr3UbFt/nvysyM6mx+ngeM+Ze
         pktw==
X-Gm-Message-State: AG10YOTQturk+5BcQVSb3s57QYbAUFit6ZDsarLFnz/k0B48obiJZkAxLN47niwBIEQpAw==
X-Received: by 10.107.12.152 with SMTP id 24mr3732336iom.152.1456409918896;
        Thu, 25 Feb 2016 06:18:38 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id n1sm1301007ige.19.2016.02.25.06.18.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:18:38 -0800 (PST)
Date: Thu, 25 Feb 2016 14:17:50 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wlan-ng: prism2mib.c: Drop void pointer cast
Message-ID: <20160225191750.GA6975@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Void pointers don't need to be cast to other pointer types.
Semantic patch used:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
| 
  ((T *)x) [...]
| 
  ((T *)x)->f
| 
- (T *)
  e
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wlan-ng/prism2mib.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2mib.c b/drivers/staging/wlan-ng/prism2mib.c
index 5f3c7ea..fe914b1 100644
--- a/drivers/staging/wlan-ng/prism2mib.c
+++ b/drivers/staging/wlan-ng/prism2mib.c
@@ -428,7 +428,7 @@ static int prism2mib_uint32(struct mibrec *mib,
 			    struct p80211msg_dot11req_mibset *msg, void *data)
 {
 	int result;
-	u32 *uint32 = (u32 *) data;
+	u32 *uint32 = data;
 	u8 bytebuf[MIB_TMP_MAXLEN];
 	u16 *wordbuf = (u16 *) bytebuf;
 
@@ -475,7 +475,7 @@ static int prism2mib_flag(struct mibrec *mib,
 			  struct p80211msg_dot11req_mibset *msg, void *data)
 {
 	int result;
-	u32 *uint32 = (u32 *) data;
+	u32 *uint32 = data;
 	u8 bytebuf[MIB_TMP_MAXLEN];
 	u16 *wordbuf = (u16 *) bytebuf;
 	u32 flags;
@@ -533,7 +533,7 @@ static int prism2mib_wepdefaultkey(struct mibrec *mib,
 				   void *data)
 {
 	int result;
-	p80211pstrd_t *pstr = (p80211pstrd_t *) data;
+	p80211pstrd_t *pstr = data;
 	u8 bytebuf[MIB_TMP_MAXLEN];
 	u16 len;
 
@@ -660,7 +660,7 @@ static int prism2mib_fragmentationthreshold(struct mibrec *mib,
 					    struct p80211msg_dot11req_mibset *msg,
 					    void *data)
 {
-	u32 *uint32 = (u32 *) data;
+	u32 *uint32 = data;
 
 	if (!isget)
 		if ((*uint32) % 2) {
@@ -705,7 +705,7 @@ static int prism2mib_priv(struct mibrec *mib,
 			  hfa384x_t *hw,
 			  struct p80211msg_dot11req_mibset *msg, void *data)
 {
-	p80211pstrd_t *pstr = (p80211pstrd_t *) data;
+	p80211pstrd_t *pstr = data;
 
 	switch (mib->did) {
 	case DIDmib_lnx_lnxConfigTable_lnxRSNAIE:{
-- 
2.5.0


