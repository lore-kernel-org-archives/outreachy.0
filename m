X-GM-THRID: 6463765428617347072
X-Received: by 10.129.83.198 with SMTP id h189mr3883148ywb.120.1504962665921;
        Sat, 09 Sep 2017 06:11:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.92.200 with SMTP id q191ls3058059itb.4.gmail; Sat, 09 Sep
 2017 06:11:05 -0700 (PDT)
X-Received: by 10.31.33.86 with SMTP id h83mr2230987vkh.112.1504962665077;
        Sat, 09 Sep 2017 06:11:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504962665; cv=none;
        d=google.com; s=arc-20160816;
        b=r5p4qPDgdLqGODAMkGt4EPG0K5DEl0HNf0fdiNfqXLANqtTswBcic9rBJw7gAMareo
         3krK2IlX7SR8eI2Ru7ekfQpObtPTeGb7TdrbYZ58d+apEZFvwV8JID+TRolP92RKBGOD
         4Tu7Sik9LA7lZymiZj+/TIpQWnXmsWx8V+Kxk7DwCarREQXn33YKC3WfI/XBqcOYbfNU
         /M1XrwVn/e5cw0Oszz31L5zdIDeOgTUrq7wszQgPTd45p5E6i4T8UBSM6xQY4Nt/pPye
         MwQQS1PCacoLQdlX/dkwQzFiZh6JZppW8a0Qj2VwBXIq24MHh4EKeZZnGIRWaC5bBAaD
         Ld4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=KIhu64cP46IAs9ICbCC3STA2ZD0lzRl4BZitEM0Kfv8=;
        b=Tw7G95+QWo16IvryFHJ7KxWkPS2zgNp713bwZO/u4zItPqxUQ41GbAN+7vOYxLsVCC
         P1PWY2TvcdyAsNpkodLjOLQGgpeNwNbE1OpbolomAAzY6m4Vlx2/pBfR6QgzGa1yxWQr
         wWy0E0C9krP8YlnkQuRasyM7m9LEXuqelGXZgP7Evpyi+IdZSxhdYe9Kn4hatQbEJusG
         RUzmaaVZFBTtmYcQ3Wg/IkRpKLRGxQBbpHHi03GvMYO9r2ZsXtlH2yc1wxxjDiUICaYT
         K2ww3Ps+1qWdsMUo4PemyHVoJmfXXp6pjm7aqWIJqzmZpdL9EHoyW2eWwjO1f49v1jzq
         35/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tjVTjPI6;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 8si390485pfa.0.2017.09.09.06.11.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 06:11:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tjVTjPI6;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e69so984750pfg.4
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 06:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=KIhu64cP46IAs9ICbCC3STA2ZD0lzRl4BZitEM0Kfv8=;
        b=tjVTjPI6KZEOX/+f9EmOky7gUGHe0zqgMAlZndcYBvUMficjID7gZ31hZYjyHDf8fd
         7TtemjHYHSgh3jfjnwKHr70hmGr2/gKki7FVUask77YKJb/K8TDDM4OK1SZxxvJyFkqF
         Uqwcg6o4L6avTpxTYOul1tdvlNXYcf48cjXctlFj1qQXzANYuQKzyVet90/9WLXbSiWn
         C3lw2vDtMmMpCnmPEy1nGF9hiaaK26Nwr9oPmRP6dBj9NbYPNcIrUarKsrPCWkfZ5Ggs
         dX0UQdae9jtC4MVz3OmxsozyzeEuzrJO63MzhiOQabCh51oDUZzcJtNw2s1Bje/MYFtO
         9j6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KIhu64cP46IAs9ICbCC3STA2ZD0lzRl4BZitEM0Kfv8=;
        b=OLbjBPOJ+9oNidAa5pfsZxrwmR99zggxHXiy3/dtd/sWUJSZM381JLsBRqdbeuXXDn
         zWdtn3TILg5IZ6B0sxuOIa2HhZMMQNr4pUUNjASG0FavBP+0F3+orzatPASwNgHTPrjZ
         w7PrxbgwEuUgx9wcm90XK8y+PtiMXH3xQCyV2QXTVby99b+g11+93IQQJRiMEFD6Fi1D
         G9gNQrzbH0iBrNcjR05/Yuj8IEGIKy+zv73udj2DZp9AXcuDQIk184hqim6sUBrQmfoD
         LnsbAy4eCVV/dzHDuazV6lFEel4iRq4tVV9ZXkE7zYB0Dy/XKHCbqk94OjMpI+U5RCEB
         nuOQ==
X-Gm-Message-State: AHPjjUgmDKpfqUBnX18YsIyq/7r8bqIvCZ/CTxRMqp07xwF3z+n9mZ9L
	9fucos3KqnltawoPTdD5QA==
X-Google-Smtp-Source: ADKCNb6wzg4yNkGbwNQK34PlQetFPM89eutNnmBPf3H3HIcDx6PapXF68a8H30fnLwhkIGnVkuWaiA==
X-Received: by 10.98.158.139 with SMTP id f11mr6296100pfk.46.1504962664746;
        Sat, 09 Sep 2017 06:11:04 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([182.77.47.123])
        by smtp.gmail.com with ESMTPSA id h70sm8473337pfc.115.2017.09.09.06.11.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Sep 2017 06:11:04 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] fixed coding style issue -  multiple assignments in a single line
Date: Sat,  9 Sep 2017 18:40:47 +0530
Message-Id: <1504962647-7425-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/speakup/main.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 938a0aed..9e83fa1 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -270,9 +270,12 @@ static unsigned char get_attributes(struct vc_data *vc, u16 *pos)
 
 static void speakup_date(struct vc_data *vc)
 {
-	spk_x = spk_cx = vc->vc_x;
-	spk_y = spk_cy = vc->vc_y;
-	spk_pos = spk_cp = vc->vc_pos;
+	spk_x = vc->vc_x;
+	spk_cx = spk_x;
+	spk_y = vc->vc_y;
+	spk_cy = spk_y;
+	spk_pos = vc->vc_pos;
+	spk_cp = spk_pos;
 	spk_old_attr = spk_attr;
 	spk_attr = get_attributes(vc, (u_short *)spk_pos);
 }
@@ -1669,9 +1672,12 @@ static int speak_highlight(struct vc_data *vc)
 		spk_do_flush();
 		spkup_write(speakup_console[vc_num]->ht.highbuf[hc],
 			    speakup_console[vc_num]->ht.highsize[hc]);
-		spk_pos = spk_cp = speakup_console[vc_num]->ht.rpos[hc];
-		spk_x = spk_cx = speakup_console[vc_num]->ht.rx[hc];
-		spk_y = spk_cy = speakup_console[vc_num]->ht.ry[hc];
+		spk_pos = speakup_console[vc_num]->ht.rpos[hc];
+		spk_cp = spk_pos;
+		spk_x = speakup_console[vc_num]->ht.rx[hc];
+		spk_cx = spk_x;
+		spk_y = speakup_console[vc_num]->ht.ry[hc];
+		spk_cy = spk_y;
 		return 1;
 	}
 	return 0;
@@ -2109,7 +2115,8 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
 			spk_keydown = 0;
 			goto out;
 		}
-		value = spk_lastkey = pad_chars[value];
+		spk_lastkey = pad_chars[value];
+		value = spk_lastkey;
 		spk_keydown++;
 		spk_parked &= 0xfe;
 		goto no_map;
-- 
2.7.4


