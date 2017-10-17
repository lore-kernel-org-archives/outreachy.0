X-GM-THRID: 6476782191370043392
X-Received: by 10.202.252.6 with SMTP id a6mr6860353oii.28.1508246026381;
        Tue, 17 Oct 2017 06:13:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.79.151 with SMTP id d145ls367391oib.5.gmail; Tue, 17 Oct
 2017 06:13:45 -0700 (PDT)
X-Received: by 10.202.219.130 with SMTP id s124mr4656578oig.68.1508246025497;
        Tue, 17 Oct 2017 06:13:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508246025; cv=none;
        d=google.com; s=arc-20160816;
        b=aZx7ErQK9xM+CRPaKIrXd33crTc2Dgw+OBlstAhE8CCUxiyJ9gtxyYf9MMSXSWeouf
         5K8U/R6Kez/G2CzqgkRsaJxOEpUBmFzObXZUq9mXQJDPTlHCkvuSfEvOx0g04LNId0RX
         JKSTNQNryss+d0AcokSKQ1XdiYOwPLJzsqgx8eYj6JBROXXCDupim+eHqF1UbBLzECmA
         E2NtqWXniSUD77pTeXED5TYnuVLjXAqLs6PvRwXAEvG2+Q89O1/9z2TtdnlrfChW3Evf
         yYlxyqJbCBfoKiH2rziZ+0uv0Bm27I1a14FLkmEtVHthsP9xVh4xGTHUC1HxvFRPm786
         bvZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=11MqQu/lG3UEfvyT5+fes7wxCO4XN1bWLVWrunqrGiM=;
        b=S/zx0rSwSaBtkXfcs7/Z94xdmwMP/JNgwYsTViv+Jw7CBjAwIf47KXT/W6pSttTobi
         3vpWWd4p3PN/dFpZM0A8GZdhLuOpWy11CGQxDBc8HCxaolpoKleVy8q8mJVuIMp2jUwA
         3qGYdUGzuSg+V08Z7trPrldNOt3grKs06mUfq/nzkQyoMNHe+iCS12cjk+ruvx9Zpay/
         Vqwly3jNK8sDENo1+jNWiDhKHBDt6L91u0108ouj/b6HQIH3SndVYESQtaTF8huvwdho
         3LOGSeSKWYauD5Hz7JC+qe/KD/za8FOpCmIE2oKgQv0h+JQpcBg859MCexCURJ+2cEgv
         B39A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oql+FCrx;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 43si673759otz.5.2017.10.17.06.13.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 06:13:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oql+FCrx;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b192so1397027pga.2
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 06:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=11MqQu/lG3UEfvyT5+fes7wxCO4XN1bWLVWrunqrGiM=;
        b=oql+FCrxpDthj6tsuNePZVd0XbJp+IAqEx0PE57vnlXRD2oSC8ra+TZSQdLhRDx84n
         81tOb2tLNs9gYtU4VMGXn1Oza4Gs7JFdU1T1dSXhBxsV+uWNdujAPEzRNYREKuNzQkK4
         nnruDT3JqNnEeNDcYmP1iIFqHKCM/cNldMzYA2ui8xsbMha6jVGaM1W2bm5WF0RUcbS4
         LuFcWyyFpS1ZPOsL7IZQmrJtMnoNiesl1Mc7lM8rFRQpsdFZCyLUYs5+IMFzAyU/sE4G
         kgGZvyT3izMlKt+e7J9rR4JfYK7NYSoeRVCnVe353i1RjMlFmbfDKz9XEi7p3oYyOEI+
         2kxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=11MqQu/lG3UEfvyT5+fes7wxCO4XN1bWLVWrunqrGiM=;
        b=JKp1twoqY71i0gl/vkCFtpKk8pBe48P9jsU5LZKcWik7aUJd3xjsOE5kJaDkTDlZPN
         bvUfR/rve3GoOLJB257Mek6sPxuBwZI2TS1yewnjbU8QSW14I/k+eNZTEaGLBn1sceQj
         19D/PbztUB9kONnwiSSNXrou6ktcXjeMvBxQj52xmvDSvORUPoCQRAch758m4CtsPqEU
         rpvFdwsSE8asCEFRYbuhyGywJbvVI64y4M7mp/4ryExphNRr2RVI8wpIdQiLlYDDcpS5
         4AG0+2sJkd3vRDpLFmpN1DZrsUArT5Sv2b1oXVcCdgXpWaeFN8CI1SSc5B3iGrYFrbjw
         yGWw==
