X-GM-THRID: 6401906753462599680
X-Received: by 10.25.104.21 with SMTP id d21mr2330395lfc.31.1490560070259;
        Sun, 26 Mar 2017 13:27:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.193.69 with SMTP id r66ls976644lff.34.gmail; Sun, 26 Mar
 2017 13:27:49 -0700 (PDT)
X-Received: by 10.25.202.9 with SMTP id a9mr2338918lfg.3.1490560069652;
        Sun, 26 Mar 2017 13:27:49 -0700 (PDT)
Return-Path: <azure@suarez.id.au>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id k74si237994wmd.1.2017.03.26.13.27.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 13:27:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of azure@suarez.id.au designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@suarez-id-au.20150623.gappssmtp.com;
       spf=pass (google.com: domain of azure@suarez.id.au designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=azure@suarez.id.au
Received: by mail-wr0-x244.google.com with SMTP id w43so4544452wrb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 13:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suarez-id-au.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sBCPuttyt7TuW8kGyATYzsAeofpjX6cfSuA+cNucgI0=;
        b=c1UTpOtXuhL2dbVEVli894k9gTaxuq8jkJBTCw9HLMjSB37hiaZ5ZNlgMt9MpGHaE0
         FoFIlLTDhPX4JD4o08apRthjUkNT8t3TuzRTYxmE+uNB/92JMamLF+yEU5yiB/RRnIi8
         YYIJNNNsOm8ymOVM0c9JLk1SC0yJePwIHXUCsEAnLOLgWsY1RcRsuuHkWb0nAlvXc0IG
         f2UmOkmq0+cuiNUKdCUgY07v0W9xaIAMCW9qkZpu02RuMhyhZ+OeOKEyBvJxqj3O19ok
         p6ATW5e1PkMtN/ywcm9E2KQOgCUDR6CUu3UoJ8p6Zp1PmsgxlRzd1Immz65QMT+lMprd
         iTxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sBCPuttyt7TuW8kGyATYzsAeofpjX6cfSuA+cNucgI0=;
        b=kuHSIrEgTKghEH9j4qmBM+H1pitRDBDXbfnAVApsELP84ZsB/ynpyN+RQQTjrt/bq7
         W+K/GLkXO2akonVYUGfbQbNoDaW/Zw0PVnnrUD8xKMbYuG07XGeFQ5Zd/thj3pDkVD09
         7FHrWpoiKsrseTc1swZWYnrCFD0MpZbEWIBzprfDIQs6oHv5AwaT5khI4oy7nbQOdICT
         TDKeDvGJES2D+CIbXE12nawg3JDT2nhXC9MPEdxMZXad75TxrxMnOgGNLxCCWYzv8Oqp
         ApZHO2g06rUA7KEJxY9ngBQw5xS+LJMqL2vTYqr05W/Krfu2JHNjY5hoU494DGYIpYPX
         SgIQ==
X-Gm-Message-State: AFeK/H3IXO4czVfP78C5s+6VTcCyeMJILabuiZFoVj6DkB7xq6p2cU+9j6CRJNEJf2vdDg==
X-Received: by 10.28.226.4 with SMTP id z4mr6561839wmg.135.1490560069391;
        Sun, 26 Mar 2017 13:27:49 -0700 (PDT)
Return-Path: <azure@suarez.id.au>
Received: from hcs-desktop ([37.228.230.54])
        by smtp.gmail.com with ESMTPSA id z79sm12042474wrc.2.2017.03.26.13.27.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 13:27:48 -0700 (PDT)
Date: Sun, 26 Mar 2017 21:27:46 +0100
From: Hannah Suarez <azure@suarez.id.au>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Patch 7/7. Delete FSF mail address paragraph.
Message-ID: <20170326202746.GA10971@hcs-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Delete the FSF mailing address paragraph on the event of an address
change.

Linux already includes a copy of the GPL.

Signed-off-by: Hannah Suarez <azure@suarez.id.au>
---
 drivers/staging/rtl8712/xmit_linux.c | 4 ----
 drivers/staging/rtl8712/xmit_osdep.h | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
index 4ee4136..bbfe9b3 100644
--- a/drivers/staging/rtl8712/xmit_linux.c
+++ b/drivers/staging/rtl8712/xmit_linux.c
@@ -13,10 +13,6 @@
  * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
  * more details.
  *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110, USA
- *
  * Modifications for inclusion into the Linux staging tree are
  * Copyright(c) 2010 Larry Finger. All rights reserved.
  *
diff --git a/drivers/staging/rtl8712/xmit_osdep.h b/drivers/staging/rtl8712/xmit_osdep.h
index 8eba7ca..d3f5cb4 100644
--- a/drivers/staging/rtl8712/xmit_osdep.h
+++ b/drivers/staging/rtl8712/xmit_osdep.h
@@ -11,10 +11,6 @@
  * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
  * more details.
  *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110, USA
- *
  * Modifications for inclusion into the Linux staging tree are
  * Copyright(c) 2010 Larry Finger. All rights reserved.
  *
-- 
2.7.4


