X-GM-THRID: 2331486715904
X-Received: by 10.152.88.40 with SMTP id bd8mr571489lab.0.1424581865116;
        Sat, 21 Feb 2015 21:11:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.40 with SMTP id n8ls313001wiy.14.gmail; Sat, 21 Feb
 2015 21:11:04 -0800 (PST)
X-Received: by 10.180.39.164 with SMTP id q4mr530623wik.5.1424581864816;
        Sat, 21 Feb 2015 21:11:04 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id ta1si417556wic.1.2015.02.21.21.11.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 21:11:04 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22e.google.com with SMTP id w62so12275460wes.9
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 21:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=8EpL5hADuEja5Yg+n+RVeA11VUb1HDiGA2SRgxPAr0Y=;
        b=uKom2vTIzbCghrVs98razsO/LZMzSwH/DdbZyCOzsogssv/Wbv81gq1xYLLIGB2QRt
         V+gz1/7c3mjfXmGUBT7UIuSHevmRE+oPx5lgR9xlpFA+zJ4clMnfaotOsN2pAYR4gLxH
         XQw90O4H3CuHq2TxKZNhUezAn59uq2HJvhTwwVk6dk+8sd0WoB492eyAVzle4Ei0ufAR
         e9kuKCO9t2dP8Zzjd0b23ICl5kQSGfxb7eDt0vH4gLOilS7cKCVFlwAkZuElbpT/dxVz
         Iih4HqkXG8KXtMtyP03fvwSC9cneBSF0dPXJZ0HH6SMKCmiBmMQ8vUumuNR8o/wTmDiK
         T1OA==
X-Received: by 10.194.171.136 with SMTP id au8mr10332132wjc.6.1424581864766;
        Sat, 21 Feb 2015 21:11:04 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.237.30])
        by mx.google.com with ESMTPSA id n1sm9745258wib.11.2015.02.21.21.11.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 21:11:04 -0800 (PST)
Date: Sun, 22 Feb 2015 07:11:01 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/1] scripts: checkpatch.pl: add 2 new checks on memset calls
Message-ID: <052f177392bde0338901921fcbb0ef70f1d85882.1424580894.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424580894.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424580894.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch adds 2 new checks on memset calls in the file
checkpatch.pl as follows:

replace memset by eth_zero_addr if the second argument is
an address of zeros (0x00). eth_zero_addr is a wrapper function
for memset that takes an address array to set as zero. The size
address has to be ETH_ALEN.

replace memset by eth_broadcast_addr if the second argument is
the broadcast address (0xff). eth_broadcast_addr is a wrapper
function for memset that sets the passed array the broadcast
address. The size of the address has to be ETH_ALEN.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 scripts/checkpatch.pl | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index d124359..9619882 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -4918,6 +4918,25 @@ sub process {
 			}
 		}
 
+# Check for memset(foo, 0x00|0xff, ETH_ALEN) that could be eth_zero_addr(foo)|eth_broadcast_addr(foo)
+		if ($^V && $^V ge 5.10.0 &&
+		    $line =~ /^\+(?:.*?)\bmemset\s*\(\s*$FuncArg\s*,\s*$FuncArg\s*\,\s*ETH_ALEN\s*\)/s) {
+			my $num = $7;
+			if ($num =~ "0x00" && WARN("PREFER_ETH_ZERO_ADDR",
+				 "Prefer eth_zero_addr() over memset() if the second address is 0x00\n" . $herecurr) &&
+			    $fix) {
+
+				$fixed[$fixlinenr] =~ s/\bmemset\s*\(\s*$FuncArg\s*,\s*$FuncArg\s*\,\s*ETH_ALEN\s*\)/eth_zero_addr($2)/;
+			}
+			elsif ($num =~ "0xff" && WARN("PREFER_ETH_BROADCAST_ADDR",
+				 "Prefer eth_broadcast_addr() over memset() if the second address is 0xff\n" . $herecurr) &&
+			    $fix) {
+
+				$fixed[$fixlinenr] =~ s/\bmemset\s*\(\s*$FuncArg\s*,\s*$FuncArg\s*\,\s*ETH_ALEN\s*\)/eth_broadcast_addr($2)/;
+			}
+		}
+
+
 # typecasts on min/max could be min_t/max_t
 		if ($^V && $^V ge 5.10.0 &&
 		    defined $stat &&
-- 
1.9.3


