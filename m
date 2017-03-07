X-GM-THRID: 6394684558131855360
X-Received: by 10.25.33.67 with SMTP id h64mr2341722lfh.22.1488878521108;
        Tue, 07 Mar 2017 01:22:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.67 with SMTP id 3ls1546829ljw.43.gmail; Tue, 07 Mar 2017
 01:22:00 -0800 (PST)
X-Received: by 10.46.69.7 with SMTP id s7mr3046072lja.18.1488878520576;
        Tue, 07 Mar 2017 01:22:00 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id y19si1561141wmd.0.2017.03.07.01.22.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 01:22:00 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id l37so24748676wrc.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 01:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=8PHhi5jUPZni+06KH/6r0eV3yxmGyipKRi/eDrTpKcQ=;
        b=qLCfyIQMkMrEMpDMwQ4i+nLBmyZxoiG/TVhS1ocVyB/egSt7LNtnUWMxoCeWBi/SsZ
         IDbyL0bHsA/ZirDjnIHI1Fp2iOp5MOBlp0vcKQ9Wg90Y1l9fbCrsRa8Qff0PFlCy9d7x
         iQUcCI4amy0h8NsEyp9xlDpPqNVzIIBbpUO3mLZ7F6T8zaVhXD6nVeoIBvr0HrWlkJxg
         kyYgQDzznMqBE8CqPo0ftWZId8pDpZBCLGIRD7zXsMkjmeHHiqsWlDpJ+Y6TKvttXtr1
         YDfiAYMUBlNFNCmsvbp69fAx63MIaVmS4l/nphgvgRxoPehPXtj2r9H9Rkb9PnDjoXEC
         9pSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=8PHhi5jUPZni+06KH/6r0eV3yxmGyipKRi/eDrTpKcQ=;
        b=otej/10U+HR3iMTVBiBDuy1k9sBNM7QNqyYjwDbDbWIOzUv4sPygIc8odlK7xB5pki
         aYpQA4pa89Qy7GsQD/plTa/H+ikIJyqVlQ310xZKN5H9ORTTqIYDT7gyNWnJCjmb6uxV
         B4lh2H+fvzpUBBpLh7vxUb0VVt4pyux7JwMzTFEPH7qyhjpw4x2N90JLK9BPGFsTHWWU
         tZtU3kPZOPhrbjHCXirFhNEXiC9+YPNcZPKLjg33wAhwHYlLwcUjHWCpnGyBHZNC6OkA
         uiEGv0kZ2M+O4+Kg5+3as3AQ0N4JPOPk1UQ01Aae3tO82H4zlYSj6s1lxJioIwkyjY89
         wOlA==
X-Gm-Message-State: AMke39kP4gITxPJXWUQuicoNT9bLD2YfiA+ew8vDrKQTIC3KCW0ZjdUyLH1fmsuy1oYe+w==
X-Received: by 10.223.164.9 with SMTP id d9mr18527404wra.146.1488878520331;
        Tue, 07 Mar 2017 01:22:00 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:d457:4c45:37be:7df3])
        by smtp.gmail.com with ESMTPSA id o15sm22145863wra.61.2017.03.07.01.21.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 01:21:59 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] staging: speakup: kobjects: Delete comparison
Date: Tue,  7 Mar 2017 11:21:55 +0200
Message-Id: <20170307092155.14802-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Delete comparison in 'if' structure to fix the checkpath.pl issue:
CHECK: Comparison to NULL could be written 'synth'.

Comparison to NULL is not necessary because 'if' structure tests if
'synth' is NULL anyway.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index ac6ed8b..0cd5384 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -391,7 +391,7 @@ static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
 		len--;
 	new_synth_name[len] = '\0';
 	spk_strlwr(new_synth_name);
-	if ((synth != NULL) && (!strcmp(new_synth_name, synth->name))) {
+	if ((synth) && (!strcmp(new_synth_name, synth->name))) {
 		pr_warn("%s already in use\n", new_synth_name);
 	} else if (synth_init(new_synth_name) != 0) {
 		pr_warn("failed to init synth %s\n", new_synth_name);
-- 
2.9.3


