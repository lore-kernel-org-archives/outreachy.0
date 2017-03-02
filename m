X-GM-THRID: 6392776978042191872
X-Received: by 10.129.104.85 with SMTP id d82mr4245695ywc.9.1488434378170;
        Wed, 01 Mar 2017 21:59:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.4 with SMTP id w4ls4862688otb.8.gmail; Wed, 01 Mar 2017
 21:59:37 -0800 (PST)
X-Received: by 10.129.172.96 with SMTP id z32mr4605189ywj.39.1488434377694;
        Wed, 01 Mar 2017 21:59:37 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id f7si1248741pfk.5.2017.03.01.21.59.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 21:59:37 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id x17so8189488pgi.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 21:59:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nJbFKStiuZdSe0XZ8k3SumlirdMd49VWRgGkfjKo8y8=;
        b=Y8MzWtKIgOHIOF0ollCB34TxBVIco4T8nO80qFdO7nKI+S+wPqMRybv6mtOLJbkCcj
         6rVAmXLAvpmKR/ru2cdp4KQCpDdLQsoA9ZI9dycX6fVQyrP07+zkgiKYGSIGc6xM/6y2
         F2dzfkOhO22viE9unF5qN7t4OrNe+MOiFfobaKXwEvejdC4XX8KFY+ImTVHw73ohV5A2
         xCcWc4sxS+W/vQGtY0c6IQUWmXUWfaIZsGBdr379gWGd8o41An0OZ7EwrlxC8XpdTQxQ
         NAyHEr6Xg79LdRjCR1LECDseKWJerdziMjORzT2pbp0MtjLqhvTwhFbdgbNif5Yes0+r
         i9Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nJbFKStiuZdSe0XZ8k3SumlirdMd49VWRgGkfjKo8y8=;
        b=NV1U+Lmv9fOYEQPIxDRT+n48JdnWsspfpeCFaikDN9iBLQFW5GHxlHqSutjcF/XLdN
         hEt6Ju1kmPBnDop/OYyiCkEJ/A3Zk/rRp8fy6xu5ioCN/3aSZXG93ayPJBqkVcMIAB9W
         WIi0MBSrsn9nELHgckaFdDkuYfZvJMJKpQTVHfBmMt2hSXzu43dpUoXVyR0PQQ+IhmDw
         nqjrEVZnwxkPBhfhQpeNxGSIKAZl7CsjHReKrthxE7nxOjSRPUeofCQ5T/rd0ERoqFAr
         EdRq1LUnLe5rAIXnwA2BSvd7NY+e6zlQXNHqaZvraonyLRfcU4w9zJ+JAmjRLpVuBRll
         RYqw==
X-Gm-Message-State: AMke39nGxafT8HCRGJBPIiPXeagyTs93Orr5nof/zSdgz/YT1/tBd1DJrm3NdA2L7oIzPw==
X-Received: by 10.98.104.4 with SMTP id d4mr13697459pfc.2.1488434377417;
        Wed, 01 Mar 2017 21:59:37 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id c64sm14023242pfa.45.2017.03.01.21.59.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 21:59:36 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v3] staging: rtl8192u: Constify ieee80211_qos_parameters structure
Date: Thu,  2 Mar 2017 11:16:14 +0530
Message-Id: <1488433574-26080-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Declare ieee80211_qos_parameters structure constant it is only passed
as src parameter to the function memcpy. The fields of
def_qos_parameters structure are never modified and hence it can be
declared as const.

Coccinelle Script:

@r1 disable optional_qualifier@
identifier i;
position p;
@@

static struct ieee80211_qos_parameters i@p ={...};

@ok1@
identifier r1.i;
position p;
expression e1,e2;
@@
memcpy(e1,&i@p,e2)

@bad@
position p!={r1.p,ok1.p};
identifier r1.i;
@@
i@p

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
static
+const
struct ieee80211_qos_parameters i={...};

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v3:
	- Fixed the commit message.
Changes in v2:
	- Improved the coccinelle script to check for safety of the
	  modification.
	- Improved the commit message.
---
 drivers/staging/rtl8192u/r8192U_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index b631990..bbb5f58 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1814,7 +1814,7 @@ static void rtl8192_link_change(struct net_device *dev)
 	}
 }
 
-static struct ieee80211_qos_parameters def_qos_parameters = {
+static const struct ieee80211_qos_parameters def_qos_parameters = {
 	{cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3)},
 	{cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7)},
 	{2, 2, 2, 2},/* aifs */
-- 
2.7.4


