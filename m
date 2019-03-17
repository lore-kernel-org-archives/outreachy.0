X-GM-THRID: 6669270077430300672
X-Received: by 2002:a9f:2922:: with SMTP id t31mr7554334uat.16.1552810444672;
        Sun, 17 Mar 2019 01:14:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:f7d8:: with SMTP id a24ls2793958vsp.6.gmail; Sun, 17 Mar
 2019 01:14:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx77oaMZwVVyAq0Z4NDiDjZ1vbMF0KqxyeRBX1hCPCV8BbboyX6WicF9ifmtuXyPPd/MfGI
X-Received: by 2002:a67:f3c9:: with SMTP id j9mr7673241vsn.24.1552810443775;
        Sun, 17 Mar 2019 01:14:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552810443; cv=none;
        d=google.com; s=arc-20160816;
        b=a/sQ7Q2jAnVuxBQyO/mRUXkmK0TeDFf/rKl94LJ2jdGkPVKXDZMn2gSx/NeeGBAGWq
         zuMa6yiBEkW8iwrTKMRHB+ecazD795jCSX4aRG3gR/j8uBjkX60o0JxGyPaxRiTDQZAY
         LJiq/5NhRXNPlgpAaWBWArhzwPIZUMQ1ZRe+qr7tcCMS1Nnmz3koeZMx5oZ3zw6CWF1p
         Oy89ynHtYuvviYPxEu5LM1qMzwB9QI9mOiX9AX11Bz+eNIJjuBs8ALh9b1F5NH6HN6lL
         TfS82gquIL1jyYuuR9TUpjiXXHodpLH2Eb3MNKLHsJF/B+h9Fb+u+wrGt3BlMfVDdokm
         Zy2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=XSHue/+QoqizUieagbiSFm5CQoNPV82Zz0mAPQ9Nhtc=;
        b=IbUxvaC1MBW8tROpav8SIgWnifaVGzlQCBtpvVsl2k6YiR9xRaYYWc4mP+AvaCnj6u
         abs/1BMJy1bTftoqTOEa+TekMlrlg86wIrDrQ2Fu4wasCSfxhPXS0WgEcyEhqxq5yrEN
         PYTg/3rQJvtaIGB7ufRYICK3vsLG1CzP4DElAeu2QDE8iCmQZCf+9rcQT7QzVU1xym73
         IcMnxQnZA44S+6U/eBEjM6vfSPJf/LvI878lhtpOS9zlFnXz54AB07MIFNuB3ZDZbJ2Z
         F5TDyferKNhBhf3ipbTMSJKS/91uP41S8w+kIjyjjxEc2vIEzCAyY8yU0ztS27/l6A4J
         Otmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="eN/1DKXx";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id h7si311239uap.0.2019.03.17.01.14.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 01:14:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="eN/1DKXx";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id i19so9206775pfd.0
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 01:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=XSHue/+QoqizUieagbiSFm5CQoNPV82Zz0mAPQ9Nhtc=;
        b=eN/1DKXxeXyz7GqHS/Cm96zzbQGGqNpxZ6uqf18Vr4XmlDVk3mTLrUNmAVJXw8jNa1
         aq8aAVdqRkdNWkrWZBBGb2GNMLcHRhPMiJw7Q13EQx0UeqBMzpcpcO+/d0re7xTAPO2/
         AEHZOpOxZ0mCwBMAKOig4Trinz0wG9xTCa4D8dXKty7SBwm5Z2rcjMFDoLMN+mxK2qO7
         SHC75cf8HVls6pOgT7fsa2ufp88/3+rliyRdVEIhY9KqGBJ00dJ6QeRTbIjbz+s3DiJO
         gwCeZa2B8RkxUmK13uFrZ2JSMS/TLWi2+DI7MGUmVCf8qx/2uyyjgzbIrAO4R8bDmMe4
         EmIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=XSHue/+QoqizUieagbiSFm5CQoNPV82Zz0mAPQ9Nhtc=;
        b=W+xv/+QnUgqhR0YhT2ZnZICP/93ZwtwoBSYYm1Pt0L2m5BN6Itd/Mqx2iGRTfgqIZH
         RUEq7P+pDS0vEO9ndliVraGdHi20ac3M4oTD1YAk6bYnIS0YWufwWEX6jl4SnoOHzTOe
         9n2sFOx3ENz1icm6mYwrS8Q/YmMx+RHViWZMJVmR/GJs4YiZmf63zUnDG0mxQ3aCyni5
         ocmH5uMpHZJ0f8zsrT8aEl40AYdwuXJEf3YeZ28/OPe32dcY5d/gVYrJAZ16S7pCSLCA
         rFQ0umKygjQY9Q+GeB7OqBzPLgQyh+zlL6nv2AdhTVouhcZdoftjC3sU4Zzke7ax9oxp
         zETg==
X-Gm-Message-State: APjAAAU/9g3yCWMQKSQgTNT60LDplRGbxcoWvYHbstQ9tWPWdEJrD92f
	UTQ/b4SITbm9hBAE1QK0Z7w=
X-Received: by 2002:a62:4e8a:: with SMTP id c132mr12950121pfb.24.1552810442934;
        Sun, 17 Mar 2019 01:14:02 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.60])
        by smtp.googlemail.com with ESMTPSA id h126sm20753125pfc.135.2019.03.17.01.14.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 01:14:02 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sound: drivers: aloop.c: fix a open brace '{' error.
Date: Sun, 17 Mar 2019 13:43:53 +0530
Message-Id: <20190317081353.2999-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

fix open brace '{' issue to be placed in previous line.Issue reported by checkpatch.pl semantic patch results for
aloop.c.

ERROR: open brace '{' should be in previous line.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 sound/drivers/aloop.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/sound/drivers/aloop.c b/sound/drivers/aloop.c
index 0c27e17a19e5..45ccf8cf61cc 100644
--- a/sound/drivers/aloop.c
+++ b/sound/drivers/aloop.c
@@ -556,8 +556,7 @@ static snd_pcm_uframes_t loopback_pointer(struct snd_pcm_substream *substream)
 	return bytes_to_frames(runtime, pos);
 }
 
-static const struct snd_pcm_hardware loopback_pcm_hardware =
-{
+static const struct snd_pcm_hardware loopback_pcm_hardware = {
 	.info =		(SNDRV_PCM_INFO_INTERLEAVED | SNDRV_PCM_INFO_MMAP |
 			 SNDRV_PCM_INFO_MMAP_VALID | SNDRV_PCM_INFO_PAUSE |
 			 SNDRV_PCM_INFO_RESUME),
-- 
2.17.1


