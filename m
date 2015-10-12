X-GM-THRID: 6204818417303683072
X-Received: by 10.129.46.204 with SMTP id u195mr24637958ywu.47.1444671865215;
        Mon, 12 Oct 2015 10:44:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.227 with SMTP id e3ls1177044igx.22.gmail; Mon, 12 Oct
 2015 10:44:24 -0700 (PDT)
X-Received: by 10.107.151.77 with SMTP id z74mr15246831iod.8.1444671864839;
        Mon, 12 Oct 2015 10:44:24 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id vy6si685246pbc.1.2015.10.12.10.44.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 10:44:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabve7 with SMTP id ve7so101659533pab.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 10:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=gPonM8+is65C9deQh4TLVDN4mplj/oP60Dib3PWVUao=;
        b=Rz0iMt8RHVGxj8/2nR6oS2h7jkByYlWAoe07R1GEoKIW3CUQK0BAgDkKd2OqV4can9
         hzhmRT8kx6wPMt5apzFBp2N88Jp+NjVmWQeY1DrkUmQwokGV71Vv2DIyG4f5GbjCpH4U
         kYbk1W05X5IjwgFjOT1gb1e/55/lXAhYI9Obf+6G1gCs4uPws8sIR79TTNbIPfl7id3X
         jggcbk9UK3jPHgar1xTIoi0ANqrJkKuNexLcxfoVRvxmtYV55y6whGffTLhSqcoRNRf/
         KmDW4G3qGpCSYizcn3Bp/rVzLYhTdkfg8fKm9/HzaNKJeQI2WKbyu1TJTkdpmuhIP6Eh
         axlA==
X-Received: by 10.67.12.196 with SMTP id es4mr35894302pad.83.1444671864704;
        Mon, 12 Oct 2015 10:44:24 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id gj10sm19456754pbc.68.2015.10.12.10.44.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 10:44:23 -0700 (PDT)
Date: Mon, 12 Oct 2015 23:14:15 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: vt6655: mac: Remove extra braces
Message-ID: <20151012174415.GA48424@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove braces from an if block as it comprises of a single statement.
Fix checkpatch warning: braces {} are not necessary for single statement
blocks

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/vt6655/mac.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index 3dfd333..688c3be 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -689,9 +689,8 @@ void MACvSetCurrAC0DescAddrEx(void __iomem *dwIoBase,
 		if (!(byData & DMACTL_RUN))
 			break;
 	}
-	if (ww == W_MAX_TIMEOUT) {
+	if (ww == W_MAX_TIMEOUT)
 		pr_debug(" DBG_PORT80(0x26)\n");
-	}
 	VNSvOutPortD(dwIoBase + MAC_REG_AC0DMAPTR, dwCurrDescAddr);
 	if (byOrgDMACtl & DMACTL_RUN)
 		VNSvOutPortB(dwIoBase + MAC_REG_AC0DMACTL, DMACTL_RUN);
-- 
2.1.0


