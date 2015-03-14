X-GM-THRID: 8221215424512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35fc9dbaa0120918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.101.101 with SMTP id ff5mr11309738wib.5.1426359286013;
        Sat, 14 Mar 2015 11:54:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.132 with SMTP id b4ls556685lah.33.gmail; Sat, 14 Mar
 2015 11:54:45 -0700 (PDT)
X-Received: by 10.112.40.81 with SMTP id v17mr4181410lbk.5.1426359285430;
        Sat, 14 Mar 2015 11:54:45 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id l8si155584wia.0.2015.03.14.11.54.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 11:54:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wgdm6 with SMTP id m6so11098241wgd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 11:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Uz3FWtQhLpyT0t9NgaZy6Yn9RWc1FjbIoe9AmvnuIKg=;
        b=zb2x5k79sTI4Iz1wPU03UfpEQqWzpEzZsP60nEO8YBJn3Z7oJqs0qv8VXz3P6I8m1A
         B0VWIZozB4Uem1h6coFpwa8JwupPOb0+eG6SJuiyTeCltJ2mKTZ3wl+31q4zGOH4HB5E
         /StFGTbCHI5l4YIAOps9ZElKjketcDTeqKv3zgZ14FR8G1Kzz64iCnsD6fFJbgAaYhIh
         0RXAjJzTbkKis0vzqluOMe2xN5Izdg8YVxWFAgxeSSZUJNSyQ+8ATVz0HX4U62E8TX7q
         wiuiPtDf42d/WHNDz8tWbxKjzRvlat0G5wfSfGoB+zegVaEh1j+LEMklmg56mJZZtupL
         rcXQ==
X-Received: by 10.194.63.16 with SMTP id c16mr109673029wjs.117.1426359285334;
        Sat, 14 Mar 2015 11:54:45 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id a13sm8068381wjx.30.2015.03.14.11.54.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 11:54:44 -0700 (PDT)
Date: Sat, 14 Mar 2015 20:54:04 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 6/6] Staging: iio: Use braces on all arms of if statement
Message-ID: <8eee2f6737de63aa989b3d2254c7b11bdc75dbaf.1426353884.git.cristina.opriceana@gmail.com>
References: <cover.1426353884.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426353884.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add braces to improve consistency when using if statements.
Found by checkpatch.pl:
"CHECK: braces {} should be used on all arms of this statement".

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/frequency/ad9834.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index b57bf6f..d02bb44 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -111,9 +111,9 @@ static ssize_t ad9834_write(struct device *dev,
 		break;
 	case AD9834_FSEL:
 	case AD9834_PSEL:
-		if (val == 0)
+		if (val == 0) {
 			st->control &= ~(this_attr->address | AD9834_PIN_SW);
-		else if (val == 1) {
+		} else if (val == 1) {
 			st->control |= this_attr->address;
 			st->control &= ~AD9834_PIN_SW;
 		} else {
-- 
1.9.1


