X-GM-THRID: 6526266190940078080
X-Received: by 10.13.198.193 with SMTP id i184mr3515269ywd.187.1519514757509;
        Sat, 24 Feb 2018 15:25:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.179.72 with SMTP id r69ls495113ywh.9.gmail; Sat, 24 Feb
 2018 15:25:56 -0800 (PST)
X-Google-Smtp-Source: AH8x226bUiCRTnl00RoFVoOxfAqRH9pHiXf2lLAVEB1MSJUwh2dNHbv3NErmr0zN0hTFTPHkZ5rL
X-Received: by 10.13.247.133 with SMTP id h127mr3273529ywf.113.1519514756076;
        Sat, 24 Feb 2018 15:25:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519514756; cv=none;
        d=google.com; s=arc-20160816;
        b=GKoe6DDxxUv2W9kmuw+26PONwbNJa46kjGCXfbxhBOMBWIEmEhS0+N6mu8oEXXEUlT
         BmVdlb0cmq3jomlDrH/oklOyG47CdESfrKcJtC3C2Xv3NVtH5D3NcQyrEIDbDgXxf9wX
         GK+VWDqhoMG/P3evF73ZPsSBt65p3s6aGFrwYxujATZPvRHgiVszWnU3C88yBFRy8n9j
         BSIjxyQ4BZiw4RYYopnlhvaDzKm72vu5tVBFe0El4uOh3kTc38DTvb91I2wV9L8IWBWP
         R8Dg8dE61nfrI71KM8VZUoR6I/5VNpiyhVvgQnm8kFokPClDR72Cb6LozI+S/XpeH5mw
         j9jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=BKW8XqeIcQjF33GbIBBMhATb96LCgOHpXjgfXDB+HAY=;
        b=e7sM3I3qLib4zRSjXXe8wimoDwG2lUrfvA0NnUmXHGPyZEE8qMuEO6liaPCWnLZqYo
         52BEqVxbO2414Z67HpEpyQiEx0ToTCS9zaXgxEXNi3yUe15ofiwocE3Ej1Cajc21RBZq
         fSI41ODslGH9rI6PR3uxtfLDKaBPKqLw+yQ5syfDV7A+myyYBfFTIh3BG5d3D7lglgqH
         9VvoT+51TxEal1rdnh8fLtFEvfQOBktAQJR9eDpx/dNt0q8r5FWHWyjK58PiU0CgdV2h
         5N5uutvwfpFj1hF86IF6I0Jm/JrO1+6lVjDHNdt23LUB33F7dSu5JPrQh37q8B9sriLf
         HcJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dXFYFv2h;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id u40si12719ywh.5.2018.02.24.15.25.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 15:25:56 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dXFYFv2h;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x244.google.com with SMTP id c11-v6so3662979plo.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Feb 2018 15:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=BKW8XqeIcQjF33GbIBBMhATb96LCgOHpXjgfXDB+HAY=;
        b=dXFYFv2h+goN27aT4wZbmuF2FQR4aSy26K2IqOOFuyOQQ2l6xczkBdf3ltoV+ISOeq
         HjNZPN0TiyJ5e5UU5I4PL5AI4usbXxzlMRWkEHrE4Also+D6cDV3vam/ta/cvq+2QF8T
         R5Xd8NLYT+XGfVgGgHIwxLQdZkPVsnMDRL2mbd+H1ptOfheWiy1R5rR58kDdgi7TKht/
         rz9z6PmLVXrJ4JPlug/7jAKVNxsQRxEbURIuWJq6OYraROxSc3k2ASMZqlErtWVVWQVu
         epdbfxmkwGqekjBTAoG5gAhxAvnUU1ST9+N3JqfeRyOegqW52AOsD6nRz9kMASWbj4Gp
         NumQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BKW8XqeIcQjF33GbIBBMhATb96LCgOHpXjgfXDB+HAY=;
        b=hDiy5yKj3QeQ5d9ctXBg3KL4q4pfT3flzmYtQ6ho0XcOHPKjiZtW+7PXYvOZ2iS8tR
         FA/5GrpiTtvwu4vQv5VItnNeDsTrLp1OO0CCi40vaxDh0/Hov+B1PVF5GegWXKpZxWx3
         0yo3nJbKubjMNn7Hbk43L+dGFaHjpLwUvNcISGLxuI8SRhFwCZ69yQWi7tMovgUCD0Ei
         h8u6tjKRLkiJPm13/+O61qNPE59Tkuu3fUlMhDwtoSZ062K6beeh82V+/zcb1M9lt9qN
         /TG9GxxyjJXwcDi670dLxH+3JQTA1uljXSH1TYH9eC7wkugMVN9e6sxZG21CBcEGAeAb
         j24Q==
X-Gm-Message-State: APf1xPCEk/IsM144t9V8Pt5EMhCSxZnJV8mcGI66oAbt2swN/th/kHB4
	4G+D0EJVadajjauyiTRq2wIFL8tz
X-Received: by 2002:a17:902:8f96:: with SMTP id z22-v6mr6020508plo.330.1519514755512;
        Sat, 24 Feb 2018 15:25:55 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id b5sm12068057pfc.12.2018.02.24.15.25.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Feb 2018 15:25:54 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] staging: speakup: add braces around else statement
Date: Sat, 24 Feb 2018 15:25:49 -0800
Message-Id: <1519514749-12702-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Add braces {} around else statement to conform to the Linux kernel
coding style. Issue found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/speakup/main.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index cf12590..d7cdec3 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -449,8 +449,9 @@ static void speak_char(u16 ch)
 		if (*cp == '^') {
 			cp++;
 			synth_printf(" %s%s ", spk_msg_get(MSG_CTRL), cp);
-		} else
+		} else {
 			synth_printf(" %s ", cp);
+		}
 	}
 }
 
@@ -561,7 +562,7 @@ static u_long get_word(struct vc_data *vc)
 		   get_char(vc, (u_short *)&tmp_pos + 1, &temp) > SPACE) {
 		tmp_pos += 2;
 		tmpx++;
-	} else
+	} else {
 		while (tmpx > 0) {
 			ch = get_char(vc, (u_short *)tmp_pos - 1, &temp);
 			if ((ch == SPACE || ch == 0 ||
@@ -571,6 +572,7 @@ static u_long get_word(struct vc_data *vc)
 			tmp_pos -= 2;
 			tmpx--;
 		}
+	}
 	attr_ch = get_char(vc, (u_short *)tmp_pos, &spk_attr);
 	buf[cnt++] = attr_ch;
 	while (tmpx < vc->vc_cols - 1) {
-- 
2.7.4


