X-GM-THRID: 6477856577977057280
X-Received: by 10.99.63.201 with SMTP id m192mr2889001pga.97.1508243516374;
        Tue, 17 Oct 2017 05:31:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.49.4 with SMTP id x4ls351709pfx.10.gmail; Tue, 17 Oct 2017
 05:31:55 -0700 (PDT)
X-Received: by 10.99.140.73 with SMTP id q9mr2858488pgn.140.1508243515223;
        Tue, 17 Oct 2017 05:31:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508243515; cv=none;
        d=google.com; s=arc-20160816;
        b=mPUQHfIidob6VGzE5sei7ub4jWJa5VkQ2QjKZlm6Le1gSsrefFQTsAEqU0JVExUU++
         FksKJbf8SWqEuaJJmuwMYArVjTWPN71jsslZ6aMXyCDGzzFm8EWgyFI/k9xIzCVlaynj
         X83kg6x6UTmZRE0578ggw2m0tIkKpynx4pveoc8pZdtrTNlu1l0iasWM5afNRmL8CYue
         aZtBV2MNs0Gf1qNAB4RUuDiLByQ5jyS8/MxUwDK6FC5/cQo/pytFk9Ipr4llgKThqsR9
         RNZrwtGoCfrkvHTlYBqRVCs/nAU24IUx9KEo/5nnmK3rFtbjPn0LRBNVItsKxkK/8vxG
         rtSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Phdwp2p0ou2V0xIEtkr5eqmw9rm7GKS7FDtgqBnKS50=;
        b=ld4chJwLenzUnQZuMyPDzBwt6blqcXxR/ozqDw8dpom0Kf3S+K/odLws7HxhuYR8IE
         +//2pCkk8B1EO6t9KqfMNwkLxfZ6WVdlNaDu/5ST4QMi548vnJhLFGc6ZR5mqpR8VJVK
         fT5rrK2Zz4Mfjud/zdcMi/EPgXSJPRbDZQnCeK72sXDmEuCXfPe6F39wslO9InG7roTj
         M/Q+RRvhDAhmNdyBjyxQ9WWwoNoJGDBDpVtRknnt93ep/6tI15e97IYhLRFEDurCjbGR
         1hDqJFF6VlqV1q2bQMF0PBxjhrPWz5hOeGA7b80/4jy+/bZMDeIfWFrVJ5l8Gi4IDy8t
         QkIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eFdf+yAh;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::232 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x232.google.com (mail-pg0-x232.google.com. [2607:f8b0:400e:c05::232])
        by gmr-mx.google.com with ESMTPS id w4si906596plp.5.2017.10.17.05.31.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 05:31:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::232 as permitted sender) client-ip=2607:f8b0:400e:c05::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eFdf+yAh;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::232 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x232.google.com with SMTP id j3so1310630pga.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 05:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Phdwp2p0ou2V0xIEtkr5eqmw9rm7GKS7FDtgqBnKS50=;
        b=eFdf+yAhKXAmPhyUgJPBSCAYQW1H5fL5t3urhAvE2D9GVLv9yCrs6h6kxTDq7Ld31y
         /XAFWxFvAur5Iv8W9t9Ooqpo3JfNz5v1CS6oui0MWOuehXmQDOL1ekACLp9SxS/xBLxr
         tgH3csohgexB2BDjDkhbRMonFus7tMz6pRwo5bACKBU5VOuGXWBBuVIaeXxVl64dt9BW
         QDfOxuTgkeyebwIk6J1VjLaGbNM5kWazXJByZtMOnIwY9Mr5jiacHkTmWN9/vuWPv+dm
         uQO17b3C6WRiHIu/ZUuNND67KT9gQ9P4LqICOt3y6CDTspHn0Y1Um6v6iR3pCERVuuUn
         ppjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Phdwp2p0ou2V0xIEtkr5eqmw9rm7GKS7FDtgqBnKS50=;
        b=pakdg5rclKiaaDhUAaOepxRW6L6/K+wCd/ZJrHHGWUYbUQrZcMi9ukZjGRSKhuHO3z
         oWGUEYCnf4ASuC/1X1GpxxL06St9diLYGp8klSwz/nIHmbf2KSFKHMgS8YmmILriY3Wd
         hBmhzfVaaSZXBUUNYEiTGuyi1hg+ifaT66mnB6aF7Oi1YsXOJ3ozRYFR6r8bV/v1jXyu
         RkXXeDgombc+aeVI/SU2LyPw35bNCBCEov9YaCiOinh46mlZc0D6EFmPhbYB2dHcdRF0
         Cmecvi323Lhcu0k0FLPlfEOOesJnAugmoK6xw1ARDgKhqs4u/7uTz7fFyw9DCHYIv/4K
         m29g==
X-Gm-Message-State: AMCzsaUlNuH/gxrK5BoKmP5NqTa+lU0DKRI2L1o0M22fclj0yw/b/9vJ
	kpUxocjy9EzKyNip9sv7Pok=
X-Google-Smtp-Source: AOwi7QBuKdc9R4R+D6zwWqHffaZ4qWTABpJS2LWEZ+EHcUHLTjMJPGoiz4iPY60EY7wWrWwHrYg+wQ==
X-Received: by 10.98.41.193 with SMTP id p184mr11401036pfp.112.1508243515030;
        Tue, 17 Oct 2017 05:31:55 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id z6sm19525739pfe.114.2017.10.17.05.31.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 05:31:54 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v2] libxt_TOS: add tests for translation infrastructure
Date: Tue, 17 Oct 2017 17:59:37 +0530
Message-Id: <20171017122937.20617-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

This patch checks that the iptables TOS to nftables translation works fine.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Changes in v2:
 -Change subject and log message

 extensions/libxt_TOS.txlate | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 extensions/libxt_TOS.txlate

diff --git a/extensions/libxt_TOS.txlate b/extensions/libxt_TOS.txlate
new file mode 100644
index 00000000..6d55eb24
--- /dev/null
+++ b/extensions/libxt_TOS.txlate
@@ -0,0 +1,25 @@
+ip6tables-translate -A INPUT -j TOS --set-tos 0x1f
+nft add rule ip6 filter INPUT counter ip6 dscp set 0x07
+
+ip6tables-translate -A INPUT -j TOS --set-tos 0xff
+nft add rule ip6 filter INPUT counter ip6 dscp set 0x3f
+
+ip6tables-translate -A INPUT -j TOS --set-tos Minimize-Delay
+nft add rule ip6 filter INPUT counter ip6 dscp set 0x04
+
+ip6tables-translate -A INPUT -j TOS --set-tos Minimize-Cost
+nft add rule ip6 filter INPUT counter ip6 dscp set 0x00
+
+ip6tables-translate -A INPUT -j TOS --set-tos Normal-Service
+nft add rule ip6 filter INPUT counter ip6 dscp set 0x00
+
+ip6tables-translate -A INPUT -j TOS --and-tos 0x12
+nft add rule ip6 filter INPUT counter ip6 dscp set 0x00
+
+ip6tables-translate -A INPUT -j TOS --or-tos 0x12
+nft add rule ip6 filter INPUT counter ip6 dscp set 0x04
+
+ip6tables-translate -A INPUT -j TOS --xor-tos 0x12
+nft add rule ip6 filter INPUT counter ip6 dscp set 0x04
+
+
-- 
2.11.0


