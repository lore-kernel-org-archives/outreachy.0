X-GM-THRID: 6668981360875536384
X-Received: by 2002:a02:f52:: with SMTP id h79mr5405197jad.3.1552749778694;
        Sat, 16 Mar 2019 08:22:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:194d:: with SMTP id b74ls2260654itb.3.canary-gmail; Sat,
 16 Mar 2019 08:22:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxXPMo6aSLko30VycTxTHMTQegT3D349SuWtSWEB1Gr26f6PFlLfcK2F4Dk9iiN90WiVf21
X-Received: by 2002:a24:3a4a:: with SMTP id m71mr5484322itm.12.1552749777965;
        Sat, 16 Mar 2019 08:22:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552749777; cv=none;
        d=google.com; s=arc-20160816;
        b=qSotkqUWvCylWa/OmVPkufaVkkfI2zh/32jmlTaapIRDmUbCYJSN94ZURwXc5/Svvv
         kuSWXCPdVJDilXMOEtU1gIoIF4WaUHiux+TfzUuz3njX6aWqAQ8Q2xfhe4cCMWqpmafm
         izjko47aiP3bkrZrT0yFmGTiqukKpp36yrInBc9jRHY0/uo3gwbEQYz7a3TCICxjTEsq
         SZelOSJXuX1SoffoXA0+lSCMx2fdp6oeHUToDhvPoqyQPnPFBswwZ53+x0SZXCJwMQF9
         2SL5M/X5ootHUeMOYP+7ivA30vm07iz1OBStFItK+aOqx57oekn+NJfn+5AnnaekELuN
         zHPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=aoaHb9GBNe6On7rpHdg725K7Z8eZnOpiXADMhq3YTJA=;
        b=eMxg621rqDCuwzji0HdVj5AA+4NtfuzShaOJpwYNkD5xO32Zif31B2vStjowxwFUo1
         q5ZAo/DLOmYB0mLbYbHT5blseBcSy7rpqxLIz3paWHG5sPwgaS9Pvff7rKjEhQJHreZI
         OIP60WwpVqcfVWUiagY7eRzN0XSFvUfDsNCaxSvmf3Vsbnk3Za2zFZrlZKPTfilD9RSY
         MvytcVo4Otqj/TLpI+LxrnpEpqCsB8KJ05uyDzxCjZ9VjtB2jCPREUtqQ/6VtdNdaIL/
         pSp0bUAbaf/WTAd2+fARB7Ljmhf6UmcL3n+XgGKDFwCdpsa7bRZuk7ka5qcsqMxXfM4I
         zKNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yq4lJ0YE;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id 71si288263ita.0.2019.03.16.08.22.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 08:22:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yq4lJ0YE;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id n125so8351385pfn.5
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 08:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=aoaHb9GBNe6On7rpHdg725K7Z8eZnOpiXADMhq3YTJA=;
        b=Yq4lJ0YEWwmwrh0Mg39zUHxXZOuM928cBEGhWx2ALM7DqRNKOBDBDXuuB2bwr+6lXp
         HFdbaxRmB3+zCpJwJ8rhMWGvrkX+hY06rX3DRzv7x6HKEFbdGiApLZzRzQOCmcIwa7pJ
         kncIGJ0PDULoG/umRgFKPPtp4GWdpxhZEvxpPO8gqKV3BtdAfwIp8lqzZdSnL+nmONPN
         J88QbRiP96QXPMOzA1SBkmgsQvDEMqMj5CVb0iltwKc4FpMw6TptmHMVcqDfWpuQgx0q
         YXeDdM7UomUH5rkpqsJoFGpzBZjSNBnxg0b3301zOjRe9QCFt1MqncvECWAu4DtAD8fa
         x9zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=aoaHb9GBNe6On7rpHdg725K7Z8eZnOpiXADMhq3YTJA=;
        b=LB55sFQv/ns3QbfNvFj4Gs2PzEwgGReCWLg6gdpc7f+AHrTMXTvEao5zluw6s12Jv8
         tdzn/DfWYP5573ZDPzGXg8g7Y4iOC8MExPng+RMRAs9GH++dE1x5oqSfCJIVY124Bw6f
         gm7G0VLGR5mDbeG/8IlNmJ6LeIh2shYO0Wb/hgISlxk8faezpaFndXWKFrTTfo+9sS8X
         m76djL28UrReIeb06Uufnb0S/Bufduwco+z4YIq7llNMyyiBuPaGGcel4BTE7H+QII7D
         fauIvH4OZ+txWx8lMAvpQTK44o3qM1f/IMrzuUUSBs18ZHCaUneqFEElnSE6N5TsKNot
         5Grg==
X-Gm-Message-State: APjAAAWikhmPFTml5NIZC9wat5LtXNTfMZ4UmJddl9UKNLNuTSGu0fe1
	M4JMLYMl+9KYfClH9RF+FdwjNuYD0Y4=
X-Received: by 2002:a17:902:6b47:: with SMTP id g7mr10517854plt.100.1552749777076;
        Sat, 16 Mar 2019 08:22:57 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.23])
        by smtp.googlemail.com with ESMTPSA id j24sm11337654pgl.58.2019.03.16.08.22.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 08:22:56 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] Staging: rtl8188eu: rtw_recv.c: fix a tab indent issue
Date: Sat, 16 Mar 2019 20:52:45 +0530
Message-Id: <20190316152245.18268-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316133306.8747-1-sanjana99reddy99@gmail.com>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com>

Fix a tab indent issue which removed warnings after compilation using
checkpatch.pl.

[WARNING]:No extra space at the beginning of a line.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 1d83affc08ce..0d04057e6cf6 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -24,11 +24,11 @@ static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80, 0xf3};
 
 /* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
 static u8 rtw_bridge_tunnel_header[] = {
-       0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
+	0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
 };
 
 static u8 rtw_rfc1042_header[] = {
-       0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
+	0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
 };
 
 static void rtw_signal_stat_timer_hdl(struct timer_list *t);
-- 
2.17.1


