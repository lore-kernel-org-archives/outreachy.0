X-GM-THRID: 6254829692131475456
X-Received: by 10.140.30.99 with SMTP id c90mr12905637qgc.2.1456395463935;
        Thu, 25 Feb 2016 02:17:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.129.73 with SMTP id nu9ls170407igb.15.gmail; Thu, 25 Feb
 2016 02:17:43 -0800 (PST)
X-Received: by 10.66.55.4 with SMTP id n4mr40305431pap.22.1456395463647;
        Thu, 25 Feb 2016 02:17:43 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u66si1165508pfa.2.2016.02.25.02.17.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 02:17:43 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id c10so2586768pfc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 02:17:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=e+tL1b6MumnL44dYSPmns60964oVh4AwJIYPEUYB6Es=;
        b=uW3Y1rDcH36L2Jos/4wdjhP4nHJzLdAoRV+WrrwCG5tkH/yLIBRclOVvbVGyTWOWMi
         TkhCEDSM0K8s7SoKA6g1Zz+wgxj8aCdYDGVC7b6FcaDkMi1cV2Um4caXKnCB98YBamDM
         6o9d0y6lFWJffr/7Cs64Cp2lWdj14+HRfd9w6vxrFlace+Tfwjccf5RJy/ZELG+yalya
         J/r3nznbKALqyL+iosmslrvs2zEyIjzShVoqDvt0k0/crvZfQ3hsxtghA89irhDkvEAT
         sag1jW7AT8SCiF02elZeK9Yg6zitjw9auUe6gBSeeycS9guY0eY/kaL+jhaT+Ddzbm/E
         Pegw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=e+tL1b6MumnL44dYSPmns60964oVh4AwJIYPEUYB6Es=;
        b=QmZ8Rm+M7omRFFKhYfnNW6wajZoezI6TnoVs2bQ6Zr9+Uk2oGBeqkJpMKDoarkVP8a
         YvVyX+MYgIycqIr5q8eHVEzLWvNEW5cOoBqjAQSA3FcbT0Q+zyrw9I/+aY5NXkSVimE3
         gNTCp015SlkMaxLz/K3LZCLjL1tEDY9oyYUk9Lukpw84Le2TAozg/EXm59N+uV0tKsEM
         MR8NaMeXJxiWmpfVw9CznNj5EY8UKs/aFTb1AFwbFH959CQvk1ceot1576UUM7eyOi8J
         +4CfxK0ojP6BE+PZ7ZjY0EvuP3szM0nXzQwf9aI0Cv9PJ2zmRRqOilf57zUtfM++wRn1
         fzrw==
X-Gm-Message-State: AG10YOR5rJ1h00gVOaxVHDFoepFYQGD8lnBnz1/YfYffwCqyMEHkOY56fyV2xaf84Zn25g==
X-Received: by 10.98.40.200 with SMTP id o191mr61944025pfo.83.1456395463533;
        Thu, 25 Feb 2016 02:17:43 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id h66sm11073027pfd.91.2016.02.25.02.17.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 02:17:43 -0800 (PST)
Date: Thu, 25 Feb 2016 15:48:10 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: lustre: Remove unnecessary pair of
 braces {}
Message-ID: <20160225101801.GA2958@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

For single statment of if not required
a braces {}.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
changes in v2:
 - Remove extra line in patch
 drivers/staging/lustre/lustre/lov/lov_obd.c | 3 +--

 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
index dcaa5a1..0192774 100644
--- a/drivers/staging/lustre/lustre/lov/lov_obd.c
+++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
@@ -1547,9 +1547,8 @@ static int lov_iocontrol(unsigned int cmd, struct obd_export *exp, int len,
 			osc_obd->obd_force = obddev->obd_force;
 			err = obd_iocontrol(cmd, lov->lov_tgts[i]->ltd_exp,
 					    len, karg, uarg);
-			if (err == -ENODATA && cmd == OBD_IOC_POLL_QUOTACHECK) {
+			if (err == -ENODATA && cmd == OBD_IOC_POLL_QUOTACHECK)
 				return err;
-			}
 			if (err) {
 				if (lov->lov_tgts[i]->ltd_active) {
 					CDEBUG(err == -ENOTTY ?
-- 
1.9.1


