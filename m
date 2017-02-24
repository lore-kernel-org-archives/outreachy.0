X-GM-THRID: 6390634706454446080
X-Received: by 10.237.34.35 with SMTP id n32mr1036532qtc.65.1487955930684;
        Fri, 24 Feb 2017 09:05:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.142.3 with SMTP id q3ls2046427iod.2.gmail; Fri, 24 Feb
 2017 09:05:29 -0800 (PST)
X-Received: by 10.36.98.69 with SMTP id d66mr999662itc.7.1487955929897;
        Fri, 24 Feb 2017 09:05:29 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id s64si1695641pfk.0.2017.02.24.09.05.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 09:05:29 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 68so1236583pfx.2
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 09:05:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=FYj5vddLCqmm6VGlTBeZlJDEi1/78VbaepOuNqUfmm0=;
        b=HrYsoNzUfegV6TCsi1yzDjJYDfEuuozO89N5/wEdFxjXrEsHNtA2PvRp4KVgfyoJwD
         jTsKq07Vj+2ZNZEH5gdo82T+Usukl7bZOPelJqVizM0qTAmnp2vMCO4oigIcXiFNfGv2
         Dk5ftlIQ9F1UCByzcXD6f53BGmxZVw4MVlSE8Wp8kV7LCrN5PezVcCFzMQCnXLCq4z1t
         G1NFG16jZRiuJ+Oo6fhykIVDrNj7MtZLHgFylDPqFY+PS8Y3bnnMEluZmi8xYUSGdOnz
         jvyvaI6vTdsmAiYDxG5P4sjcyTVoN/XLuVX7ZPyOkpiohsEXVd3lbqbK2Hsfa38fs0Gt
         bpWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=FYj5vddLCqmm6VGlTBeZlJDEi1/78VbaepOuNqUfmm0=;
        b=E7qPjmM+2kW7TyIuBp2V6r3w3UvQ7pxrJCRlxbasqtuyK7UyyhvrTLBb3ZDdPYtNth
         uLKTEUsvgonwnxvXEQ5cl9XMgYKot1+CmX+KoRtyMPhxm6FwEvwWZsGnx3ChFiaf2h+g
         goD3iiW9vh9ArUMA6lmAQH13JiWVq8hswrjPRwK6oOivObaDUlFkGvF7Fsso1ZEwB8bs
         DXrdwG/QXXIzf1N8hw8eanpFObuDr5APwvO6zsz0qjqJPtk8gAmCfe0XRs8PoatA/fTd
         HJlkMTb1+PMA4HN+L+zhDFLiUY8JtogI3vB/HvGubBMfB2VRiNLa0A3nwk3JrzF0V5d9
         MsGA==
X-Gm-Message-State: AMke39kRF2v0rm4mHScXOnnNqtQzFBkgZwY+tHDsU5ItBeL5FsY8gr4BpKGledAb2Lb4Rg==
X-Received: by 10.99.253.5 with SMTP id d5mr4666262pgh.47.1487955929674;
        Fri, 24 Feb 2017 09:05:29 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.133.132])
        by smtp.gmail.com with ESMTPSA id z74sm16112714pfd.70.2017.02.24.09.05.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Feb 2017 09:05:29 -0800 (PST)
Message-ID: <58b067d9.4d8d620a.8af7e.1ae6@mx.google.com>
X-Google-Original-Message-ID: <20170224170521.GA28962@<rvarsha016@gmail.com>>
Date: Fri, 24 Feb 2017 22:35:21 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: speakup: Replace BUG_ON() with WARN_ON().
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

BUG_ON() is replaced with WARN_ON() to fix the following checkpatch
issue:

Avoid crashing the kernel - try using WARN_ON & recovery code rather
than BUG() or BUG_ON().

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- Added if condition to avoid dereferencing a NULL pointer.

 drivers/staging/speakup/kobjects.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index ca075fe..68a4cc8 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -833,10 +833,12 @@ static ssize_t message_show(struct kobject *kobj,
 	struct msg_group_t *group = spk_find_msg_group(attr->attr.name);
 	unsigned long flags;
 
-	BUG_ON(!group);
-	spin_lock_irqsave(&speakup_info.spinlock, flags);
-	retval = message_show_helper(buf, group->start, group->end);
-	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
+	if (WARN_ON(!group)) {
+		spin_lock_irqsave(&speakup_info.spinlock, flags);
+		retval = message_show_helper(buf, group->start, group->end);
+		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
+	}
+
 	return retval;
 }
 
-- 
2.9.3