X-Gm-Message-State: AMCzsaVFqr78MjpgXk1F7JjSSq4GLXiXZcnuL9F/uF9ZPjKjcHViDb53
	OjeXvkvX2O1671PNqX6bS0c=
X-Google-Smtp-Source: AOwi7QDtvfBSmDuBnvvhFFDnECyubxZRP0VSdrgkSkhHV9ld7UitzAo2gHjHTzdOhgzu4rmLICdEvA==
X-Received: by 10.84.233.68 with SMTP id k4mr11838403plt.416.1508246024894;
        Tue, 17 Oct 2017 06:13:44 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.14])
        by smtp.gmail.com with ESMTPSA id c1sm19283196pfa.12.2017.10.17.06.13.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Oct 2017 06:13:44 -0700 (PDT)
Date: Tue, 17 Oct 2017 18:43:38 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Alan Cox <alan@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/2] staging: atomisp: memory allocation cleanups
Message-ID: <cover.1508245883.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)

Patch series performs minor code cleanups using coccinelle to simplify memory
allocation tests and remove redundant OOM log messages.

Changes in v3:
Rebase changes over atomisp-next branch of the media tree
Changes in v2:
Rebase and re-send patches

Aishwarya Pant (2):
  staging: atomisp2: cleanup null check on memory allocation
  staging: atomisp: cleanup out of memory messages

 drivers/staging/media/atomisp/i2c/atomisp-ap1302.c |  4 +--
 drivers/staging/media/atomisp/i2c/atomisp-gc0310.c |  4 +--
 drivers/staging/media/atomisp/i2c/atomisp-gc2235.c |  4 +--
 drivers/staging/media/atomisp/i2c/atomisp-lm3554.c |  4 +--
 .../staging/media/atomisp/i2c/atomisp-mt9m114.c    |  4 +--
 drivers/staging/media/atomisp/i2c/atomisp-ov2680.c |  4 +--
 drivers/staging/media/atomisp/i2c/atomisp-ov2722.c |  4 +--
 drivers/staging/media/atomisp/i2c/imx/imx.c        |  4 +--
 .../media/atomisp/i2c/ov5693/atomisp-ov5693.c      |  4 +--
 drivers/staging/media/atomisp/i2c/ov8858.c         |  6 +---
 .../media/atomisp/pci/atomisp2/atomisp_fops.c      |  4 +--
 .../media/atomisp/pci/atomisp2/atomisp_ioctl.c     |  9 ++----
 .../media/atomisp/pci/atomisp2/css2400/sh_css.c    | 36 +++++++++++-----------
 .../atomisp/pci/atomisp2/css2400/sh_css_firmware.c |  7 ++---
 .../pci/atomisp2/css2400/sh_css_param_shading.c    |  4 +--
 .../media/atomisp/pci/atomisp2/hmm/hmm_bo.c        | 10 ++----
 .../atomisp/pci/atomisp2/hmm/hmm_dynamic_pool.c    |  6 +---
 .../atomisp/pci/atomisp2/hmm/hmm_reserved_pool.c   |  5 +--
 .../media/atomisp/pci/atomisp2/hmm/hmm_vm.c        |  4 +--
 .../platform/intel-mid/atomisp_gmin_platform.c     |  4 +--
 20 files changed, 41 insertions(+), 90 deletions(-)

-- 
2.11.0


