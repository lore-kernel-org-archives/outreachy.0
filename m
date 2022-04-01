Received: from m228-13.mailgun.net (m228-13.mailgun.net [159.135.228.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B86AEBF
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 05:00:57 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=codeagain.dev; q=dns/txt;
 s=smtp; t=1648789257; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Subject: Cc: To: To: From: From: Sender:
 Sender; bh=l+7Y194RkHEDvlBRUE9dOX8hqW2hHbFhgCzQfGAyZwQ=; b=Iob4k9IZ6MgOWCUF5iraIlqHcqH7c9Gv3kgUZ/PgXeS/qT27dm9uIGFyPqUc3vepl58yTRIC
 QqEb8r7htD266WnzUWW/zVy/SAC+qYzQGML8csyhklEqd4CWSQbmfzz8BhS2Qk6p8lHN5lwy
 NeqcYTM4gZRD0v8UVFhnR8ltYGo/Stb1/7cJj/UwPiiq5uSVtTgZu72c+V7m+nZtanL2H4Qv
 nIpaDB8XskaCl7zITdkjaxJgYy3NVtm4ckaGw72yO8+xBOexmUM37F7h96fhmbMWg7kK/HTK
 jHrDMzPQepYN5G6SMBPdYVv2o1fw4W5D3u/baAXs9PvJxrXVdw4Rmw==
X-Mailgun-Sending-Ip: 159.135.228.13
X-Mailgun-Sid: WyI2Y2ZlNyIsICJvdXRyZWFjaHlAbGlzdHMubGludXguZGV2IiwgImJlOWM2ZCJd
Received: from localhost.localdomain (dynamic-user.170.84.58.28.mhnet.com.br
 [170.84.58.28]) by smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 624687077afabd0707a01257 (version=TLS1.3, cipher=TLS_AES_128_GCM_SHA256);
 Fri, 01 Apr 2022 05:00:55 GMT
Sender: codeagain@codeagain.dev
From: Bruno Moreira-Guedes <codeagain@codeagain.dev>
To: reg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Martyn Welch <martyn@welchs.me.uk>,
	Manohar Vanga <manohar.vanga@gmail.com>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev
Cc: Bruno Moreira-Guedes <codeagain@codeagain.dev>
Subject: [PATCH] staging: vme: Adjusted VME_USER in Kconfig
Date: Fri,  1 Apr 2022 02:00:45 -0300
Message-Id: <20220401050045.3686663-1-codeagain@codeagain.dev>
X-Mailer: git-send-email 2.35.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Currently, the VME_USER driver is in the staging tree Kconfig, unlike
other VME drivers already moved to the main portions of the kernel tree.
Its configuration is, however, nested into the VME_BUS config option,
which might be misleading.

Since the staging tree "[...] is used to hold stand-alone[1] drivers and
filesystem that are not ready to be merged into the main portion of the
Linux kernel tree [...]"[1], IMHO all staging drivers should appear
nested into the Main Menu -> Device Drivers -> Staging Drivers to make
sure the user don't pick it without being fully aware of its staging
status as it could be the case in Menu -> Device Drivers -> VME bridge
support (the current location).

With this change menuconfig users will clearly know this is not a driver
in the main portion of the kernel tree and decide whether to build it or
not with that clearly in mind.

This change goes into the same direction of commit 4b4cdf3979c3
("STAGING: Move staging drivers back to staging-specific menu")

[1] https://lkml.org/lkml/2009/3/18/314

Signed-off-by: Bruno Moreira-Guedes <codeagain@codeagain.dev>
---
 drivers/staging/Kconfig | 2 ++
 drivers/vme/Kconfig     | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index 932acb4e8cbc..0545850eb2ff 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -88,4 +88,6 @@ source "drivers/staging/qlge/Kconfig"
 
 source "drivers/staging/wfx/Kconfig"
 
+source "drivers/staging/vme/devices/Kconfig"
+
 endif # STAGING
diff --git a/drivers/vme/Kconfig b/drivers/vme/Kconfig
index 936392ca3c8c..c13dd9d2a604 100644
--- a/drivers/vme/Kconfig
+++ b/drivers/vme/Kconfig
@@ -15,6 +15,4 @@ source "drivers/vme/bridges/Kconfig"
 
 source "drivers/vme/boards/Kconfig"
 
-source "drivers/staging/vme/devices/Kconfig"
-
 endif # VME
-- 
2.35.1

