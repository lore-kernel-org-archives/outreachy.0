X-GM-THRID: 3148599001088
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1471a1a57b962ba4
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.67.29.231 with SMTP id jz7mr639590pad.9.1424762726991;
        Mon, 23 Feb 2015 23:25:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.111.41 with SMTP id if9ls1155596igb.17.gmail; Mon, 23 Feb
 2015 23:25:26 -0800 (PST)
X-Received: by 10.66.224.42 with SMTP id qz10mr16053555pac.0.1424762726383;
        Mon, 23 Feb 2015 23:25:26 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id bo1si4428874pbc.0.2015.02.23.23.25.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 23:25:26 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id rd3so34033795pab.1
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 23:25:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=euHoIQDmrdmlBTWjTif3BFr5j/WTUJQBJJZhb85bvoM=;
        b=aXGAAt4zbxKwP4TKyyOOlLxW0SkWwA+eFUcfvduVWGeIT8eSPY55GqUhq8KZnd48cr
         DL7RnIw4xNOlmDCil1Y4ykPTA3xp9ux7G5xMasd7wfbdBmhmlHSI5ev9NOYbTnnnU3O/
         MD6z0/QO874J+U1lRAnTddYezEgYQgwrK+YBb9uU05iJCTr3e/lrGy95F/BLDTx/Ex/u
         J8XyHOADLVpsrrW+3KC1A3o5rcsKXf5cSAqQ6iIZElJ2ffixMXr+Dt6AmemoYgMReCFr
         4Dqx7GUf9A4VvnvGZ09G01iOR5WRPYIS6XZuRxtHvJd5Eo8gZiXSaizmePxbrJnrg/WA
         N/Dg==
X-Received: by 10.68.132.67 with SMTP id os3mr1515771pbb.1.1424762725373;
        Mon, 23 Feb 2015 23:25:25 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id o6sm11022037pdm.47.2015.02.23.23.25.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 23:25:24 -0800 (PST)
Date: Tue, 24 Feb 2015 12:55:05 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2 v2] Introduce new macro
Message-ID: <a504aa6ef851fcf381d8dbf9a1804bb43fbbd343.1424761857.git.vatikaharlalka@gmail.com>
References: <cover.1424761857.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424761857.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

New macro is introduced for the number of channels in the
5GHz spectrum.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/include/phy.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8188eu/include/phy.h b/drivers/staging/rtl8188eu/include/phy.h
index 9a9ab82..1312189 100644
--- a/drivers/staging/rtl8188eu/include/phy.h
+++ b/drivers/staging/rtl8188eu/include/phy.h
@@ -4,6 +4,7 @@
 #define index_mapping_NUM_88E	    15
 #define AVG_THERMAL_NUM_88E	    4
 #define ODM_TARGET_CHNL_NUM_2G_5G   59
+#define ODM_TARGET_CHNL_NUM_5G	    45
 
 bool rtl88eu_phy_mac_config(struct adapter *adapt);
 bool rtl88eu_phy_rf_config(struct adapter *adapt);
-- 
1.9.1


