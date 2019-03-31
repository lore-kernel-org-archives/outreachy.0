X-GM-THRID: 6674450234072891392
X-Received: by 2002:a62:ac18:: with SMTP id v24mr942535pfe.70.1554029359882;
        Sun, 31 Mar 2019 03:49:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6a86:: with SMTP id f128ls2627264pgc.7.gmail; Sun, 31
 Mar 2019 03:49:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxIstik8eIGqFSsNfweJTCA+0ACERzIRodmcV2HAqfR1baov9VXpQWfxQBvsLqmP9ntXUz7
X-Received: by 2002:a62:184d:: with SMTP id 74mr627213pfy.30.1554029359272;
        Sun, 31 Mar 2019 03:49:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554029359; cv=none;
        d=google.com; s=arc-20160816;
        b=dtZi/wW0riCi1uooKcpHXyJ9vuJKkbLidGuwgzSYY+Tmp6dMRmHG+/4RpHW9esgAXG
         FXah/EdnowqtpmvM7OTaBgWsNw3+xLAGYiJVufBJJVyXJjEpH6FjNoY7KOTI2MvjfeuE
         9pg2awIAgmoA/E8WzFZhXPWb9Y/l/PMmIW0hN7Gt7M6Gubknu+oGDNCEd530rlTBq3xf
         44EVnRUjPfWml/1jGLuq1b2+H7m8Hfg2KmvsskKdwKq+2DyXuk4/WBwwU5oPP6QWpXMI
         6ONy6ihdhDlQXkCq/zTecnsDLnletYYeQTfZmAGjKMJfom3R3Ka/MpMEZQeIS09yW15V
         kabA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=ezZI5PAvOMHbYVOAU0RVCdpr5UqSfwjTj0PCLyuR5W8=;
        b=A2dS8dDIM5EhR5GNnlAIvVfXbDT1/ySGrCpRgheFSC1/U1ChIIe25Dklk2l9/LHPaJ
         HdpkOhFd9QcrMw/Cw46mOBmMufXXT/nhefNd7vzm8O40QM2cMPPSogyUP0jobBPrCarm
         a8lxJz4TbkBO4NFlMlRmpwpmdeImnENAllS8CAZZGtfC7XVM3uurlTdjanPHOxTmM20P
         FIeHoGrsZOT73TDhCCwcLs+IE5mvOkJpxtVTbMmRW38xoc1v9kGEJqo5SkDGtwkBj6Wr
         LdlgmLj+Tjc2cbZ4SVIVpkk3my0U460l3NE0H8IxjwPE7ixBUxU3XS5/cBtXGIPAjAMt
         ZF8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HGuzBfU7;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id r133si435176pgr.4.2019.03.31.03.49.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:49:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HGuzBfU7;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id r15so3111370pfn.9
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ezZI5PAvOMHbYVOAU0RVCdpr5UqSfwjTj0PCLyuR5W8=;
        b=HGuzBfU7DLNpJyoaXe90PSS8TdgyQozAIEsoZB2w4M2mVYadqZRqt7rx0FH1hmJGSj
         2BQwltoMCx0Ap3XepvbFAA17lg9+ugj+Rkt1U78oJvk6w8DRHE266YSQCrdEiu8OLH3S
         hSm2Us0AQaFLvP/g/IR+aHuK5TkNmOC8LRqEVWbEPO83sz1ki9d/XjLjccBhpJrleOYl
         SQCMt4etUhT3aO3TXAI8q+2UA4V/WHRuFZjLwV9qMdgcKGo/EZopX1DKyihSu6kblINB
         8deUtcO6zOKoZNnf9iEsV2otvDszHBV7yW4AKe/VkAXdOFmtijqmkV8bepjhHYxlUH9O
         sECA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=ezZI5PAvOMHbYVOAU0RVCdpr5UqSfwjTj0PCLyuR5W8=;
        b=KtCOvzig4ssNZzNMoTGr+ibusw0FIyS9fX0gmrbxuJxaJ9u6PdrlORUCFe4QjIqN6f
         gPKmnPFsO9Kq84v892EffZTtHKLuXkgx+yWrwKy1GM8jufjGeDjHWurA3CbZDVMVCARm
         FDanScp3fcMpC8iCDMYg2I5eWjj+6cB8dU8MAaDNrVNDZbKdCP4qOP3E1NsGMwwU1Gj3
         eIEhsrppVy+L9qFLmLyU9g1Gxu95TatfE2itMUxgUI+OgKdKjmC5HyAY1RGB5VYLaz0U
         Mr27OPNITUtdntStVzSW0vx7uvgJexTPTqY+Q14mqOdkTr2vhw7wjhZs10cvIEdyvhT3
         oNXQ==
X-Gm-Message-State: APjAAAXNN4vGbyaGFrwM4x+mQpwRhqGehMIMYSYrq+Oe81BJBTPTjCSO
	96uIlmqvjeBrt2ozinnEcBhkN21o
X-Received: by 2002:a62:14c3:: with SMTP id 186mr57036130pfu.21.1554029358728;
        Sun, 31 Mar 2019 03:49:18 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g4sm10014361pfo.38.2019.03.31.03.49.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 03:49:18 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 3/9] staging: rtl8723bs: os_dep: ioctl_linux.c: "foo*  bar" should be "foo *bar"
Date: Sun, 31 Mar 2019 16:18:38 +0530
Message-Id: <ac8b0f48c127dd98b58e1784125c522191f79b23.1554028003.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>

Fix issue - "foo*  bar" should be "foo *bar".

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 46fbaac..d68d9c8 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -946,7 +946,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	u8 j, blInserted = false;
 	int intReturn = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-	struct iw_pmksa*  pPMK = (struct iw_pmksa*)extra;
+	struct iw_pmksa *pPMK = (struct iw_pmksa*)extra;
 	u8 strZeroMacAddress[ETH_ALEN] = { 0x00 };
 	u8 strIssueBssid[ETH_ALEN] = { 0x00 };
 
-- 
2.7.4


