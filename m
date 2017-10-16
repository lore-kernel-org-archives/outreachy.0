X-GM-THRID: 6477617002737303552
X-Received: by 10.237.56.74 with SMTP id j68mr2133357qte.29.1508187736425;
        Mon, 16 Oct 2017 14:02:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.100.7 with SMTP id y7ls1707458qkb.4.gmail; Mon, 16 Oct 2017
 14:02:15 -0700 (PDT)
X-Received: by 10.55.102.200 with SMTP id a191mr9608446qkc.51.1508187735820;
        Mon, 16 Oct 2017 14:02:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508187735; cv=none;
        d=google.com; s=arc-20160816;
        b=hI7kZ/weG8KDDpz5aW5aaFYo9oqMIuWvXvgBYJ8A3i3FCfAn4RlgUChgDxJ+nGJptV
         51XeNIDXTR2Ua513fANqKRKosPetha7eG9ubh15ww0OnEQloqzTScYh/Xyfk+jGHdSKw
         SQdm6xRLrFv5bRaZdL5hI3NjuAzYLmqy5V2HUEejMJzcsjdyLtObDHCokkcW105nMUx/
         HaT32qAU4bVgNf9IbEPH1DWq3qRV/6mNlAX4Ds2O0Q69ku3Nyrnl3U/fFwIy6dmHK9HU
         nz3V1I8gKzO/AXYI3aQQaT5QhGqeglsoKAQe4YEJ+aiFLh31URr+jf2vzhWh2kI2Ywpx
         PCtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=uQqtQBMqQM7P14lLI+h7JoYFleirCJbLs6AuDLrzYL0=;
        b=Wxz2W6ZK/6XxVoyefvBl7npbyTgI6R21FNVD8iL7Z2Rnqzmu4Yz+v9p+WPsgdNfo1C
         GH2TSq8FC3gaIOPpioHWca3yr6XpYT9FZbmx9fW4TXmdizt8lbOedc5fWGeSC7nhNRya
         jMeQkjeICFwjVNUOH+2LgOMihbgPcS9iicQEq4Fz2I09bdHOiqdF87CEir1pUmmmieoT
         CYjm0UyhcwMkseOiTTRfiEhHEnwKagwzBMEn2KOEKJh+8fGryTLkUG+M/Jl8hw3li3f6
         uoU0hos5RBcW45x+fRNwoAjvfCqlQts5qbnSHg/JP+DnIpcmlqoWja6+3ELqb+D9PBXs
         Ewww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HHgK3/CQ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 80si435546qkb.3.2017.10.16.14.02.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 14:02:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HHgK3/CQ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id y7so7787669pgb.7
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 14:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=uQqtQBMqQM7P14lLI+h7JoYFleirCJbLs6AuDLrzYL0=;
        b=HHgK3/CQ/1VGSAnTttSdp3EZuLHc4qAJBiDKuwxy3/Y7BjhLwEGqW65Yd/4sr/pbuO
         4vePTHJXPgvnoOr/Imx62uLUhIC8ohT7sFrZYuVTsvm3nHv2ztR3GS3R0ShH2fCwv1YK
         enOKzTTUc+zXwZgGmHHfYkaeHMUXbdsPP6nerED+ZI/GNr191iXfcu2WEoCRQx4Gyag+
         VxYgo5Uj3yIaU48W2I5VZZK2FLhIEEP4/69kjMooo58PQH63TiVm3X493DX5sYM5R5bx
         ltsIwi95s0j3seYHspYYrwhPVH+T7FmYfsjDizwiTYBYotMv6jDF6DED47ya1WtHbz0G
         Eb2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=uQqtQBMqQM7P14lLI+h7JoYFleirCJbLs6AuDLrzYL0=;
        b=dyq8vYHne8+4URAz8r4yioZ6QwiPM7TVFAWHFgUpiSdWWJUg9LABqfxGOfFyzMaPov
         E5hkWRWu4qt8JIflDITDfW5P2mhnTk2F1IYudrcFs/1QNXmp1DakD2yusX+KYun/MjhJ
         STl6p+MVhxIMDxI+bbeOf3nvmkfkQD/RBysIN3nwN8vyaSm2YSpmd6YKz60rmKuxW8vJ
         2Dnr+RdNgiOEvWJcxLt6P2n56cGWIpgy2T5VmcrOPEo9m1n7O/Iyvu9jdnWQTwAQ+1mP
         yvnXDv9LdbIiWuGAdqr6KlAp9r9CcKkfrpIBlZR1ieXs+KXL6QSAaYfx7mxPM90c/IOv
         BdLg==
X-Gm-Message-State: AMCzsaVS0eyUDUW1qfTH+AqTgq/mGdjQbxw0dFCCSX+Zz1fdWzMreJM7
	bOPeiB+afoiq01iJ6xErxp4=
X-Google-Smtp-Source: ABhQp+RwHAYq8cSMQfWD3xviQ7W8aHRZJboe9CB23WX27SXHL03/4/0lIBnLdObLTTVrxbvmcdvQ4A==
X-Received: by 10.84.225.6 with SMTP id t6mr364464plj.106.1508187734904;
        Mon, 16 Oct 2017 14:02:14 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id n19sm16882494pfj.52.2017.10.16.14.02.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Oct 2017 14:02:13 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Pablo Neira Ayuso <pablo@netfilter.org>,
	netfilter-devel@vger.kernel.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] iptables: add test file for TCPMSS extension
Date: Tue, 17 Oct 2017 02:32:09 +0530
Message-Id: <1508187729-3926-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This adds test file for the recently added TCPMSS extension.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 extensions/libxt_TCPMSS.txlate | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 extensions/libxt_TCPMSS.txlate

diff --git a/extensions/libxt_TCPMSS.txlate b/extensions/libxt_TCPMSS.txlate
new file mode 100644
index 0000000..6a64d2c
--- /dev/null
+++ b/extensions/libxt_TCPMSS.txlate
@@ -0,0 +1,5 @@
+iptables-translate -A FORWARD -p tcp --tcp-flags SYN,RST SYN -j TCPMSS --clamp-mss-to-pmtu
+nft add rule ip filter FORWARD tcp flags & (syn|rst) == syn counter tcp option maxseg size set rt mtu
+
+iptables-translate -A FORWARD -p tcp --tcp-flags SYN,RST SYN -j TCPMSS --set-mss 90
+nft add rule ip filter FORWARD tcp flags & (syn|rst) == syn counter tcp option maxseg size set 90
-- 
2.7.4


