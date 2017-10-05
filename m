X-GM-THRID: 6473329881506643968
X-Received: by 10.99.160.85 with SMTP id u21mr1080858pgn.113.1507189562387;
        Thu, 05 Oct 2017 00:46:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.234.137 with SMTP id n9ls6388419plk.15.gmail; Thu, 05 Oct
 2017 00:46:01 -0700 (PDT)
X-Received: by 10.99.42.141 with SMTP id q135mr2258082pgq.50.1507189561493;
        Thu, 05 Oct 2017 00:46:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507189561; cv=none;
        d=google.com; s=arc-20160816;
        b=tHorw/58dpZB8h2ZDs49I5ilA7TNuEOy+FLO4eOuKOnoFGTKUAiTSxTYcI9WSCXj9r
         IXYJ2QeP02nhMHTHorEXHVPeYjXqflHEBnH6Ta0fwjzdqBy3zgrKJGxXTN2k7XOejhzg
         WvL22zVp56pu8aQG168PRIXiLwhgN5LCuxinM7v0w4g0a1Xjs2iOP2Y7HC+cPxfm1snM
         bgp3dUo0m7Nm6aIQpmmZGDJeMya3gbu4F9hd1nVKqb65MKCQRwUQWID5N1bf46mugoca
         Rh/CQGtZP24lUEtZR+cFUpgc0sfutVGrgSArRVURTjzugXnsMwbhHym+OslXoXMb/62j
         C82A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=HbbzQyo/u+2KNJEqOoMsgiRjjWi+zXLUrO8a4l6P/jY=;
        b=hoZsrbpLqAZnO2JvR75iumw1f/Wjk/bKzvh74Ft6NhIn8864H6jtKi8AiedLFk57Lt
         2Y0RCNQMm9d9lUyLcNuCos6tJit5WmJWSvte31ohKxbQfjeMlRoCazBmWAl0BGPjnI5/
         fxmaiaS5PCMjP7ceZnSaHlxa9CqM1MZjHCX1M/t1/+N/9lf8HKbJ5GBHcnkWoh8TKpfq
         7H/Cy2wAxNR2qSYEiZ4KJxGZ8AT8UxEGiluTr+FIqVS1qBZLmNhWkGtquwVqFqG3aG/r
         ciZi4CO15rXOGXiZDNdwLw7yi320dHR+cuCXqZqqFmbGUBFPeBtNu/QJP0TT9X1F2XGe
         Zjtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m629KZ52;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id n63si479437pfb.10.2017.10.05.00.46.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 00:46:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m629KZ52;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id e69so14099836pfg.4
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 00:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=HbbzQyo/u+2KNJEqOoMsgiRjjWi+zXLUrO8a4l6P/jY=;
        b=m629KZ529O0vZ14f7gJUcan54CFHr294aIZJTmmqRwrgj9lAq2xWep+p164M8zPUno
         nhiXy1Cdzj0bMH5aYox0uCHCUMMY9NEVJkQV+PymyDvuTdhsAzlhsZmrPSU/LugB1Jlr
         LFrwkOFNrvugfiRUo8Ue3NPEM+HPckf6irlFHFGpCczMoDLTsWpBnU32Rp03F4aPad5V
         I8Mnt19nfSCGQc+1tJmv3JpbHTJfy/4wCg749C+YBVNbGCRiTxjl8wuFCHDYvTYZY+pD
         3se6QpSRLBwpfsk1dkkc/547ChSVYa35UvqD/Yp83wOPVCaxr/l5gFMXWEaFTTG4q20j
         zlDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HbbzQyo/u+2KNJEqOoMsgiRjjWi+zXLUrO8a4l6P/jY=;
        b=AdqB2X5nWX22bSBF/jDISuoMX7Hx6Ov6pB+Qmf36/lHAYXZGPNBeFaLftkd22kyqy8
         aephxFSFmj8XnOifO9MmRCOVToH6ZTsidf0NZ5KPUb93nxzz89wTua/rmhViklWx4Gmw
         06qF2Z384k3f6vNcYj4b4M/aP6wf7VyQYxfDtWgkhhVw7g7mzre77N2N7ME2pKLGMwmx
         +a/Lj9RM1EBaNYcsjj5f71xzXn4ukQvTNGyuRRKXpcN3EOHZuqCpdP47+BA2tjt4eAZi
         4bPshUApYeLz0MxpbcUkvj5m+Z5nYcW52PRvwBlw0lWWub68mIT2QgEErhYyl8Pi/DU6
         yfoQ==
X-Gm-Message-State: AMCzsaVNmD5vS1jdOKcsHLLLW97xX2ceZr068iPxDbTNYre48a8grLx9
	Hgcdu6SvbslXsyk0PVx9pAs=
X-Google-Smtp-Source: AOwi7QDuHVGkKrGX2tWzuZPaoSpGBr16asbZbWwN5BKeXzipZt+GT7QffEoVRYoVV8pGQRUdUbJl4Q==
X-Received: by 10.99.109.72 with SMTP id i69mr7398776pgc.436.1507189561286;
        Thu, 05 Oct 2017 00:46:01 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id l66sm16703914pfl.17.2017.10.05.00.45.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 00:46:00 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] test: shell: execute shell/run-tests.sh from any directory
Date: Thu,  5 Oct 2017 13:13:47 +0530
Message-Id: <20171005074347.20953-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Update shell/run-tests.sh to refer /src/nft with a relative path

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 tests/shell/run-tests.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/shell/run-tests.sh b/tests/shell/run-tests.sh
index 4eba0a8..dbddd8d 100755
--- a/tests/shell/run-tests.sh
+++ b/tests/shell/run-tests.sh
@@ -3,7 +3,7 @@
 # Configuration
 TESTDIR="./"
 RETURNCODE_SEPARATOR="_"
-SRC_NFT="../../src/nft"
+SRC_NFT="$(dirname $0)/../../src/nft"
 
 msg_error() {
 	echo "E: $1 ..." >&2
-- 
2.11.0


