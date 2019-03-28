X-GM-THRID: 6673442126229929984
X-Received: by 2002:a6b:c403:: with SMTP id y3mr1673152ioa.38.1553790356211;
        Thu, 28 Mar 2019 09:25:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:4687:: with SMTP id j129ls1268900itb.1.gmail; Thu, 28
 Mar 2019 09:25:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx1LHyMtOyJxA3bOZ1HsiElEqIt7w5v5fDd8NZHxg6z4ZSqldKB36RZWpF3mt+0mKHZzym4
X-Received: by 2002:a05:660c:f8d:: with SMTP id x13mr237587itl.5.1553790355159;
        Thu, 28 Mar 2019 09:25:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553790355; cv=none;
        d=google.com; s=arc-20160816;
        b=KSeAWkGqtBCH0g+fEZk0TRDSeZgHAx5DgaacG3dSp2eP1mpzL373r4Tou9BWz8W8q1
         Afafr9flaWQA0q97+qNZCQL0yyA+NOTbThRvdZo9PLpJfIT42cQnmg1ta3a+20DGHYnW
         IT6++/SVKuxnpmTs/FbkaQAdE16G9O1Lv4les/7fOpMu9JIpU9T8tH5XZOjSx8p1QYQo
         XCt4+usL3HbUYgQpNJAv5OtXdDcJmPEYD7oRkXTq2SAOsoRXUTb7uaJBjAaQtwKpRXgH
         bcFiPY2KUdJ03BcbC4Y0hgjCJP7hBHgw4GPABfVp5wawKXKhWdAXA4Vlipeuh9REb6Z5
         9cMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=lwhC0EiFNawurOOSos9Zc5GEbOva3wYIQJ3mnt1vrFU=;
        b=lgisODkc0Od4fYk1gww8bESROBoY0bUrggdaqktTFsylxbO+iMrk11e9cHEnN8gm13
         NFy/2LiU0tACGhzSAJdsyYISuScV14/aSFhZlE8zE2jZm38eSjTY+SVMfEdg4b+eR4PR
         mdXqbrUJ7NEIszh9j/eSWLH9csSxWzJ66FKktrg/ZDB+sJZCDoT9t/qEObDSibrqwDFI
         zBGSK31nUhXPCVp8XV8bRSnFamdfL3j/S3myBUcBQvy7W+X7CEqedzykzw+ZvqGhTVBU
         huGuUlqtcDP/UfgsuBjL+SxvQdvAmjpOtdhEFs1YS+z6mFG8z7r5zkB+xEMDF08h9h7r
         HmBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bl03GOB2;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id w136si87497itb.2.2019.03.28.09.25.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 09:25:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bl03GOB2;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x434.google.com with SMTP id c8so11574665pfd.10
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 09:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=lwhC0EiFNawurOOSos9Zc5GEbOva3wYIQJ3mnt1vrFU=;
        b=bl03GOB2neuJNtEa3DRYawuWbfSZHtIce4gx4Dp+3YYlGQiBTVcX/ArygJEc8frE1z
         WN3qP/l/XXL864UvTvlJ//c90B6lraPbcxi14lm0yFq9Phx3RB0k6OTAxydf/7LrJIDz
         u2GGy5/KZnDGQ8omSxuEVzK/wY2sLB6nbK+89Dw9/j+oU/KzURDz6sWwpuDSvW85DVMF
         grdRV/g5mEvO2bUtzz9X1ykQiyRyShK/h9BFYckR0SlNMBo/xKG48PzjShcFp7P3ZHrS
         FFPVZcaSB3YcsdPujJUX6u11TyBThPXUSukX7j0x9qL3cn0N9D7z99KvdA7HP2C4ipeI
         h7Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lwhC0EiFNawurOOSos9Zc5GEbOva3wYIQJ3mnt1vrFU=;
        b=e/tExM4RxncUOXx1IcaUJEktnBNIeE4OI0Pf+zmhUBGHNqaLagwBPwW4xQz+hVjui4
         X67VAuIYO4r7XboHvkl052XsON6GtMeS4BTCvXNaFJ+upEMn9Xu4lkcx6Mlc7gR0PNE4
         SzVYynyr7Bn1EYDFhjLvbxq1t0OdDuwT9kdwDlbRzClgDBy+IO4XiYxYokIbG4skzLdy
         AaJck+jgT6OgxOKKwboqhwd/CkM+ZgK3RRD1TuktUWOp5vPVbrNrf4icP8g2j2AxBIrU
         7sY65w+YaHqMxNTmQrfz30ZdcGi3SR/zTxWcs+iWfbDABBbysrX/ZWMncdgR/b75Fgcx
         /wuw==
X-Gm-Message-State: APjAAAXorgbTrRmv5SBpI+yKv0zPVG0b4oq6p3FjQ0O7kVvzoBc47Emt
	+tfVciqaGsVJloPdZx9cc2CYTgzM
X-Received: by 2002:a62:4d45:: with SMTP id a66mr15822192pfb.250.1553790354114;
        Thu, 28 Mar 2019 09:25:54 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.195.63])
        by smtp.gmail.com with ESMTPSA id g64sm56472435pfg.13.2019.03.28.09.25.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Mar 2019 09:25:53 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.c>
Subject: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: Remove unnecessary parentheses
Date: Thu, 28 Mar 2019 21:54:24 +0530
Message-Id: <1553790264-4801-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle

This patch removes unnecessary parentheses while returning a value and 
removes unnecessary space.
Using following semantic patch:

@@ 
local idexpression id;
@@

- return(id);
+ return id;

@@ 
local idexpression id;
@@

-return (id) ;
+return id;

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.c
---
Changes in v2:
	-Add new semantic patch to drop spaces.

--- drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ /tmp/cocci-output-4620-ca634c-ioctl_linux.c
@@ -961,7 +961,7 @@ static int rtw_wx_set_pmkid(struct net_d
         if (pPMK->cmd == IW_PMKSA_ADD) {
                 DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
                 if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
-                    return(intReturn);
+                    return intReturn;
                 else
                     intReturn = true;
 
@@ -1489,7 +1489,7 @@ exit:
 	DBG_871X("DBG_IOCTL %s:%d return %d\n", __func__, __LINE__, ret);
 	#endif
 
-	return ret ;
+	return ret;
 
 }
 

