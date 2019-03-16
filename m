X-GM-THRID: 6668964143803924480
X-Received: by 2002:a25:2f44:: with SMTP id v65mr3733465ybv.2.1552739214031;
        Sat, 16 Mar 2019 05:26:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5bc4:: with SMTP id p187ls2370416ybb.14.gmail; Sat, 16
 Mar 2019 05:26:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxKxtxmUf4PVsU8rLyfjBmmBq18xOY4EmcAAkFCq0ULRLXIIROpla4LzjwRgFN5XyZZLiGx
X-Received: by 2002:a25:4042:: with SMTP id n63mr4521916yba.101.1552739213126;
        Sat, 16 Mar 2019 05:26:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552739213; cv=none;
        d=google.com; s=arc-20160816;
        b=zToXxeYzdFIJyKzhSuolno3KFPVxx1cW/KlIV/lkkS6TTiqCBaiaHev1/aL1zErCBi
         RR8Bumb8BmF8FvrEhhYKk7VDkSLzcJ3vuHN6WihuAaEeK5AxxevH1jWBa0i8c3laXED7
         aGomXJRbF3dJKOWlu4pm72Xkod1DqLCRAZjQTgY2Q6nTaLXXKCrlw8l1YzdGKqaZwF0x
         QrKL8aw/JajgUaKfOBUtY8oBk2wMZTQRMtXLl5XmrYBaMJ5dGTSQSNSUYr/xkFpPRDuW
         Ow1jQKzThu3hf/0E2WN56r3sjXNYJEwFHNBIyXV5vOaAe4lKkfipzdVFIgzHDcFPKp3U
         Y31g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=wPDopR+AdX3fSz6cF+QAxi3DIeLX1mOE9fVzDGwjpsw=;
        b=0oyuNN4lNeEUtuIGBqaPQXuV9pkaRWlk9eH4X+2dQtvbEzWBjPyj8EmPu5JsZczpDK
         urbjLXn72cLlflH2HoUFEZEfr2aDEPEpQAwFZHX53Bj8LT6fiaTDZmuOOODfD5dPApsB
         EP9NIfHHd1g9b1OUCIxLa8z7rDXABpYWg4tV642oCt2b86c/pLLtQl9uwxoolCdsBeUA
         ICTI+J2DkxfL6f0evxe6IJ5myCHoZdWL/prSp9K4oOf+3nYSfw0UAIbHUVtGC0ElAsQX
         8G3GhZ7skaJ4GuBFp6hLn9amGCjm6nDqtXvMiZjGkHT86O0xqA3C39PnoleVWo52dnyX
         ShJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uIlwZH7i;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id f23si221479yba.3.2019.03.16.05.26.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 05:26:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uIlwZH7i;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id p10so1365940pff.3
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 05:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wPDopR+AdX3fSz6cF+QAxi3DIeLX1mOE9fVzDGwjpsw=;
        b=uIlwZH7itmgdwkeP3RaMtNNQ+8IWRESKb4o5HIwyNr+mqDPodTOPiEpKwSW+DbYiE/
         5YEi2eV84PGi4SQ92+9jYCQOsQuDwcqRJhMX1RScNeRRu4VG49tiDPgLlhHteqtKD9t7
         BgmysZdSJg2oSxZxy7kjEEx3HhgJwVeC25yQCGaxupcPKqFbpfde55P31gqd7+iOlHYI
         LGQdod9HS8w281YRLfcXcS7UugiLIZrZBIQqyJxF9BSyY1Xfp5/I7QlkKhUpO4X5Wv3D
         pLZyxZn/HPsyx02Bu2C/pEaNqPxXXSnZpmEwWL+SYTgE/XEv6k8jid2TsNt/yu5t6JS5
         d92Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wPDopR+AdX3fSz6cF+QAxi3DIeLX1mOE9fVzDGwjpsw=;
        b=NaoMwzWyZDp9drihCl0vgb8kNzjzFh0Xo9hrJDVELUKsmPUuAD+d9mbi2rvH5gBLPt
         P8aDPiVzaknY937xU7rppQ1FUX2Ix7ZNvbBRplTHIxfXoDxzVmgow8/K6D6a7KjOu/ak
         RR4OadVv891yPOx/EhiLTkIUM22Ip20yeD6j7CEIhDb+8t/ctEvr25jtxaA8zrIg2fWO
         e9GJz3kaDZvr1ueKDTbzMPnnZ3AQu2XrQMVrhBCTkFXa6owFuSLpi9D3+aYFtSRw2PoP
         S7jFSIi0e+0aXTUW584oNgHL1A3pvL/IcStDk2sj+PUTvWqXcPS7cqDTE/bOjpLZYA11
         nkGg==
X-Gm-Message-State: APjAAAW5ypzAVl3UfKym+R1SxFFvuliEKt2W5FGqfJqsjEYf/EpOVNY6
	lT/V0XuBgKu9Y9yPNFeKbUEW66Eb
X-Received: by 2002:a62:4743:: with SMTP id u64mr9028285pfa.95.1552739211954;
        Sat, 16 Mar 2019 05:26:51 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.93.114])
        by smtp.gmail.com with ESMTPSA id g13sm7558767pfm.159.2019.03.16.05.26.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Mar 2019 05:26:51 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] staging: greybus: char * array declaration as static const
Date: Sat, 16 Mar 2019 17:56:32 +0530
Message-Id: <1552739192-32372-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

char * array declaration might be better as static const

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/greybus/audio_manager_module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/audio_manager_module.c b/drivers/staging/greybus/audio_manager_module.c
index 2bfd804..6ef7381 100644
--- a/drivers/staging/greybus/audio_manager_module.c
+++ b/drivers/staging/greybus/audio_manager_module.c
@@ -158,7 +158,7 @@ static void send_add_uevent(struct gb_audio_manager_module *module)
 	char ip_devices_string[64];
 	char op_devices_string[64];
 
-	char *envp[] = {
+	static const char * const envp[] = {
 		name_string,
 		vid_string,
 		pid_string,
-- 
2.7.4


