X-GM-THRID: 6669267213374980096
X-Received: by 2002:a24:1c0c:: with SMTP id c12mr6580745itc.19.1552809777563;
        Sun, 17 Mar 2019 01:02:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9ad6:: with SMTP id x22ls3462799ion.4.gmail; Sun, 17 Mar
 2019 01:02:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzfGBoKXt4+lXFsBbYkLHnAfuzrgJzp6cz20+Qb+gLVaOaAksduu3jlgpIagG02zw5FcILy
X-Received: by 2002:a5d:8c97:: with SMTP id g23mr7906008ion.0.1552809776778;
        Sun, 17 Mar 2019 01:02:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552809776; cv=none;
        d=google.com; s=arc-20160816;
        b=rQp0SDBj6mjC+lJxzT1kajvzgdwb1X74CQweXfRVGebSk4mZQJs2Ha/Ilhxr4Zpsbq
         H8qg07XSuB09pA1c/TEFsEHwsRXoA2m4jBNMnHW23NBg/Zeq0ORFOtZ3/fQNmDfS4Uqo
         HeOQs8DF8AOV/wgI5vi6/T4aIokrYg6UoOr/IKRyJDFV1w4FNZCVqbXvn2tCUmTVBXK9
         S7fOCzkmGxn0GFlp6/D+1ITrRfBQWly5TY68Z1M2dPoMCi4M049CLCEs1q+T2NnHgYPa
         KrrNWRWKEtjc7G/qAO7Zx0mJl4/WFiqlIXeroj4waQq4cdrJfHPXSnqbirb2Fq5Hu8/e
         33Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=3c+W4Jzn8bmLgeNuibwCK4bVa7p6qoNoD3izDzbuzHs=;
        b=Noo1RVCF/rEW+oOCOjmLljjMtr2AMMei7AJefll66NwnqNVy5tSBjm2d9oe4hbRn1X
         obTYeF8mZechDoIbw0gIgSlDRj7iDVMksMt4o3XdB+6E7LTfeh+YKjmdwY0cSeBdpLvx
         tCOOesPg1RVaMGvz+1GKu4PNXES+SX1n85HTuIOPZKv2mFnYv2r7UbW/8e22qo8dcywH
         IDBFowNz1Xsybwck9AQdhTWgBqP/ByKfIn9oWHgc2pXCigZ943la9AOViD8soEHxwNty
         EM7JIHVgdLKnwkkVWSLza+0bxEZ9HAPqTE4mFr5O0Morss0swnF7fw+s+q7AnqHJssZs
         ZSBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NiIB6s3q;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id e74si418074ite.1.2019.03.17.01.02.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 01:02:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NiIB6s3q;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id u9so9266801pgo.7
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 01:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=3c+W4Jzn8bmLgeNuibwCK4bVa7p6qoNoD3izDzbuzHs=;
        b=NiIB6s3qgUIASnaRQVQnMuWKbtOa7QZyPVsYFAHT1t+5aUkwfnYlO37Pzykq02DyXk
         aFkKtGk5SEukTuf64AOsFeOrHLcbUHccF3RxJyzxYu51X1iLYoRXwI0gdsSJdA/WGg+9
         XBBHOL1VeO8mmt7fv5a6dFi2KIaO3ksrhLMlkA9UAiOXXcjb6qR4KGgoKKz2h1Drlwaz
         6VMX+/43NUd8qbCt6O4ppw7JHy+gcQJdH/RzJCQUS9lTpNtcULdxOtAzo/re3lwTr953
         +gEB0QJnPcBQcrGuaHcuEes5NS99OlWcyyG6514rMqxZ/X68X+DXhx8n/94BDZVpPySo
         QcCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3c+W4Jzn8bmLgeNuibwCK4bVa7p6qoNoD3izDzbuzHs=;
        b=XV5YsiFNsPxrCcGXN2RGVTYLRXETiMy37ruceEInuwvsi0LeFaRD/ozirQ5F/jehVR
         3Bis23fNVj+GbUfNdZZcxoUyMWLWt0lduC+8OkG74v2C8vNX+kunLjB5AZ8Gzkrcohoi
         cznRpb0y8lYrqd602PGuIpoQ+JN4eLv4HyKgJBau7rZm8li7GvJEQN0AfZjMCjyaiick
         D6drSYMEzAtdo/rFNcqYInAX51KqoCBZU941Kb6iMFmGz+5PshpqxvxFZ8UUSLJK0I77
         Kta8EApO1UgD8BfUxx6r3+H1iMvsaDtHJM5F50QOeMRo49u6wHnZSXBuSxozxVJvxonR
         rRLQ==
X-Gm-Message-State: APjAAAU4SIl35ysKncK0QQIYm8Atf3SRPEPm1EBahAPnXsEqxvp9/i5s
	APLYSo8fdGePo4Wxik02MsV9D0fnvUU=
X-Received: by 2002:a62:e904:: with SMTP id j4mr12933305pfh.174.1552809776222;
        Sun, 17 Mar 2019 01:02:56 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.60])
        by smtp.googlemail.com with ESMTPSA id m20sm22440491pfj.142.2019.03.17.01.02.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 01:02:55 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sound: drivers: aloop.c: fix a trailing whitespace issue.
