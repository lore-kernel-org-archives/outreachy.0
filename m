Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CC61210F
	for <outreachy@lists.linux.dev>; Tue, 28 Mar 2023 10:45:07 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id t4so6442292wra.7
        for <outreachy@lists.linux.dev>; Tue, 28 Mar 2023 03:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680000305;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2K5gujEeaUuHifd0LjlH8VHsP+YjUeV3J8Cf4x3S1ss=;
        b=orlo1WZ7maQ/pE6kTok8KbaU184gDnqI9ZVV8b2QIflLUceP3f1DpFMOGbYg+hZ+dR
         fjIu06UPqvDHzjjxxZQettrLkTAz62bn/AMTzmJo/1hiN0WJNEu1KNotpcp2Df7Gcf2P
         adg8SC7w9gRyya98kQwUIG8Fxy9mMFdYfpwBtAGsouJr8zVRbjH9P6zN30pEUPu5muYs
         2vsq8cwMqllWa5NPuS1ZE9NYZw0XUxayvsyf7S3OILuI3mElhge0DDMBckprRAfnPvOw
         qSsXCoAlNtsrwxqexsCrgl4X2ll31dfmTbduooft8WI6oym2aeXk/BA9K4jCHF8R6o3Z
         66Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680000305;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2K5gujEeaUuHifd0LjlH8VHsP+YjUeV3J8Cf4x3S1ss=;
        b=Q4x0QFR1z9lCRmCUjAWCyu33oWLjAmZNFWkucyM8K5qeI5whp/zNMSX+kzU3KIGtIS
         Q2aVsBRWuZ67ZabghcmLWykY8zZtPxedcbHWotyCwashtaPhob/ZYRY8yjAdMf2bOB05
         KD9GnruWqomIClfsWW7qxq97HN4sUgXdspUbLXZhauD/P3qzEfeIizXtBLGGdvmL+SUr
         rJvc58szQCAcvoAcH3qMuPNnmFIMtLuAHxmSSoI9v0FX2IQYIQvzF2VphDpC1dgxMUqt
         qmCR46GgEwmhPxFO6UJ5XRVokVTn6q6gQCbJrCBCma/4/ILHO0rWrrDUa1PFUF0NtzvH
         k9og==
X-Gm-Message-State: AAQBX9fk5+cbCruLuTMnoJb0kTgyTbQGT65L5+qIvBcwnjXOqYScc7ez
	tkRNdOIURjqlIqe03zRNBqklpFsXMB+2ew==
X-Google-Smtp-Source: AKy350ZhLSbTO+wO/PoMe313I2jm7u1jVNeErX6k4/nFT/hDPifQWDyOq9yWLcy5iY8v3Sn3dDLLVA==
X-Received: by 2002:adf:dc12:0:b0:2d1:6104:76af with SMTP id t18-20020adfdc12000000b002d1610476afmr12010610wri.28.1680000305401;
        Tue, 28 Mar 2023 03:45:05 -0700 (PDT)
Received: from khadija-virtual-machine ([39.41.14.14])
        by smtp.gmail.com with ESMTPSA id y16-20020a5d4ad0000000b002d51d10a3fasm24033430wrs.55.2023.03.28.03.45.04
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 03:45:04 -0700 (PDT)
Date: Tue, 28 Mar 2023 15:45:02 +0500
From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: outreachy@lists.linux.dev
Subject: Suggestions on refactoring arche_platform_wd_irq() function
Message-ID: <ZCLFLqNjNawO2KnO@khadija-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hey Outreachy Mentors,
I am working on a check reported by checkpatch.pl saying,

CHECK: line length of 101 exceeds 100 columns
#182: FILE: drivers/staging/greybus/arche-platform.c:182:
+                                                                            WD_STATE_COLDBOOT_TRIG);


To refactor the function Ira sent me a link and suggested the use of
goto statement.

Alison guided me with this problem and asked to share the diff and start
a thread for discussion. Link to Alison's mail:
https://lore.kernel.org/outreachy/ZCHPokeiKV37uOmr@aschofie-mobl2/

Kindly review the following diff:

static irqreturn_t arche_platform_wd_irq(int irq, void *devid)

        spin_lock_irqsave(&arche_pdata->wake_lock, flags);

-       if (gpiod_get_value(arche_pdata->wake_detect)) {
-               /* wake/detect rising */
-
-               /*
-                * If wake/detect line goes high after low, within less than
-                * 30msec, then standby boot sequence is initiated, which is not
-                * supported/implemented as of now. So ignore it.
-                */
-               if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
-                       if (time_before(jiffies,
-                                       arche_pdata->wake_detect_start +
-                                       msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
-                               arche_platform_set_wake_detect_state(arche_pdata,
-                                                                    WD_STATE_IDLE);
-                       } else {
-                               /*
-                                * Check we are not in middle of irq thread
-                                * already
-                                */
-                               if (arche_pdata->wake_detect_state !=
-                                               WD_STATE_COLDBOOT_START) {
-                                       arche_platform_set_wake_detect_state(arche_pdata,
-                                                                            WD_STATE_COLDBOOT_TRIG);
-                                       spin_unlock_irqrestore(&arche_pdata->wake_lock,
-                                                              flags);
-                                       return IRQ_WAKE_THREAD;
-                               }
-                       }
-               }
-       } else {
+       if (!gpiod_get_value(arche_pdata->wake_detect)) {
                /* wake/detect falling */
-               if (arche_pdata->wake_detect_state == WD_STATE_IDLE) {
-                       arche_pdata->wake_detect_start = jiffies;
+               goto falling;
+       }
+
+       /* wake/detect rising */
+
+       /*
+        * If wake/detect line goes high after low, within less than
+        * 30msec, then standby boot sequence is initiated, which is not
+        * supported/implemented as of now. So ignore it.
+        */
+       if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
+               if (time_before(jiffies,
+                               arche_pdata->wake_detect_start +
+                               msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
+                       arche_platform_set_wake_detect_state(arche_pdata,
+                                                            WD_STATE_IDLE);
+               } else {
                        /*
-                        * In the beginning, when wake/detect goes low
-                        * (first time), we assume it is meant for coldboot
-                        * and set the flag. If wake/detect line stays low
-                        * beyond 30msec, then it is coldboot else fallback
-                        * to standby boot.
+                        * Check we are not in middle of irq thread
+                        * already
                         */
-                       arche_platform_set_wake_detect_state(arche_pdata,
-                                                            WD_STATE_BOOT_INIT);
+                       if (arche_pdata->wake_detect_state !=
+                                       WD_STATE_COLDBOOT_START) {
+                               arche_platform_set_wake_detect_state(arche_pdata,
+                                                                    WD_STATE_COLDBOOT_TRIG);
+                               spin_unlock_irqrestore(&arche_pdata->wake_lock,
+                                                      flags);
+                               return IRQ_WAKE_THREAD;
+                       }
                }
+               goto out;
        }

+falling:
+       if (arche_pdata->wake_detect_state == WD_STATE_IDLE) {
+               arche_pdata->wake_detect_start = jiffies;
+               /*
+                * In the beginning, when wake/detect goes low
+                * (first time), we assume it is meant for coldboot
+                * and set the flag. If wake/detect line stays low
+                * beyond 30msec, then it is coldboot else fallback
+                * to standby boot.
+                */
+               arche_platform_set_wake_detect_state(arche_pdata,
+                                                    WD_STATE_BOOT_INIT);
+
+out:
        spin_unlock_irqrestore(&arche_pdata->wake_lock, flags);

        return IRQ_HANDLED;

Thank you!

Regards,
Khadija


