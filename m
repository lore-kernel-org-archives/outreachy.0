X-GM-THRID: 6471910913633943552
X-Received: by 10.84.141.1 with SMTP id 1mr1155909plu.39.1506936730212;
        Mon, 02 Oct 2017 02:32:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.85.142 with SMTP id j14ls1053945pgs.3.gmail; Mon, 02 Oct
 2017 02:32:09 -0700 (PDT)
X-Received: by 10.101.72.142 with SMTP id n14mr434949pgs.108.1506936729588;
        Mon, 02 Oct 2017 02:32:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506936729; cv=none;
        d=google.com; s=arc-20160816;
        b=fIviDBYtxI/kaP0uf66rNtUN9g+t3kk1VfUcooIaynhLR7vzIubvHZNGl6UFhYzrFx
         Hn5AfkXRGcx295CDJ9mfgXHW/R4tFgWW4WIf3b3ujpBRBLVznnnkCl50fQvPgqxmKChZ
         +y0UI+xAZ6HHfIeROYb8my1Vxoos6Phy+jI8aZH8MQaTOR7FS0WKZRQHeuEkT+3T9jmr
         YxG4WJS7DMKIuJ+9zAjSgc2TkA81aQLlswFeFyTIMXQp2BkDgqVq7rQNwjlwdHq3lcCp
         x4ixoeroPKSHth9YKqqp+2jJ0xpRa/CKpu7mF8s8zYlE0KIYjiGI69hfkqxrSUjU3H+7
         +/aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=hklhZrFYOsR1LdGYUyQVWwO2G1zt1f0EQMCR5dF4bY0=;
        b=db58ox060PmWZEDSFYtoiT42hljPFqJyvKQfnLCeRkb/twacRegD2Mtsd2atUAcsQF
         VIF0W91Zhc+ASJHUs7UxdHK8iK2U4F6sTgAd92rK5ZB3dsl4vL19wo0wJVA1BxqbxKo+
         4AkbOVIyQOWTx7Fmf13rmgwslWQuppfks009UuCtLvQQ8HewAak4aDQuA7ECpLSGiyFo
         fn6wWt36ta6cq5mqq0sSWNI8sOl7bD30KQOTwe3oL6QOig7dyRRQwYby1PhRTIGiBdYE
         1gbctBASObS5HwkyG1xr59EPR7Pcv4o/1tGClHBaR3+PVF5RlswyfQR7zfLNwgycDISB
         DFuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PmJVPutt;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id s81si1051944pfg.19.2017.10.02.02.32.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 02:32:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PmJVPutt;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id u27so5333728pgn.1
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 02:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hklhZrFYOsR1LdGYUyQVWwO2G1zt1f0EQMCR5dF4bY0=;
        b=PmJVPuttL63p3Sxwta2AMmvvLNkEFd7S7qMXW2Y8JOXHmYODCpAipjfiZ9eog2Pooj
         jouCNVxXNB+KytQpzDwnzlsbT4lEIWg37UrVAaD6x6ziVm5adxTFfZu85ASaWVz0/vqy
         uNKbs34/cmaKrTe5OwqCgjX/MGab3Y9dfVoft/OReZg5G9iHMwF12+TUsHreEQaGxGp9
         wyba7mXUmk80v7qildYaFzcqg5SDV+3BYZ+cM/kuEbbUuzMrDi1ndC7LAV+jnHcAXdv3
         xu6kTIKsPKljQIHWureo8mevuKNi0E2b9bgX5FFVxN2Vb1EqS1G1MMksxV8/rfm5q1jZ
         glnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hklhZrFYOsR1LdGYUyQVWwO2G1zt1f0EQMCR5dF4bY0=;
        b=WV4uAjohmFUa5HNxvkcIlIIgXgBN7y11Gi8GEtd5hQgtLv2APt5D4TeDQG+2ZEfmA7
         hMj0fPX90P3AcUR4ghs3Pxohp1BbDmy2j2VVZckkd639S+n7NhypdczdkW+BQRXtR7Fj
         i6e8FO2yaOby4w3N9UOnQYYYd+dgubyivnlc/eS4vPJXRrWa03m7nPOjVjWbGlze9qox
         ak9ENzc+GTps4S8BJSqDQswPOckXJA7EAGtUxw6qm4SE8BdPmbx0atHdYJG3QHaP4qrJ
         HV8fV69ZsbB4hA07GjYyYUmIE9cJC+929PyRnhmB3Uk1+Hie1FpCV2GRMDnPVZQiN0tb
         bx1Q==
X-Gm-Message-State: AHPjjUjzE/Ymy2yA9wTT3iPg8OfPCSmPJLI8Evu5KwiUO6GOMnRfijjx
	vHS71wfC/BBpT4eqYRktsk+Svb/Z
X-Google-Smtp-Source: AOwi7QA3TPFbEtzYI7zQAY7jrchHg0NY1vGjqIilhCCKtysvPSCKm3BI59Ef9FqDMC3fFMptspCA0A==
X-Received: by 10.84.204.133 with SMTP id b5mr13620211ple.440.1506936729171;
        Mon, 02 Oct 2017 02:32:09 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id b68sm16899733pfk.23.2017.10.02.02.32.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 02:32:08 -0700 (PDT)
Date: Mon, 2 Oct 2017 15:02:03 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: teddy.wang@siliconmotion.com
Subject: [PATCH 2/2] staging: sm750fb: remove typedef for enum in
 ddk750_sii164.{c,h}
Message-ID: <b223b918f7f5c208b16b8d00a161fab9e73faec8.1506936290.git.keerthigd4990@gmail.com>
References: <cover.1506936290.git.keerthigd4990@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506936290.git.keerthigd4990@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Removing this will make sure that we are actually working with
enum. Also it is not a good coding style to use typedef.

In this commit remove typedef and also drop '_t' which traditionally
means typedef

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/sm750fb/ddk750_sii164.c | 3 ++-
 drivers/staging/sm750fb/ddk750_sii164.h | 4 ++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
index 0431833..3d68e1d 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.c
+++ b/drivers/staging/sm750fb/ddk750_sii164.c
@@ -296,7 +296,8 @@ void sii164SetPower(unsigned char powerUp)
  *  sii164SelectHotPlugDetectionMode
  *      This function selects the mode of the hot plug detection.
  */
-static void sii164SelectHotPlugDetectionMode(sii164_hot_plug_mode_t hotPlugMode)
+static
+void sii164SelectHotPlugDetectionMode(enum sii164_hot_plug_mode hotPlugMode)
 {
 	unsigned char detectReg;
 
diff --git a/drivers/staging/sm750fb/ddk750_sii164.h b/drivers/staging/sm750fb/ddk750_sii164.h
index 6968cf5..e06ba72 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.h
+++ b/drivers/staging/sm750fb/ddk750_sii164.h
@@ -4,12 +4,12 @@
 #define USE_DVICHIP
 
 /* Hot Plug detection mode structure */
-typedef enum _sii164_hot_plug_mode_t {
+enum sii164_hot_plug_mode {
 	SII164_HOTPLUG_DISABLE = 0,         /* Disable Hot Plug output bit (always high). */
 	SII164_HOTPLUG_USE_MDI,             /* Use Monitor Detect Interrupt bit. */
 	SII164_HOTPLUG_USE_RSEN,            /* Use Receiver Sense detect bit. */
 	SII164_HOTPLUG_USE_HTPLG            /* Use Hot Plug detect bit. */
-} sii164_hot_plug_mode_t;
+};
 
 
 /* Silicon Image SiI164 chip prototype */
-- 
2.7.4


