X-GM-THRID: 2118621593600
X-Received: by 10.180.8.67 with SMTP id p3mr398684wia.7.1424551251425;
        Sat, 21 Feb 2015 12:40:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.10.227 with SMTP id l3ls309547wib.46.canary; Sat, 21 Feb
 2015 12:40:51 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr402007wib.7.1424551251153;
        Sat, 21 Feb 2015 12:40:51 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wg0-x234.google.com (mail-wg0-x234.google.com. [2a00:1450:400c:c00::234])
        by gmr-mx.google.com with ESMTPS id l8si566490wia.0.2015.02.21.12.40.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 12:40:51 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) client-ip=2a00:1450:400c:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f52.google.com with SMTP id x12so18911800wgg.11
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 12:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=OBPX9MyQW8/F/rdwAlKLUM3wXVzk32sjD+tVKR4lhis=;
        b=g88LNHLH0wJbisPsw0LpIQfptHnYju0CrHDHLGclqbZAXNoTn7z7dfHBu6XgxL/VH2
         lRrdJVWJzfp9y/RpTibwkYmFkBFc4yyoPmaaeoTTAAu7XqNMj3682vHuebcRmxxugcWd
         +vkamiMIepm1/cTxTHs78avwAg6A17Hrz5Kd6SB2yTcgDXzsRKrw8DrbQHADRk/Nr5mq
         se/uSs7VTjnf4YYGRvJwD7ftCdgoMJlbNcuZdcCfW3uwH9fhHbLrGsyZbH3JwYhJ11zo
         4f13Zrh+oZjh4MTJQvJfobgTkM4MpjuklwuXmKc8VT4KFeTqEz4UuXmEi4ubYqWZuhwB
         riqg==
X-Received: by 10.180.21.162 with SMTP id w2mr6874730wie.42.1424551251090;
        Sat, 21 Feb 2015 12:40:51 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id gz3sm8416433wib.1.2015.02.21.12.40.46
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 12:40:50 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 0/4] Corrected four type checkpatch.pl errors and warning.
Date: Sat, 21 Feb 2015 22:40:34 +0200
Message-Id: <cover.1424551058.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes following checkpatch.pl errors and warnings in bootp.c:
ERROR: "foo * bar" should be "foo *bar"
ERROR: "(foo*)" should be "(foo *)"
WARNING: braces {} are not necessary for single statement blocks
WARNING: __aligned(size) is preferred over __attribute__((aligned(size)))

Gulsah Kose (4):
  staging: arch: alpha: boot: Deleted unnecessary space.
  staging: arch: alpha: boot: Added missing space before "*"
  staging: arch: alpha: boot: Deleted unnecessary brackets.
  staging: arch: alpha: boot: Replaced __attribute__((aligned(size)))
    with __aligned(size).

 arch/alpha/boot/bootp.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

-- 
1.9.1


