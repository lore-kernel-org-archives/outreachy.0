X-GM-THRID: 6805867897863274496
X-Received: by 2002:a05:600c:247:: with SMTP id 7mr3030434wmj.181.1584614603176;
        Thu, 19 Mar 2020 03:43:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:660a:: with SMTP id a10ls927995wmc.0.gmail; Thu, 19 Mar
 2020 03:43:22 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtsUry4m+toiS6wmtSPbTGHtNdK6l4nmbtt4mkKH9VGt9JBAqt7qdBsoFOUJsmQKy9bRwFe
X-Received: by 2002:a1c:b4d4:: with SMTP id d203mr3022386wmf.85.1584614602130;
        Thu, 19 Mar 2020 03:43:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584614602; cv=none;
        d=google.com; s=arc-20160816;
        b=WMga57bYOW8oXmwjfKkwr4rdzCkk13mV4jUi8RckNUrUoPxTEXH1SFIL8AQRtVpyLD
         i09NPBent+9WaCuIkJz1vkf7/7GR28MEduePUhyhCceB2/Ld/sTMGZJsKM+RAGeQsodV
         qQGv/mgZE6fiL7C/CkjKWaxw+NFiGgW4e18KwGHamzFySh2Hus2GM3lii0hBTFm2A456
         +xBlyH02zY7fXRnCY2/jdhKeYjO4qPPP2wIJLruuUYJnVGg6BQgHwmFnsAOkFG5qe1Av
         LNTM8LhhMC0bZ5v175m+lbHXsTC8+vcVilf9MHhn7mXCak+kEuwfGwsTrZ6ByUQ42kO5
         g5jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=gwqRcA9uU4aRpKTLKWeMDvp1yfiXGOhbQA2O+en4o5Q=;
        b=ij5eIdFOzBu0/+2pfz9hgurFvIlhx0dc9KhmSBGRgJ6B0EYa9xnSRT/1GqVAOsSFq1
         L/wQUOrJ2wmmB4n9KHxefm6QC/K43DqNglBfYE/g1JgbMz69rWcXJ6zrF0t/sUZugCaY
         jzViBWKxeFYK8P8Vu0FX18Y71mvHsf+cu5ldcJcVLdwhnwqGbwIZ+MZnu8MNFvwd8d4C
         PpNBgXDzObO1eqKy5DOoOG889ycGKfBplmh5JJWjO/S5kHMbiUrXSzzqW+0wSHgsD77Y
         K3hqwoEvMysG5hsc5m2tG9I7sgy4AXCdD1bYAn3kjVVav7a16Y1yvV4UdMNO5TYQ8r99
         PK9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id b81si59067wmc.2.2020.03.19.03.43.22
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 03:43:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27206 invoked from network); 19 Mar 2020 10:43:20 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 10:43:20 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/7] Correction of typos in comments
Date: Thu, 19 Mar 2020 16:12:50 +0530
Message-Id: <cover.1584519269.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct typos in comments.
Misspellings found using checkpatch.pl.

---
R Veera Kumar (7):
  staging: rtl8723bs: core: Correct typos in comments
  staging: rtl8723bs: core: Correct typo in comment
  staging: rtl8723bs: core: Correct typo in comment
  staging: rtl8723bs: core: Correct a typo in comment
  staging: rtl8723bs: core: Correct typos in comments
  staging: rtl8723bs: core: Correct a typo in comment
  staging: rtl8723bs: core: Correct a typo in comment

 drivers/staging/rtl8723bs/core/rtw_cmd.c       |  4 ++--
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c |  2 +-
 drivers/staging/rtl8723bs/core/rtw_ioctl_set.c |  2 +-
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c   |  2 +-
 drivers/staging/rtl8723bs/core/rtw_recv.c      | 10 +++++-----
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c |  2 +-
 drivers/staging/rtl8723bs/core/rtw_xmit.c      |  4 ++--
 7 files changed, 13 insertions(+), 13 deletions(-)

-- 
2.20.1


