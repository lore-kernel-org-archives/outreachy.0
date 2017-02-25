X-GM-THRID: 6390634706454446080
X-Received: by 10.107.140.22 with SMTP id o22mr2699569iod.54.1488025447298;
        Sat, 25 Feb 2017 04:24:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.200 with SMTP id w8ls9005599otw.23.gmail; Sat, 25 Feb
 2017 04:24:06 -0800 (PST)
X-Received: by 10.157.18.204 with SMTP id g70mr468786otg.9.1488025446970;
        Sat, 25 Feb 2017 04:24:06 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si2259961pfd.3.2017.02.25.04.24.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 04:24:06 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 5so6600447pgj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 04:24:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=F4i1Y7MVTwBpu6sWSb/+Jfaa+Os/BapeRt8yz+XBqNI=;
        b=KJlhMjlEynwgk4qOjfmQHQcBND3B5MWq31n6Vp3BlgbbL1CqV4ybCI0EYp4vXwk+nJ
         0aCA6jvVIcrAGQpK48mWfAby4ZSQr6X6WTpModfr8LpTIHqA1kG6eSNPAjKld/2z3e57
         GeU4Kep+VETgxpqgBQeCYaPC9uQo6tSgvgzq6JNf2oY5o5Ni54oLVELIzYSEKl2Bkfnj
         542mP13F3qlPGGdG6Mqn9Up9QOdCdHsZFNguIWasP2QE01boiVPlxH1AT5mUOj/KeR/c
         WEL0s6/qQBXwIrrVFC5ywDUgOaZBEnt5dBZJzwawQZvbxzDoY8QiU1DGtUZCoYfh6MaP
         J9Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=F4i1Y7MVTwBpu6sWSb/+Jfaa+Os/BapeRt8yz+XBqNI=;
        b=oqECIETC8IgOQx76+HztmV1hvJvn1RrqYNOzBIphPzETQ4c5PbvG9phG2duLRBU+BS
         NkMX7vdfIEaQTg0y9ou5Ps1LFV1GOIL936G7w6BTVjVpSeRFvIG6geefhmenYcfp5aOi
         gy34sGXqv3wMKmP8BCkV37H9IGk/BzNrqsMTF1H1cggnDzISfjHBdgohqqNt+s3yQVPV
         7pNsoFQV9I/z9ZOC/iQQWIStYHoSrdt6vqsDa/j+urTN1r7hgIm5i9IVgwNTPLGpxUon
         3xyBeEjmJfETUT/PEf8DXgXjnRyYLFV67jp8BOSLzmUq9QsNDaDJnK8VeeNPdyPqnqAu
         aTuQ==
X-Gm-Message-State: AMke39mmbeIkP3K1uBa2QZEyYHfH5k/ybWlqXvJFemzhK2Z3ihh4Mwa1E8X6KVIIT+mCeg==
X-Received: by 10.99.129.200 with SMTP id t191mr9639449pgd.129.1488025446743;
        Sat, 25 Feb 2017 04:24:06 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.154.88])
        by smtp.gmail.com with ESMTPSA id 129sm20465824pgj.59.2017.02.25.04.24.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Feb 2017 04:24:06 -0800 (PST)
Message-ID: <58b17766.8709630a.800a5.a95c@mx.google.com>
X-Google-Original-Message-ID: <20170225122358.GA28083@<rvarsha016@gmail.com>>
Date: Sat, 25 Feb 2017 17:53:58 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: speakup: Replace BUG_ON() with WARN_ON().
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

BUG_ON() is replaced with WARN_ON() and EINVAL is returned, when
WARN_ON() is true. This fixes the following checkpatch issue:

Avoid crashing the kernel - try using WARN_ON & recovery code rather
than BUG() or BUG_ON().

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v3:
- Modified commit message.
- Added if condition to avoid dereferencing a NULL pointer.
- Added return statement, which returns EINVAL.

 drivers/staging/speakup/kobjects.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 4ea441d..5d871ec 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -833,7 +833,9 @@ static ssize_t message_show(struct kobject *kobj,
 	struct msg_group_t *group = spk_find_msg_group(attr->attr.name);
 	unsigned long flags;
 
-	BUG_ON(!group);
+	if (WARN_ON(!group))
+		return -EINVAL;
+
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	retval = message_show_helper(buf, group->start, group->end);
 	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
@@ -845,7 +847,9 @@ static ssize_t message_store(struct kobject *kobj, struct kobj_attribute *attr,
 {
 	struct msg_group_t *group = spk_find_msg_group(attr->attr.name);
 
-	BUG_ON(!group);
+	if (WARN_ON(!group))
+		return -EINVAL;
+
 	return message_store_helper(buf, count, group);
 }
 
-- 
2.9.3


