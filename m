X-GM-THRID: 6332847211633704960
X-Received: by 10.157.32.136 with SMTP id x8mr3195592ota.118.1474480892271;
        Wed, 21 Sep 2016 11:01:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.24 with SMTP id o24ls4900276otb.35.gmail; Wed, 21 Sep
 2016 11:01:31 -0700 (PDT)
X-Received: by 10.237.36.152 with SMTP id t24mr12296805qtc.23.1474480891834;
        Wed, 21 Sep 2016 11:01:31 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 7si619523par.0.2016.09.21.11.01.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 11:01:31 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c00::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x243.google.com with SMTP id q2so2666066pfj.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 11:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pwov1WjxgYWfQ6IcJZoIU5QMqzbr1OEg3MugPH4CIhc=;
        b=g0CXKORPDj5sS6wwgKbK5VFLtWeiB34cWyMPXoap/1MhX3Hw+Akym+EPP702gAz7P7
         OzlL1FyzX0sADdNQnfk1mC10/wyqdfqb7udRzGSVPhrhVJJIXw/v0ujzexuHlA8AHC7D
         KrwkEQEmRPZSOc2jrxsGziHBJ6Lcj6tBY866UG7mlXjyHwyNqoUwcEt0ZnHmL6PDqQoL
         rkJp1FBB12LQoWqcW2HgNp79IWkW1ecp62crA17G7hiS0M/Hi+Qp/MTdNRAPN/iEyqZR
         0k0NrGXVPJJU0M7lAYtLX77Wve7f1XT6RP3dgDdE8MyK2r6VI907dVP4I5Iigyen94NU
         LJFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pwov1WjxgYWfQ6IcJZoIU5QMqzbr1OEg3MugPH4CIhc=;
        b=jcwFKCfeUHBHHOQgUsPttJ/1AjUT1DeDGydbXZJVmEcEELjoi8qkZUuzEAWcvO8g6m
         IZrDmXHv/ye+Y1Cg+T6Q34VNk5qTo0pmtnTgfd1E4aUMQ4El3jLDjeH6paL7eTUy7Rgc
         UswpTsNLPYRadXJsT732THm9I6qQrLchy1AeukSDHEIX7yPMC/XzuTR/rHUcL1D5yD7Q
         a3reiVJ3lyktaaKzUVzQuZ0QgfLsjHAW7jD8tjxCPfW4C5vJIOBH8n6aazdPFMWWMdsv
         YSZkMZsqTO3uiiIs+/Q5nBt0WF0FDLnuIjniSZg6Hhr4YaK70Tslc2mqPItrJs30Udv9
         WVxw==
X-Gm-Message-State: AE9vXwMNdAGfhoeghcowwEm+oT2cXD9wr9WfecqeWtdry2RFGMh5YPgV0DKoqm2wO4TdcCoe
X-Received: by 10.98.17.83 with SMTP id z80mr66236475pfi.38.1474480891605;
        Wed, 21 Sep 2016 11:01:31 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2001:558:6045:106:7d84:83db:c3b2:274a])
        by smtp.gmail.com with ESMTPSA id m82sm88072232pfk.64.2016.09.21.11.01.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 11:01:31 -0700 (PDT)
Date: Wed, 21 Sep 2016 11:01:29 -0700
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>
Subject: [PATCH] staging: speakup: Remove unnecessary parentheses
Message-ID: <20160921180129.GA12401@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Issue found by checkpatch.

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/speakup/synth.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/synth.c b/drivers/staging/speakup/synth.c
index 810a214..9c2164f 100644
--- a/drivers/staging/speakup/synth.c
+++ b/drivers/staging/speakup/synth.c
@@ -407,7 +407,7 @@ static int do_synth_init(struct spk_synth *in_synth)
 	if (!spk_quiet_boot)
 		synth_printf("%s found\n", synth->long_name);
 	if (synth->attributes.name
-	&& sysfs_create_group(speakup_kobj, &(synth->attributes)) < 0)
+	&& sysfs_create_group(speakup_kobj, & synth->attributes) < 0)
 		return -ENOMEM;
 	synth_flags = synth->flags;
 	wake_up_interruptible_all(&speakup_event);
@@ -429,7 +429,7 @@ void synth_release(void)
 	del_timer(&thread_timer);
 	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 	if (synth->attributes.name)
-		sysfs_remove_group(speakup_kobj, &(synth->attributes));
+		sysfs_remove_group(speakup_kobj, & synth->attributes);
 	for (var = synth->vars; var->var_id != MAXVARS; var++)
 		speakup_unregister_var(var->var_id);
 	spk_stop_serial_interrupt();
-- 
2.7.4


