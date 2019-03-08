X-GM-THRID: 6666119040327483392
X-Received: by 2002:a17:902:e90c:: with SMTP id cs12mr6537313plb.93.1552076801934;
        Fri, 08 Mar 2019 12:26:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:488b:: with SMTP id q11ls4660228pfi.5.gmail; Fri, 08 Mar
 2019 12:26:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqywQaZbboCVSxFmXsLlcSZQpDjfBv6NUtgz50sZg0XmXQLNH//1bJygUQ5kj0PLi+AGz17u
X-Received: by 2002:a62:e08d:: with SMTP id d13mr7926894pfm.23.1552076801171;
        Fri, 08 Mar 2019 12:26:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552076801; cv=none;
        d=google.com; s=arc-20160816;
        b=UXjaOPaxGobNroH/X+h1POrKkxYk0MvxcH+sihJ/cCrm+8OILB6nQ3qF8FFFpIa21A
         l/gkDLjIK4oq/uG+7Uosoy1K+eaaAlt3BnBvPNcondaIiNNqH6MXOM7V3dL2FPaLSIs9
         xYcNzPIV/fF4yfNUqzVHpE5fwFzMvQgALWbteKydeBsmAuFCDv1kRon2jndAgba61ML9
         rKk4Hg6cCsokE6eU3k6og72G23EU5sS/q480Qe3ZyKBbsDuiIJVDSSKWVDs75oVjtFaN
         9CRVZX3U+Kw/zrw9ECrpraKSMmvSzVxcUX/f7aika/rHsWD+x/5O5ad7n9XDRDv7ox/H
         S+qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qlCPls2/0NiEBm/+kdFdLvVKj657ppo3JPAKEIRQ4I4=;
        b=od3vnDUcU3QiP3IQZRjZiD+s9SRlPzLn1VbL8nbcdLd2knBbxduq3Pa3IYsoL1HMRv
         4+1CWsrf8fDI4Rcq0GJ7OPHaBpGplsBY9rogrpLt7NIR9z2I/wSg55z6D47HRo+jukG8
         zMaVqQ9urpYhthbhYcfZnAZwvKq18RDx+l880/LjTpbQ36TgmWopHMm7mUNA/5/sRCaF
         ULG3tuLZEmcrNNx8l+V796HoivrwCS4IDL1ZNlNWJVFuoDUR4t2/Gz69r+HYzhlGfAVC
         vhchf9JO+TbMHeNgnzmXSg3pcjuw8BiqaP2kO5mwheShpZCHUYfwB7eqiMCg6913/SGQ
         jHZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=ucKDyahO;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic312-20.consmr.mail.sg3.yahoo.com (sonic312-20.consmr.mail.sg3.yahoo.com. [106.10.244.210])
        by gmr-mx.google.com with ESMTPS id g83si578539pfg.5.2019.03.08.12.26.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 12:26:41 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.210 as permitted sender) client-ip=106.10.244.210;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=ucKDyahO;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1552076799; bh=qlCPls2/0NiEBm/+kdFdLvVKj657ppo3JPAKEIRQ4I4=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=ucKDyahOIOjMbFQq1ydKEDjHMGWQ8B4TPXe38KQGkzgYPcYPJURgxLEAP4KCeRygWPoU8j86tsrCL/mQ8QqCvbNbyPzx7zibdPpIXZjkqoZWvh2ecYEe1zg8tmNtza59DLXi4W8wjY7lQeNreBL60tjPPyCUR8wRe7Cni+dwzE6MwXAVgSnj/8e50KpIG9fI2n7xs6ulenHzIfCNWCn/5thk5T9ulG8rQCO0HXkOJEuKXQ0asYNr+3zE6oUBHJKJ4fz/6X0msAakQ3Y8Xb3DlcVF3GCFpuR0+ZVmLJq44oCemx4AQUZerX+RvPnpXqhygQbMXVS1Vc8usP+5X5Iicw==
