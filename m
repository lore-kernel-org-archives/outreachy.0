X-GM-THRID: 6251161839379415040
X-Received: by 10.66.246.230 with SMTP id xz6mr14816863pac.29.1455526716079;
        Mon, 15 Feb 2016 00:58:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.233 with SMTP id h96ls3462445qgd.80.gmail; Mon, 15 Feb
 2016 00:58:35 -0800 (PST)
X-Received: by 10.129.4.201 with SMTP id 192mr14638110ywe.15.1455526715431;
        Mon, 15 Feb 2016 00:58:35 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ff2si2793481pad.2.2016.02.15.00.58.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 00:58:35 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id y7so446226paa.3
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 00:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=3zw0zbboD/Upm9ng+O6E00QF+AKwSmmfMKyMxgurf54=;
        b=bzNmZlPr9c4AUGr98/Gvypl4vQeYXSk6tv3M0PKIZo6k5ssGWpQECg9V/F6DGL3CDA
         pN5V2R40YCkfsvB7Kcu/tfNH4qfZD8PO/RUHpPZzd6H0OLO3yYmlwcTAjfdy/A1H0XNL
         odOuNl43Nau1PGFPHY2rVFEDGbprtVIEJXpSwqZZQXg0cup58l2Fyushjwbsp1CmYaTz
         gPGGg9IpaGSOFCmVZbNjV7UBD5xak4RMMqk+o7zJRDv5YPsD/A9vYWfY1Daejl6Qybkn
         FEYCDBK3xQJ0dS1dwfYMt6rO9ykJitEEEVVV8lfRyP0+iQDmd0yU6sYZaDgSfTu0SODC
         WSzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3zw0zbboD/Upm9ng+O6E00QF+AKwSmmfMKyMxgurf54=;
        b=jqsRAUEn/yup+1yKCu9qtxmf6PYD0QuLjYTw8r9FFU/5zFOX9X/R4iAqVyxplif2yf
         9NjkNZuGaYIEWqY1ZdRRaNdFLurbRxct3sydQlRo3OB0YJj2mY3Ixyvt3uuJwhkkbqxv
         6msXQNET0uQKXEGZ8ExhirYI0/sOzwH+UTEmWsHgcSsp/EUiTXoJu7bozmIZCu8/me6M
         Dq2fUTqgbB2BL1vlVIRGFPhvdNAPMdm8JTqm+1BTjEmDU7+Z9kNhaVSOndDtNLlukNgK
         OrgNTe4oAcW3IpaNNFXvZS9ceWcx0k/WfAJTb13F6d3+tyXMHd43HlYRF+E9vP/jjxQG
         FwFQ==
X-Gm-Message-State: AG10YOQI00Y3RzonVo0rexUR0yPYWzzCqHBP7HLWW3XB/v6/lYdSSdgStBtr4XGxtMzwpQ==
X-Received: by 10.66.144.134 with SMTP id sm6mr16774912pab.158.1455526715294;
        Mon, 15 Feb 2016 00:58:35 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.132.55])
        by smtp.gmail.com with ESMTPSA id m87sm16138605pfj.38.2016.02.15.00.58.30
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 00:58:34 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Mon, 15 Feb 2016 14:28:23 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3 0/2] Staging: rtl8188eu: core: Remove NULL test before vfree
Date: Mon, 15 Feb 2016 14:28:19 +0530
Message-Id: <cover.1455526161.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The function vfree tests whether the argument is NULL and returns
immediately. So NULL test is not needed before vfree. Also remove blank
line between function calls.

Changes since v1:
* Remove blank line between function calls in patch 2/2.
* Correct errors in commit messages in both the patches.
* Remove braces around if branch in 1/2.
Changes since v2:
* Add file name to subject line to make it unique and more obvious.

Bhumika Goyal (2):
  Staging: rtl8188eu: core: Remove NULL test before vfree
  Staging: rtl8188eu: core: Remove NULL test before vfree

 drivers/staging/rtl8188eu/core/rtw_mlme.c | 6 ++----
 drivers/staging/rtl8188eu/core/rtw_xmit.c | 7 ++-----
 2 files changed, 4 insertions(+), 9 deletions(-)

-- 
1.9.1


