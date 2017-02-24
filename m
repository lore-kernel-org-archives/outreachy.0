X-GM-THRID: 6390634706454446080
X-Received: by 10.129.4.80 with SMTP id 77mr626725ywe.161.1487935592940;
        Fri, 24 Feb 2017 03:26:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.68 with SMTP id x65ls1811216ioi.33.gmail; Fri, 24 Feb
 2017 03:26:32 -0800 (PST)
X-Received: by 10.107.20.22 with SMTP id 22mr924825iou.21.1487935592212;
        Fri, 24 Feb 2017 03:26:32 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id s64si1518270pfk.0.2017.02.24.03.26.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 03:26:32 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so2813928pgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 03:26:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=bSbfM8a4H0jNbcljV8KJALAL6hOoRoRko9lm58pZca4=;
        b=I9qYYttA1+BgFtshMMGFptoj5JN9idIRGE0kiIv0GmBadIg1HCg7FMSV/WQstBz6Zs
         HvdFXu3UwyyvP9zXMawvzx2JZ+0ur/8/kNEH9CoJVSq5Xgo6l06Cq/UWmOhX+SNqKNJc
         XnlU0ExaY4SvDT/eaqNkqTLeZvFEi7J9LCafklvAf27ivmUZ+hcxuGv3NS/RX0iCSdKa
         EMhIzNvLDsML8USqwU5bhTYPEZ1x7/RfEptxKVkBUbWqjgOn01nkRbbqoswAlsLhJbR/
         38opspHGorQvKRO74bDg7dWqc2Ba6g8VumnAZc+miKsU5QyWtyRiAJg8xOtkzTdx+2mE
         TF2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=bSbfM8a4H0jNbcljV8KJALAL6hOoRoRko9lm58pZca4=;
        b=Z/QMkSOLyRqqnMZpt7A9HOGat8hPJJrrbVJSQMIvPpwkDw1ppnxWsriAVzZ3GIiZ9M
         /ITue20FJ3PTgL/RKk/RnvnvtDNwaQQNKPVsEOekSGk2BHZpugagIv23OeaI4//qWcpC
         IPuHFLVx+Nw14uU0nWgpfu2qNobK2E3TzeY9X9uc1mgDDBJPVIbiKVGkWtX+D3tzWmFc
         UGMCfBumCTN7JUCVgs+Liiai4C6drtuau8ds8RRheSy4wLM5pGnpSnjq+1y26am/EGIE
         nkEb+QxfBV6Itu/nbzKhmpHlP2PotOpwUkxoRCnBXRsxCWEwr2Z/fsf8wyUl3rnawmdl
         Zvuw==
X-Gm-Message-State: AMke39mAu/c2FaE4tr08Qd6RFB9SQqKzZluEBmV4l/25rQCuiAqqgo2hIK0HhNCr6OybVw==
X-Received: by 10.84.178.131 with SMTP id z3mr3206991plb.176.1487935591987;
        Fri, 24 Feb 2017 03:26:31 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5187:dc90:40c6:44ba:560a:4a16])
        by smtp.gmail.com with ESMTPSA id h68sm14665137pfj.124.2017.02.24.03.26.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Feb 2017 03:26:31 -0800 (PST)
Message-ID: <58b01867.c756620a.e6490.ed1f@mx.google.com>
X-Google-Original-Message-ID: <20170224112625.GA18346@<rvarsha016@gmail.com>>
Date: Fri, 24 Feb 2017 16:56:25 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Replace BUG_ON() with WARN_ON().
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
 drivers/staging/speakup/kobjects.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index ca075fe..8ea3a57 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -833,7 +833,7 @@ static ssize_t message_show(struct kobject *kobj,
 	struct msg_group_t *group = spk_find_msg_group(attr->attr.name);
 	unsigned long flags;
 
-	BUG_ON(!group);
+	WARN_ON(!group);
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	retval = message_show_helper(buf, group->start, group->end);
 	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
@@ -845,7 +845,7 @@ static ssize_t message_store(struct kobject *kobj, struct kobj_attribute *attr,
 {
 	struct msg_group_t *group = spk_find_msg_group(attr->attr.name);
 
-	BUG_ON(!group);
+	WARN_ON(!group);
 	return message_store_helper(buf, count, group);
 }
 
-- 
2.9.3


