X-GM-THRID: 6396242465121107968
X-Received: by 10.25.201.198 with SMTP id z189mr3272492lff.15.1489241250675;
        Sat, 11 Mar 2017 06:07:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.143 with SMTP id u137ls1292956lja.51.gmail; Sat, 11 Mar
 2017 06:07:29 -0800 (PST)
X-Received: by 10.25.204.21 with SMTP id c21mr3444145lfg.19.1489241249720;
        Sat, 11 Mar 2017 06:07:29 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id i76si209637wmh.1.2017.03.11.06.07.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:07:29 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id n11so3105254wma.0
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Czmlp9WbzhZ0xC0D3bW4Z5yo4WF5Koz74v5Yh4Ccxc4=;
        b=c3M/GpmFPEwAOlto8H/3BKNOP87CAfNCCPuqvrXInpHXm29I8A6WLHplSV+BMdewSg
         v7UNyiHPhRvaDWBbm+mep05gdH7jdXMHItXYZ9Vaoc/ztTr3S+nxm5N5jIZS9Ebe/HK4
         8eCeT93tY3vU0BcqddKuWJ2qCAaPQuYCcxnVgLurAmwL+8qyarUGrwKPgCPWotIMvk2H
         vRh3lGqVGr2nLxoZ8LUolrokyxycN/vkhZm3exQXCsfIQlTp5lcqDMoUmTgQ/EK3xF39
         FAnb2BbU8eT+6v/c87lcin8tGLxoZv2ld2wH48w3iQR3eN/wKIXpzGGUfzp5GFswP1NC
         GM3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Czmlp9WbzhZ0xC0D3bW4Z5yo4WF5Koz74v5Yh4Ccxc4=;
        b=ODrbtBITW2mCF+VWG1GyhSctJdi9bd22JmK/71AuuAWflnMA3mkRCjM/P5RRs6IeE0
         aE4vnk1NtjKdbyghkav+IBCkLhSheMGHvnVPouWX0bm0CqSyT3jGxsWr6UD9O3keobQX
         L/ef6lmrvFyv1Qo8cyNWY6O3AYPz1pV2fnk6WZTuldKljfuETQnNK91Llu5dXXdqyqXL
         XJ7YbNQB63JfKkM7IA3HJpPsMJlQTQopDFQY6zGH1nC3MZynzfz3JMszWb3WjtDYQO10
         aHMnwoRtj53gxgf2FfTrYfJeb9oLCVMuyKqaUaR2ouyB6vUd4hCh8IgEikQGliP1PIia
         4OAQ==
X-Gm-Message-State: AFeK/H1FCvcjdnXFBrS6rZvOzu3UWTA+qAuC465tsjoMlKmYoiZrc8DPZvdWrPZT3wj3kg==
X-Received: by 10.28.6.203 with SMTP id 194mr3460165wmg.125.1489241249560;
        Sat, 11 Mar 2017 06:07:29 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id o63sm3729687wmo.30.2017.03.11.06.07.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:07:28 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 0/3] Enhance code formatting
Date: Sat, 11 Mar 2017 16:07:22 +0200
Message-Id: <20170311140725.18461-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Trims lines size at 80 characters to fix the checkpatch.pl warning:
WARNING: line over 80 characters.

Tamara Diaconita (3):
  staging: wilc1000: Use kernel preferred commenting style
  staging: wilc1000: Removing extra tabs
  staging: wilc1000: Rearrange code

 drivers/staging/wilc1000/wilc_spi.c | 53 +++++++++++++++++++++++--------------
 1 file changed, 33 insertions(+), 20 deletions(-)

-- 
2.9.3


