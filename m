X-GM-THRID: 6753034664415330304
X-Received: by 2002:ac8:424d:: with SMTP id r13mr1752584qtm.111.1572462335270;
        Wed, 30 Oct 2019 12:05:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6214:7a1:: with SMTP id v1ls67299qvz.15.gmail; Wed, 30
 Oct 2019 12:05:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxIGuPR6UTqstzR6WXcsb3Yve//T7Q4ghRKPVL332oQNQzsoks6tE+vDFI8qkcKismNFsjz
X-Received: by 2002:a0c:fd63:: with SMTP id k3mr635718qvs.185.1572462334125;
        Wed, 30 Oct 2019 12:05:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572462334; cv=none;
        d=google.com; s=arc-20160816;
        b=NzhvVvbgLRziHeYcrA5Rkq/SAXd1o61VRtowip78KRPPHHp8N0FHhFElgAnPYWupz3
         Wcqn05ociNuCyS2UzTSg38wqwHe9x2LTo6F+kE1+SWZPdRvV2dYTiWMb6vKHSSMWqOQ+
         tLJ8dms1phrayPZe12O1pH9/1Az1cQKgCz8dWqj6g+hu/8tcokTEOixbXo+VI0rXlk/n
         pToWpC5HsoLwJjX8HEMBTLfVEfAS2AUX6JOWQ5K0FnkidXz6+8lIcN9ZsDLK/u4oJbSC
         vEWgYBLfuMb95PmXXbRhk4QWsDRYD7YmwX7ki8cd9QvIFCgtQ8UujI02YHJ15TvRQoHc
         uzCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lAvEaeqENeVb/DhAt46H1R5niz9Z9sNvfAe5diIhyRY=;
        b=hMpk+whSdtLyg0B33ROT14hJDsM6ufaVos6/GTyN2cK2aLjUT0B4vjQqGk7J3xyIOh
         KoG6uhVeSK1pE500o9d2i7o73v+elz8UsfpcLuABysMA4oJp2PX83ICgH5fAJnD6NzgW
         4Q5W5R/05a0St7N18+0WqO0mEgTvtoysYe282Ii1fDlw6jUtkrRwIV8KkY+gY4s0utsP
         FWgNaZDey3ZcqvtNUczNO0zVdzIj95DFdumB2DUD5X2I44XYtUstHQ2k75h3qxpDnJWu
         xTcTpx3a8ax1RG9fq8ujZrmIfY0R4gHt7AbxG33dsQjofnOMVe/Cuietd+PKRCysmkPT
         XykA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IzujxKXS;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id z90si187225qtc.3.2019.10.30.12.05.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 12:05:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IzujxKXS;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id c26so4731008qtj.10
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Oct 2019 12:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lAvEaeqENeVb/DhAt46H1R5niz9Z9sNvfAe5diIhyRY=;
        b=IzujxKXSgNjj59kmAYNbKT0SSfdChyjtPWZ2sJwrOEH51SwU2cBWkfZUWI0hQnZpKe
         jMpkMqc0zdX7q/KUwN1GRKfwJlmxUFBW2fA9sardmsm0vL5DHNFbd6aRdfVzruu6b1N6
         sQeznqjWOgdo1MTLAL7I0CtwP/ysHiK/KlFQt/FqtfCLdtbfT2dtPh8Q08rN9Wob/j4n
         5DuX85chQnsqjWBXRRCUnA/GNXE73s3aqhCySv3skHX6hNizAPFsV9YMQTWnYFmiNAAR
         Msg9PU5PS0uHWrmnOG26tF42Qr43REAvPp5mKug3f2cJvRXaQkixmtRtjSyRmPxC57qF
         p20w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lAvEaeqENeVb/DhAt46H1R5niz9Z9sNvfAe5diIhyRY=;
        b=Y1IltQ+X8LxB+7yqBJPSTLEbDfBoplrGr1ztXjQgjdpE+gzIDgs1eeY0XyxNeer7j0
         7dlpk+2RbphBkvWMuejZAI6cdrU8gH5x3He5QW3ROjuVI3FR0jcVfwlrZ4eRvqCtj1N6
         zonoszuADO/6gPmFYep9rohbsLn0gn4OAylBpAZBAkkY3Zqe83C3KJLw+HHN7zZmkdHH
         84+YhbouZgEzmKPZ4dtqaSSTXd2oePELsw5KV3ZMwV+H/1rwQ67wOYPpfMvSBa33ceR2
         WpYCCYraQgaX/J+x3o0ELTNyatAvOsmtshw7XWFQvGgltyTrCnv+lLl5Bsw9Esf7lJIo
         B1Iw==
X-Gm-Message-State: APjAAAUqb0uPGIqsYJD8oFa6/Zw6/oBdkOk/vx1r1jDFFhj1/dKGFzz3
	IPpiU33uINMf/kq+DAo5da2yspLiaFo=
X-Received: by 2002:ac8:450b:: with SMTP id q11mr1670768qtn.7.1572462333540;
        Wed, 30 Oct 2019 12:05:33 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.ic.unicamp.br (wifi-177-220-85-136.wifi.ic.unicamp.br. [177.220.85.136])
        by smtp.gmail.com with ESMTPSA id o28sm690544qtk.4.2019.10.30.12.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2019 12:05:32 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	nishkadg.linux@gmail.com,
	kim.jamie.bradley@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH v3 3/3] staging: rts5208: Eliminate the use of Camel Case in file sd.h
Date: Wed, 30 Oct 2019 16:05:14 -0300
Message-Id: <20191030190514.10011-4-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191030190514.10011-1-gabrielabittencourt00@gmail.com>
References: <20191030190514.10011-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Avoid CamelCase" in file sd.h

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/sd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/sd.h b/drivers/staging/rts5208/sd.h
index dc9e8cad7a74..f4ff62653b56 100644
--- a/drivers/staging/rts5208/sd.h
+++ b/drivers/staging/rts5208/sd.h
@@ -232,7 +232,7 @@
 #define DCM_LOW_FREQUENCY_MODE   0x01
 
 #define DCM_HIGH_FREQUENCY_MODE_SET  0x0C
-#define DCM_Low_FREQUENCY_MODE_SET   0x00
+#define DCM_LOW_FREQUENCY_MODE_SET   0x00
 
 #define MULTIPLY_BY_1    0x00
 #define MULTIPLY_BY_2    0x01
-- 
2.20.1


