X-GM-THRID: 6673442126229929984
X-Received: by 2002:ab0:1d18:: with SMTP id j24mr2841655uak.6.1553781825194;
        Thu, 28 Mar 2019 07:03:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:3c51:: with SMTP id j78ls2043049vka.1.gmail; Thu, 28 Mar
 2019 07:03:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwzxHjzj2WUeMR1l+SyB/+8V4jGBJRagm9zGpHGGsTF6DrlJoOB509+6SyE+mkVWKckgeoA
X-Received: by 2002:a1f:3c0a:: with SMTP id j10mr1903220vka.17.1553781824498;
        Thu, 28 Mar 2019 07:03:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553781824; cv=none;
        d=google.com; s=arc-20160816;
        b=VyAW1lH77LSPpTt6uBn59t+94skaB62/GmMUpsehTavGbl8qUUc9IjKnNeATRtp5TC
         e+sfwYUaqysNCIylqiGzNkasTzZFq2qy01MXZ1LU97+jS+QYf9SzwsZSEV87bTus1svC
         nQyj0q8e2QJ1PSiiCCrwtKF5dYMIyi4Meuxifs7/RRRH/cbvCQA3Lz/QJM0Xuq0oMXZZ
         xCaVHjL7sAQrSd3fF/QgS3djIQFJGGxfh+rN2WvK6AdrY3vIlO/Av1T97pZF5biTqv7s
         hZO1VvkPhNZp5XmUfGs0oGNRVqGZQtKj2riLVr2EUtEq50MpjYcCEImDOORbtdSsovpJ
         hOyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=zLYbBiIzoiRx4dGmBb1jDOqT6U7c1IHTYkGYyiq+6Ig=;
        b=p0hIKJ6+h2YTyh5Xhs3QViIZttV75txD6TQsrWubkHz0QebBNF5rJ+8ocM2950zSOu
         5RX7bZ2Cc9vIAOXGoQQNhy8pKVw5GQz/QtiVohPfGxPQpg1/WIf5djpnC6sS/ut/fC1A
         OQp7s2204FIsnUMfHTD3eW27Dia8bTklngfs34B22uUJlfQw91Kq6GlplBDALJugfRPX
         wMEoUh3nrpcgpwNoFMEYWbXazNDGZ/7qIDlNZh36R3wG1X+krEFU+WPbyEoZUscf7nI9
         Ra4cDfA+vTs8nvChA7jk+iJZ48x7pgndeb3bVjevIe/zvz/MD1byM0SF/66AKiOex2a7
         DEDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Q/2Zzybo";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id k77si520779vke.3.2019.03.28.07.03.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 07:03:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Q/2Zzybo";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id z9so5372211pgu.10
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 07:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=zLYbBiIzoiRx4dGmBb1jDOqT6U7c1IHTYkGYyiq+6Ig=;
        b=Q/2ZzybostmgW/PghAZjh63BLSS+hFot2iBAwHVtusOxl9cQ+LsLhSs3mk94SyQdkS
         eKaWpKAaANNiaf+WddOPZ34nFoST+FiM3NTIcVmUeH1zQSbasql7Kemw2uwxeuLdmgCe
         VGHtY/I/3mEV0CrHoCjeDStE7iNt3J/Kri4VhKzgscpLUpPTbpROvVoUOCcqs9ChNw6b
         q5HV9Iws3nZJXfXibyXdXMdF+GoQbcRbfcCogX4vsFOR3g29IEddw8IJbRE/c+kkMyOA
         hX+rLxcaoi2yTJrAh6DX6bYOTldaWZPKv5G/sUsTJjQRfLWk839XapWXlmDFA3EkI8IO
         tpSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=zLYbBiIzoiRx4dGmBb1jDOqT6U7c1IHTYkGYyiq+6Ig=;
        b=hHfnmrhTIy2CKSc5aGAIYrTQ90DLkwoIGIbJ8tqX/N1VWN6I+7EKg8rd7gGdrjcstL
         XIPhLsz6omNeMH5jwF13GY8rporfGpxJaTQ9/uLCCSHJysfwRSlbE47wG6bxsrDxRWUi
         slTMhjNUv6eDJUimzolHGYewlXxzyXc1gwlENwPeEnZbDos877xwxFQ3FGmAHb59wPfX
         ez3oNXw46QiY1pyraeU611w94CfCt/pZdQyrr++sykW8WqAqmItxMtwUK6TdtKFF7g2U
         DMYyD3rsZu8cKNnojyjWSfztGgGkB08wTtDz4Sv/zmlvsnW7y2j1nBxNoIMLEer5iI89
         7pkQ==
X-Gm-Message-State: APjAAAVkIrqYxvjd07fARxoq1pKmppKLbkSaWvi8CMfPYZgbmJ0moqH8
	rJcBSV3GMdLqdFa/N1CbRmr+hQXL
X-Received: by 2002:a63:4346:: with SMTP id q67mr39610417pga.92.1553781823207;
        Thu, 28 Mar 2019 07:03:43 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.228.148])
        by smtp.gmail.com with ESMTPSA id e184sm38665192pfc.143.2019.03.28.07.03.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Mar 2019 07:03:42 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.c>
Subject: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove unnecessary parentheses
Date: Thu, 28 Mar 2019 19:33:28 +0530
Message-Id: <1553781808-10349-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle

This patch removes unnecessary parentheses while returning a value.
Using following semantic patch:

@@ 
local idexpression id;
@@

- return(id);
+ return id;

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.c>
---
diff -u -p a/os_dep/ioctl_linux.c b/os_dep/ioctl_linux.c
--- a/os_dep/ioctl_linux.c
+++ b/os_dep/ioctl_linux.c
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
 

