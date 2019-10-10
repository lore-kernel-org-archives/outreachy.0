X-GM-THRID: 6746283078211076096
X-Received: by 2002:a05:6402:1514:: with SMTP id f20mr10277012edw.35.1570741431634;
        Thu, 10 Oct 2019 14:03:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:d151:: with SMTP id r17ls1235774edo.4.gmail; Thu, 10 Oct
 2019 14:03:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy+1IpQMthZODwWihDit4SwBBwo57/ubvRSwA79cYgRWdNjT8Dv5JgY60kRNqmHQMgb3S5R
X-Received: by 2002:a50:ed01:: with SMTP id j1mr10262714eds.111.1570741430791;
        Thu, 10 Oct 2019 14:03:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570741430; cv=none;
        d=google.com; s=arc-20160816;
        b=jeoKfpBvRAw47kdvDxq1HuoCpPBU2S3i8R58O33/OXF76cI79iJPDVtMKnAeTgucLG
         ZvyTZbth0fMgxXuB5jQCp+VXp85meN5yj5yLCIo028dtomPOBds0EJiNK8no1ukJqhgL
         jyTuZwGSPpUuC0w+JRZIblDOd0jTEvmc/xYUb9tAwozBlep9Re+yK8338kRFMeVvpg8T
         Fxva4gaohB5zgr5walfcVMlhsK87/JAnZKcV+SEnpWPeI5M8FHXsCxHYSZmGD8in577N
         7VNToQNO1o38eC3zeMkpRY1e8t/629yPGyutWfmaZkH9W5+eY/bIxibvH96Z86bOtqHT
         kn3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=dVd82TsNic1iRgEn8OK8OU1sOyACvsv7jo4EHLH2mCs=;
        b=TZuW6EavTuQokdRsoRy2eDcazpglVtQx793GSuQEYusTzdkYWBZA6aJT8/Ah9bLx4v
         IFnjYeD0Opb2AqKN+RNZOQSXyNGF0tQuLvGpVQc0bKkeO3n9UMC8pu4yePjSHre4WI8Z
         jwOIJ7cbf+gQCCE/ZkQlsUjyKj0XxHl3YoKSiRU2lTfJii96a44f26HV/nvx1LMpCJnT
         jk75UwDhAq55wrm6oS86VZyvsrHtSbN7Y1irNIQdB37FBBXk0aQiNFZd1K2swaeyNHAT
         sOTF/H758ao1k9S+jKtieYSAKZaC5gCxxrSflGOAB8rqD1qS+sHH/WxYGtwkVaMfzu47
         KBEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WiXrensv;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id r3si56865eds.2.2019.10.10.14.03.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 14:03:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WiXrensv;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id v17so8136068wml.4
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 14:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dVd82TsNic1iRgEn8OK8OU1sOyACvsv7jo4EHLH2mCs=;
        b=WiXrensvozMU62UNWhoOYLW52zJXqI1OYiqh8V01JGAv1a6oknHHePtELmNgqP6iCu
         WKTN5d4J2DYyZWZ/eGigsTFHvVxnGjmRocZ0wtAo1kKKbneQ3LrI5G/DqcYGN77oWJiB
         K6ImuKOomH1y92sDPpIIip8bqZ6f4dEuw5Riy9LF53p8m8/3nbGy1oJCalGeD4NiTlJp
         4GXzD7rACMfl5cdD+YRWUb5HAylhF702Oq2TCgq8fl5PAkicV/58Ee3K9sf3qW6mS0EG
         v1X4820ear5WIeJR5zwHPJnAnQGnymX+QkVtkgwdIQo1HUVu/ICvIoaeLdV1dVQ1O6Sn
         vjsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dVd82TsNic1iRgEn8OK8OU1sOyACvsv7jo4EHLH2mCs=;
        b=H8p7T6lVfZW1AWVTDWcNRY/ninzFiN7+OFj77layE3E00dzibJsRPijLujE5JVnIC7
         WBtlEJVcRHZzByivAPLy2VRBbD0YvJNwIzkhvIbI40wemUUnbKiaa+vU6j9jhWnroH4M
         ZQZPiPE6nr5sxX1x+5CS+z6FmaR40UQu8VKthM7ajN1ltLCsRr8e+MFxz/tFrDJE3X9Q
         qSjt7+KbcQFae5S869aL1L4asJNM5iYRD1B3pAj6mz7/Q5XV21w6pNbk/zv3cr4M42n/
         Bc8KGyWclNwcj56Glrw2X1ERHYo2Cq7tJUz+iR2Glj/YX7wU8TkILQlEdAQ2t6j+EYFq
         McLg==
X-Gm-Message-State: APjAAAXZ4Z47x9YyRIAZwPJDKeyeocGqLcwd/QnvQqhA0PgLB0nlEi4p
	kl9nk58qwpSFmhWrsA/neUSuvIO2tIZH
X-Received: by 2002:a7b:c187:: with SMTP id y7mr402036wmi.154.1570741430234;
        Thu, 10 Oct 2019 14:03:50 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.org.net ([94.119.64.0])
        by smtp.googlemail.com with ESMTPSA id w125sm14908956wmg.32.2019.10.10.14.03.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 14:03:49 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	dan.carpenter@oracle.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [RESEND PATCH v1 0/5] checkpatch warnings cleanup
Date: Thu, 10 Oct 2019 22:02:51 +0100
Message-Id: <20191010210256.22522-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Clean up multiple warnings reported by checkpatch tool. These are a resend
in the order they were patched.

Jules Irenge (5):
  staging: qlge: correct a misspelled word
  staging: qlge: fix "alignment should match open parenthesis" checks
  staging: qlge: Fix multiple assignments warning by replacing integer
    variables to bool
  staging: qlge: add space to fix check warning
  staging: qlge: fix comparison to NULL warning

 drivers/staging/qlge/qlge_dbg.c | 209 ++++++++++++++++----------------
 1 file changed, 104 insertions(+), 105 deletions(-)

-- 
2.21.0


