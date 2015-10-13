X-GM-THRID: 6205156993637810176
X-Received: by 10.66.132.69 with SMTP id os5mr29150281pab.12.1444750706723;
        Tue, 13 Oct 2015 08:38:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.76 with SMTP id j73ls466290ioi.12.gmail; Tue, 13 Oct
 2015 08:38:26 -0700 (PDT)
X-Received: by 10.50.112.104 with SMTP id ip8mr17745177igb.6.1444750706430;
        Tue, 13 Oct 2015 08:38:26 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id uv4si435114pac.0.2015.10.13.08.38.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 08:38:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hy16so24612608pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 08:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=EBsusF6keVgWUTmAP+6fbk2LkvXSnusj/OaMg/AGngw=;
        b=TuHwcAo1vwyLSC1SWL406R7XDFDPoNz9H2E2grF7kvfgGpnpIf7FSRo2HNxi5cfPO4
         vxtTc311H3dtE52KL/RegzxHVeNbxenoptOymiNpvjb4HtjQ5ALhfvYFYt27EK96qS0+
         GmPtlJaQpuOhwynQ08wways+50JAnBfFusuQCN7hrOwbPQr+KYOLTxTiupKpSvBbClGb
         R6TlWeYlwJT3bBWLAg48YpHiwsSW7hSvB/shk2irI5pGo5pX6DCmltMdaoMKbUcCXbrB
         w171r8nYE6M3aB8ZT2OYpBb9UT4E0PrzPZESe29VeT6+Jm7z9KbT0OcVCSh/PqnLueef
         7oMw==
X-Received: by 10.68.69.17 with SMTP id a17mr41351777pbu.10.1444750706318;
        Tue, 13 Oct 2015 08:38:26 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yz3sm4562390pbb.37.2015.10.13.08.38.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Oct 2015 08:38:25 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/3] Staging: most: Remove exceptional & on function name
Date: Tue, 13 Oct 2015 21:07:49 +0530
Message-Id: <1444750669-13552-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444750669-13552-1-git-send-email-shraddha.6596@gmail.com>
References: <1444750669-13552-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.561D2571.005F,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

In this file, function names are otherwise used as pointers without &.

A simplified version of the Coccinelle semantic patch that makes this
change is as follows:

// <smpl>
@r@
identifier f;
@@

f(...) { ... }
@@
identifier r.f;
@@

- &f
+ f
// </smpl>

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/most/aim-sound/sound.c | 2 +-
 drivers/staging/most/mostcore/core.c   | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/aim-sound/sound.c b/drivers/staging/most/aim-sound/sound.c
index f08545c..4d33763 100644
--- a/drivers/staging/most/aim-sound/sound.c
+++ b/drivers/staging/most/aim-sound/sound.c
@@ -279,7 +279,7 @@ static int pcm_open(struct snd_pcm_substream *substream)
 	channel->substream = substream;
 
 	if (cfg->direction == MOST_CH_TX) {
-		channel->playback_task = kthread_run(&playback_thread, channel,
+		channel->playback_task = kthread_run(playback_thread, channel,
 						     "most_audio_playback");
 		if (IS_ERR(channel->playback_task)) {
 			pr_err("Couldn't start thread\n");
diff --git a/drivers/staging/most/mostcore/core.c b/drivers/staging/most/mostcore/core.c
index 0045c10..1905547 100644
--- a/drivers/staging/most/mostcore/core.c
+++ b/drivers/staging/most/mostcore/core.c
@@ -1204,7 +1204,8 @@ static int hdm_enqueue_thread(void *data)
 static int run_enqueue_thread(struct most_c_obj *c, int channel_id)
 {
 	struct task_struct *task =
-		kthread_run(&hdm_enqueue_thread, c, "hdm_fifo_%d", channel_id);
+		kthread_run(hdm_enqueue_thread, c, "hdm_fifo_%d",
+			    channel_id);
 
 	if (IS_ERR(task))
 		return PTR_ERR(task);
-- 
2.1.4