Date: Sun, 17 Mar 2019 13:32:46 +0530
Message-Id: <20190317080246.2831-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

fix a trailing white space error.Issue found by checkpatch.pl semantic patch results for
aloop.c.

ERROR: trailing white space.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 sound/drivers/aloop.c | 18 +++++-------------
 1 file changed, 5 insertions(+), 13 deletions(-)

diff --git a/sound/drivers/aloop.c b/sound/drivers/aloop.c
index 8c3fbe1276be..0c27e17a19e5 100644
--- a/sound/drivers/aloop.c
+++ b/sound/drivers/aloop.c
@@ -273,7 +273,7 @@ static int loopback_trigger(struct snd_pcm_substream *substream, int cmd)
 		dpcm->last_jiffies = jiffies;
 		dpcm->pcm_rate_shift = 0;
 		dpcm->last_drift = 0;
-		spin_lock(&cable->lock);	
+		spin_lock(&cable->lock);
 		cable->running |= stream;
 		cable->pause &= ~stream;
 		loopback_timer_start(dpcm);
@@ -282,7 +282,7 @@ static int loopback_trigger(struct snd_pcm_substream *substream, int cmd)
 			loopback_active_notify(dpcm);
 		break;
 	case SNDRV_PCM_TRIGGER_STOP:
-		spin_lock(&cable->lock);	
+		spin_lock(&cable->lock);
 		cable->running &= ~stream;
 		cable->pause &= ~stream;
 		loopback_timer_stop(dpcm);
@@ -292,7 +292,7 @@ static int loopback_trigger(struct snd_pcm_substream *substream, int cmd)
 		break;
 	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
 	case SNDRV_PCM_TRIGGER_SUSPEND:
-		spin_lock(&cable->lock);	
+		spin_lock(&cable->lock);
 		cable->pause |= stream;
 		loopback_timer_stop(dpcm);
 		spin_unlock(&cable->lock);
@@ -879,7 +879,6 @@ static int loopback_notify_put(struct snd_kcontrol *kcontrol,
 	mutex_unlock(&loopback->cable_lock);
 	return change;
 }
-
 static int loopback_active_get(struct snd_kcontrol *kcontrol,
 			       struct snd_ctl_elem_value *ucontrol)
 {
@@ -899,7 +898,6 @@ static int loopback_active_get(struct snd_kcontrol *kcontrol,
 	ucontrol->value.integer.value[0] = val;
 	return 0;
 }
-
 static int loopback_format_info(struct snd_kcontrol *kcontrol,   
 				struct snd_ctl_elem_info *uinfo) 
 {
@@ -909,8 +907,7 @@ static int loopback_format_info(struct snd_kcontrol *kcontrol,
 	uinfo->value.integer.max = SNDRV_PCM_FORMAT_LAST;
 	uinfo->value.integer.step = 1;
 	return 0;
-}                                  
-
+}
 static int loopback_format_get(struct snd_kcontrol *kcontrol,
 			       struct snd_ctl_elem_value *ucontrol)
 {
@@ -921,7 +918,6 @@ static int loopback_format_get(struct snd_kcontrol *kcontrol,
 			       [kcontrol->id.device].format;
 	return 0;
 }
-
 static int loopback_rate_info(struct snd_kcontrol *kcontrol,   
 			      struct snd_ctl_elem_info *uinfo) 
 {
@@ -931,7 +927,7 @@ static int loopback_rate_info(struct snd_kcontrol *kcontrol,
 	uinfo->value.integer.max = 192000;
 	uinfo->value.integer.step = 1;
 	return 0;
-}                                  
+}                                 
 
 static int loopback_rate_get(struct snd_kcontrol *kcontrol,
 			     struct snd_ctl_elem_value *ucontrol)
@@ -1156,7 +1152,6 @@ static int loopback_probe(struct platform_device *devptr)
 		pcm_substreams[dev] = 1;
 	if (pcm_substreams[dev] > MAX_PCM_SUBSTREAMS)
 		pcm_substreams[dev] = MAX_PCM_SUBSTREAMS;
-	
 	loopback->card = card;
 	mutex_init(&loopback->cable_lock);
 
@@ -1198,7 +1193,6 @@ static int loopback_suspend(struct device *pdev)
 	snd_power_change_state(card, SNDRV_CTL_POWER_D3hot);
 	return 0;
 }
-	
 static int loopback_resume(struct device *pdev)
 {
 	struct snd_card *card = dev_get_drvdata(pdev);
@@ -1206,13 +1200,11 @@ static int loopback_resume(struct device *pdev)
 	snd_power_change_state(card, SNDRV_CTL_POWER_D0);
 	return 0;
 }
-
 static SIMPLE_DEV_PM_OPS(loopback_pm, loopback_suspend, loopback_resume);
 #define LOOPBACK_PM_OPS	&loopback_pm
 #else
 #define LOOPBACK_PM_OPS	NULL
 #endif
-
 #define SND_LOOPBACK_DRIVER	"snd_aloop"
 
 static struct platform_driver loopback_driver = {
-- 
2.17.1