X-YMail-OSG: _RZoAX4VM1kaqC03DYjH.EtwpbwE6KvvIDA4V6a7Z0CKjmlQvnsoAZeRI83piHg
 DPUNFgDypf8B3ze6niFfx92VamCu8w5ai6vSB2xo_3W3Tjd185EUuJCuk75uyC8NOMhP__Eef3nn
 aVwJttBH5v1hddbDv7KKq3a4BKHHWsVSLASssk67e4pdoPAhn_HQVEwAkzosUfYJsJep85jPJ7ts
 tMMt4vZkEdkotVYxbMF5vAHFU2ULoVdDRx3Qxs7av6VnEF3T1FsJQj438eLv5iPomzqlYC0VYPR7
 nfnyE1DUmZTPkp3mK6BU1Fbj79PVabSvcPIInv6..34.WPfug_Vkp4R42CsG55T9GuS9gXPsGXed
 cDysYmTMzN0baNwAaB7lwHN2gExMYr_U4c2IESFC7XaYbeU3JFWzma85Tf08PmvVIzqFDodj3pp6
 HnnpHm6O3EtcwHSAe6FEM9Pjv.opT_OKNneYmiX0KYwbu6ClLAoE2qabLmNg9N7nelcqWBwNIa6n
 UvSJEjTwVi8sdHEPzBMNoqEtYQghHQf8rTIg4cOchc4rSU3emkGfNvUHYEIGUAWZpYD0cvroJaBQ
 bqiOsZi4OFVhnUxdB2AAlkXwJm_QHtOwYubgZJcDT5PPgxxxeeSEEXxo7NAfqA8F9Ue6V6vV4PJH
 y6wKplI_9oItZYAoKhKRGZ5i2HmOobky0Hvhv_kedNnAwcdPS_h6u8qjRxphxJHgPF7e4CLFl1EO
 NxThWSdXz0sTOvkOH57l91ziP57ij3cY0qvakpUlvW3FPDKCPypZVPKc3wXodnUmgJz38aDF5izU
 X8Lsp3cHhcdOoWWGiaw6FwdBBgMMnIKucXcBUO5XQn9XxWZszAR1GkqfruHswRFaDgINtvUM1Q_L
 OLU5ltXkPLrP890Nc62UtWGhRYfhqgH2_axalUb6iESQOdxZVm6eZRDPqyd8MwdYeQWP6zSnWevS
 Fx4MvtCMbjJqOaXi0DZPB0WS6.hZRUXDlZx1KfBfco7xcrGYcw1r7rYTfKuARNke5kPLRvX5GIWz
 h2w.HDdMqH6N52uYQdwQspnXxDgDoSp2Dk_V.vI7T.I09xEYONXObDfY1JlVkLiZc55nb__Cgkeb
 QxJQHD8vIFc4EYVdLVYzfz5vYFVo5bftl
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.sg3.yahoo.com with HTTP; Fri, 8 Mar 2019 20:26:39 +0000
Received: from 47.15.233.237 (EHLO localhost.localdomain) ([47.15.233.237])
          by smtp432.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 97b59abc1276b5581cd8b807a2758e64;
          Fri, 08 Mar 2019 20:26:35 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 3/4] staging: sm750fb: Edit CamelCase variable names
Date: Sat,  9 Mar 2019 01:56:04 +0530
Message-Id: <20190308202605.4061-3-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190308202605.4061-1-nishka.dasgupta@yahoo.com>
References: <20190308202605.4061-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edit variable names that were in CamelCase to make code more readable.
Issue found with Checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/sm750fb/ddk750_dvi.c | 40 ++++++++++++++--------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
index b20d16198c17..cd564ea40779 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.c
+++ b/drivers/staging/sm750fb/ddk750_dvi.c
@@ -30,31 +30,31 @@ static struct dvi_ctrl_device g_dcftSupportedDviController[] = {
 #endif
 };
 
-int dviInit(unsigned char edgeSelect,
-	    unsigned char busSelect,
-	    unsigned char dualEdgeClkSelect,
-	    unsigned char hsyncEnable,
-	    unsigned char vsyncEnable,
-	    unsigned char deskewEnable,
-	    unsigned char deskewSetting,
-	    unsigned char continuousSyncEnable,
-	    unsigned char pllFilterEnable,
-	    unsigned char pllFilterValue)
+int dviInit(unsigned char edge_select,
+	    unsigned char bus_select,
+	    unsigned char dual_edge_clk_select,
+	    unsigned char hsync_enable,
+	    unsigned char vsync_enable,
+	    unsigned char deskew_enable,
+	    unsigned char deskew_setting,
+	    unsigned char continuous_sync_enable,
+	    unsigned char pll_filter_enable,
+	    unsigned char pll_filter_value)
 {
 	struct dvi_ctrl_device *pCurrentDviCtrl;
 
 	pCurrentDviCtrl = g_dcftSupportedDviController;
 	if (pCurrentDviCtrl->pfnInit) {
-		return pCurrentDviCtrl->pfnInit(edgeSelect,
-						busSelect,
-						dualEdgeClkSelect,
-						hsyncEnable,
-						vsyncEnable,
-						deskewEnable,
-						deskewSetting,
-						continuousSyncEnable,
-						pllFilterEnable,
-						pllFilterValue);
+		return pCurrentDviCtrl->pfnInit(edge_select,
+						bus_select,
+						dual_edge_clk_select,
+						hsync_enable,
+						vsync_enable,
+						deskew_enable,
+						deskew_setting,
+						continuous_sync_enable,
+						pll_filter_enable,
+						pll_filter_value);
 	}
 	return -1; /* error */
 }
-- 
2.19.1


