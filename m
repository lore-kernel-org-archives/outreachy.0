X-GM-THRID: 6332847211633704960
X-Received: by 10.157.17.197 with SMTP id y5mr3493843oty.104.1474496004741;
        Wed, 21 Sep 2016 15:13:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.121.132 with SMTP id z126ls10858itc.5.canary; Wed, 21 Sep
 2016 15:13:22 -0700 (PDT)
X-Received: by 10.107.44.136 with SMTP id s130mr6109024ios.11.1474496002569;
        Wed, 21 Sep 2016 15:13:22 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id e66si59573pfk.2.2016.09.21.15.13.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 15:13:22 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c00::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x244.google.com with SMTP id q2so2879722pfj.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 15:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pXQDbuRiVYk4PMI7WWVvN/FPZa8oD/AEgbfq6lqWcBQ=;
        b=DmTcKDYHlaT0+iBFNFinF3OEPjKIBCvqMsIFITikdiL9j4Ifs4KNldyvGEpHZWJe6u
         foOfYrRD01NtD9R8oyV4dYojIfCQcPXZeyEVveIoz5QUbkOblQ7/VKO7sL+uBiLW6HHf
         RwfQMzq+LUTxdlRImqKSTy4jR55ut23WcZsDXQwsrd/TXohpwkjr3Az8znC+3N1J2zc+
         AvNarhZfbphLj/bSt3HozuUqcxg5p/yxJFX9ybxJBIWhS48O6L2tpB8BksRCzsG1MKcA
         vp/ekkcq0I1ADnHLBKUIMPyfppSI1ZHS/8ZHwn267MfQT+AtpsJPUk+hj+GhaFYaAYbb
         nECQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pXQDbuRiVYk4PMI7WWVvN/FPZa8oD/AEgbfq6lqWcBQ=;
        b=CGpcT0qxALwaWP1IJcX8WJQsfSvvR6wQUKVNRBg43iWhfcm9vdsxy5lhp2PDWNPoLr
         h/mNv8ecDeqHg3s4sWyyE4IdvdI1iWf8UidSmW01wlMTyY1YdU9uefzaxixTXq2bjyT2
         CwslkSGg1jnzPFaygssyHFT3X17PWMeS2kCg9FYP9jzMPgxbc8XFerbU1JjCYqCmITOW
         Ojwe3UN95YmaW59qN16P41eynX+a5NGx7grf58ZwvcUgUvfynUI6DZSoAiWECXFR7Mc3
         1o8S/wnS+alk/yb3wGeQAKzA4Z7LxPGvt7dn6FxcWnMQa6UYRLPZHWSzL8DABrFtjYxH
         5rrg==
X-Gm-Message-State: AE9vXwN1PyxSaMA+S969tGFF8eBx7hYWhDVupS2daACH/j49Fv5qV45UkoCSbaP7M92giL/P
X-Received: by 10.98.96.193 with SMTP id u184mr68598347pfb.85.1474496002315;
        Wed, 21 Sep 2016 15:13:22 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2001:558:6045:106:7d84:83db:c3b2:274a])
        by smtp.gmail.com with ESMTPSA id 3sm196332pfz.33.2016.09.21.15.13.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 15:13:21 -0700 (PDT)
Date: Wed, 21 Sep 2016 15:13:20 -0700
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyons.org>
Subject: [PATCH v2] staging: speakup: Remove unnecessary parentheses
Message-ID: <20160921221320.GA2628@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Issue found by checkpatch.

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
Changes in v2:
	-deleted space between & and synth->attributes

 drivers/staging/speakup/synth.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/synth.c b/drivers/staging/speakup/synth.c
index 810a214..54b2f39 100644
--- a/drivers/staging/speakup/synth.c
+++ b/drivers/staging/speakup/synth.c
@@ -407,7 +407,7 @@ static int do_synth_init(struct spk_synth *in_synth)
 	if (!spk_quiet_boot)
 		synth_printf("%s found\n", synth->long_name);
 	if (synth->attributes.name
-	&& sysfs_create_group(speakup_kobj, &(synth->attributes)) < 0)
+	&& sysfs_create_group(speakup_kobj, &synth->attributes) < 0)
 		return -ENOMEM;
 	synth_flags = synth->flags;
 	wake_up_interruptible_all(&speakup_event);
@@ -429,7 +429,7 @@ void synth_release(void)
 	del_timer(&thread_timer);
 	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 	if (synth->attributes.name)
-		sysfs_remove_group(speakup_kobj, &(synth->attributes));
+		sysfs_remove_group(speakup_kobj, &synth->attributes);
 	for (var = synth->vars; var->var_id != MAXVARS; var++)
 		speakup_unregister_var(var->var_id);
 	spk_stop_serial_interrupt();
-- 
2.7.4


