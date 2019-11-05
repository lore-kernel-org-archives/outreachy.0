X-GM-THRID: 6755703261702914048
X-Received: by 2002:aca:b986:: with SMTP id j128mr104930oif.95.1572934738476;
        Mon, 04 Nov 2019 22:18:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:1da7:: with SMTP id z7ls679122oti.10.gmail; Mon, 04
 Nov 2019 22:18:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqwmVkROpywCJBOIFvximRE23A+BDZFyqUUY5XACMK2mR7QmzRHNxlDAPM99KeXmTBOfCOa/
X-Received: by 2002:a9d:68da:: with SMTP id i26mr5947953oto.295.1572934737397;
        Mon, 04 Nov 2019 22:18:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572934737; cv=none;
        d=google.com; s=arc-20160816;
        b=s9wofT8Yj4+YK8aD9240jp38xvYClZNbPvQt6zgcrI9Kdt6VGthxQKoKBh/6Itn0K3
         oE7EEhX6xufIzsuiMtY5ZGwk77jgJgKu6Fyd2DgVOpLzRP6jnLRj0pEF66zoU7dOP5HI
         q/jyIVKgjlvnR7T3D4vtXgVNWwwD3IMklujvY8AVEUlq3x0UklytCzahMb7AmH3ba917
         zYux4v8RqhnlJCDQ1LQVXD8mWKdrCUJJTlg8Skuo7H9YS9z9gz6YnoYDaU3sWu+PxjJE
         2+RlDSwqAKBGiCUewVl72F/3SIU9cHejgjCBoFLTsCH3a0N8qpo3RoTV6wzrdlTGCivg
         /iuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=xQd+mFcuutX/j3wA2QasxdgxCc5wRyLs+0uV7YuWac0=;
        b=PGpLSnY8uTKJSyqfsQz0Ma3VKfwYtcHV4YMO7gRWwv17NW8QGf2WnQUquJDyyQ7dQB
         N3EdqXUB1a0fK7ncyfsyHukGyh4E07Y9YPSL3DAe98/jTH37G2ZWQkQw+DtS9rvgmy79
         74BnnBMc0qMqpRRj/fhDQFCX+aDZUEl8w3OnHl+rV0uXsWFpoBF4u+qPh46xAbnHSvKm
         3mTG85FGeVrMJVAbQI8N8BWruVMDDHXKyuLn5963cSgJPVVy2hAzBL64itm0gFBDH/jR
         tqzUDvsttLqvEDOHZ/OvbicOhh9Vci37iF3r9zABocZLPGOMuAip2Tj1BlEIpoayIaWZ
         Pr0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OaH56Zk1;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id j190si592954oib.0.2019.11.04.22.18.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 22:18:57 -0800 (PST)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OaH56Zk1;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id h2so14583671qto.1
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 22:18:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=xQd+mFcuutX/j3wA2QasxdgxCc5wRyLs+0uV7YuWac0=;
        b=OaH56Zk1TXuiC5eMfAdhlk/NNbEw03EmzNt1V9Tqkye/pXM8HyZHQMcgSDa8YdvzAX
         jbwwaAaMIDyDblgR8HZmC2zKTEzBFVQXwcB+drmBbsiRG7pvez32wNb3JexxjcFA+bdo
         goiEjyLEq6turPYLejNsa3553XDW4vv91tO2gWcl+WkKn9OGjbdwTscPGYiwcRHYe/0k
         C/JyjqOl2mzhomJKXOJWiXjgPiAi6t3JuS1dZCrqNXWZpN4mIouDf8lY++qFZJ/gLMfV
         1giLkp9p2yuhdr3gW7mTW9EXnzH8Wl7QamR+Muv3YG/bWRhDmIuUEvn8pmgPDViO5Yzd
         dqHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xQd+mFcuutX/j3wA2QasxdgxCc5wRyLs+0uV7YuWac0=;
        b=ZbEBLSDteTYbm2VGfHd49AnSuOUUozMSiy4nKRPp9XX9ljth7kA/afxuec/gGKbPPb
         fHxdaed6OcafjEqSyY5/YgWPmrGH8TZ9cRX/VeGcQ53MgHMJUNW/hVV4cpe2Bq1crMiN
         NQLZ6cNVTY2VaY3iFHSRj/oaTCzt2HSSLJnTMMrEKQUUrdIMdIhKqiFdgnwEFYpQVKr6
         LY66u2TlXbKo/ySEQAB6M2ChhKUrozaPbLxGXFSYXuT8ZK2tuaXjpf/y0djbbdlVNxaF
         ZQhsh2Yez7e7VSVtnDfAm15rVx3oWDj/89Mov1mjwH/skG5AYJ05XpriXxmlviETG+FM
         g3Gw==
X-Gm-Message-State: APjAAAUpBcsRv+oHlBAwFBG06RuuSrUskhDBWh6QIoCLxIShxh6cLyd5
	UbCtgu8HulHVowGzs0nhMKk=
X-Received: by 2002:ac8:5514:: with SMTP id j20mr15797617qtq.257.1572934736688;
        Mon, 04 Nov 2019 22:18:56 -0800 (PST)
Return-Path: <nachukannan@gmail.com>
Received: from ubuntu ([107.15.113.108])
        by smtp.gmail.com with ESMTPSA id o5sm7830447qtq.10.2019.11.04.22.18.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Nov 2019 22:18:55 -0800 (PST)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Nachammai Karuppiah <nachukannan@gmail.com>
Subject: [PATCH] drm/amd/display: Replace list_for_each with list_for_each_entry
Date: Mon,  4 Nov 2019 22:18:54 -0800
Message-Id: <1572934734-97392-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace use of list_for_each with list_for_each_entry to simplify the
code and remove variables that are used only in list_for_each.
Fixed using coccinelle.

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_irq.c | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_irq.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_irq.c
index fa5d503..06a54fc 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_irq.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_irq.c
@@ -111,17 +111,12 @@ static void init_handler_common_data(struct amdgpu_dm_irq_handler_data *hcd,
  */
 static void dm_irq_work_func(struct work_struct *work)
 {
-	struct list_head *entry;
 	struct irq_list_head *irq_list_head =
 		container_of(work, struct irq_list_head, work);
 	struct list_head *handler_list = &irq_list_head->head;
 	struct amdgpu_dm_irq_handler_data *handler_data;
 
-	list_for_each(entry, handler_list) {
-		handler_data = list_entry(entry,
-					  struct amdgpu_dm_irq_handler_data,
-					  list);
-
+	list_for_each_entry(handler_data, handler_list, list) {
 		DRM_DEBUG_KMS("DM_IRQ: work_func: for dal_src=%d\n",
 				handler_data->irq_source);
 
@@ -528,18 +523,13 @@ static void amdgpu_dm_irq_immediate_work(struct amdgpu_device *adev,
 					 enum dc_irq_source irq_source)
 {
 	struct amdgpu_dm_irq_handler_data *handler_data;
-	struct list_head *entry;
 	unsigned long irq_table_flags;
 
 	DM_IRQ_TABLE_LOCK(adev, irq_table_flags);
 
-	list_for_each(
-		entry,
-		&adev->dm.irq_handler_list_high_tab[irq_source]) {
-
-		handler_data = list_entry(entry,
-					  struct amdgpu_dm_irq_handler_data,
-					  list);
+	list_for_each_entry(handler_data,
+			    &adev->dm.irq_handler_list_high_tab[irq_source],
+			    list) {
 
 		/* Call a subcomponent which registered for immediate
 		 * interrupt notification */
-- 
2.7.4


