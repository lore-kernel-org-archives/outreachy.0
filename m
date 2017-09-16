X-GM-THRID: 6466384589611859968
X-Received: by 10.176.29.19 with SMTP id j19mr15898425uak.31.1505572486997;
        Sat, 16 Sep 2017 07:34:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.11 with SMTP id b11ls5422390iod.20.gmail; Sat, 16 Sep
 2017 07:34:46 -0700 (PDT)
X-Received: by 10.99.61.12 with SMTP id k12mr16919741pga.160.1505572486131;
        Sat, 16 Sep 2017 07:34:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505572486; cv=none;
        d=google.com; s=arc-20160816;
        b=s2ePVUbdd62zWicNNMXdDUYjDGplRM8+q3X2/pc+3UWJmpMeO/WD9YBGOcHOLCyq0k
         1zPKR6WcndZit6HWQB8rQcTHCdDWzhTUtcUaM9twlDcbELBONJtDGIXONtG0Z30Ev5AI
         HZm4HGa3bY0wLSIviPrpMXwjzMGvqHwhipaMTjg14WDvUJQVUJdfnhdmW1GCOTqWxNeq
         2FMGahLC/0gcf2yfJakWhpn4Kv5BNOmWFuYmFfSasvV8tSY8PsKhNdCrv41KElcpCcPr
         Y0c45fg2HTyTR2gSz3iXcBN6LMm0/X/bTl0egCfYVXmgcpun0l9oHt9z/GCM9WnwsPmd
         CYLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=muUyxXROl74o7RpMFW9wmkzEMccbuTqVT5A7J41T1zs=;
        b=D62fwqs+J0WRB8YxXXcObmi9QR2uMZDAT9ar5tKWmGiBJaSePJ3G6bY7aU3jCk03f3
         n0Xf499/tuGZ7H2DIz+f/bq5psaW4c462HdsXQhPrhSeoWeM7q8HhE9CNgHdMoF+i2zy
         6aMxxIN8hVGrJDS81Io3RxSYGzcnAcjRW+wHS0PjZzbNPiwjgAmJ53K5d+M8kdhXLHAb
         7kFKF8TwdgnPDFKK0yzK7XPlgDWKWeDscVgZOnQjjm/rVcCQ6hQoaECJmClwgon+ljAy
         SldDCPjPO6FMily+da3w73uGEvrKttp95ORzBKvXgapPUEyWTS45bf4PecHg53ICWcPK
         zScQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RbcC4haQ;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id w11si160763pfk.4.2017.09.16.07.34.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 07:34:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RbcC4haQ;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id f84so2580936pfj.3
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 07:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=muUyxXROl74o7RpMFW9wmkzEMccbuTqVT5A7J41T1zs=;
        b=RbcC4haQ6OHTqFHWFQprtAJDjta3mmBfEHya+mVOzqlsvzT6SzJrerv+iPKckvgi3n
         BVoWPt528UXSmixJIn4RP0PP65g5QyCkPolntlbvh1R9AoHuq/lxL9ahI0QOE89wQZQ6
         4kF+NlEcFH7wlnSoGUI3oI5+JCDlf3fVgDDha8By494542wtN3m4RaTsojxAysBB8Iff
         B7IFX3PnHCItNa7m4lTQdBK3Xh/6HY8+QmdZFjtdHTh3Le4pZm9U30ORlFVL/sk8tyJy
         71+S7RVhpPBDB/8oPj93e5L6+8z8KDGJYyYJE1yyFTuoCcmO+Vhvmfx3wbjJ2PjUYTLB
         b0MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=muUyxXROl74o7RpMFW9wmkzEMccbuTqVT5A7J41T1zs=;
        b=WjHs88AoeUdjkx6ggCOgCE0p3Kt7uDK6cQf5EADE5oilu4VGN68dh29l4aqeI0mM1y
         AFNk15hLF6o3xNRD7x/3VfM7E4gh6Jiar1mXc1mMcsEveftwAsN9KPcMC1zM/BjQoiuA
         0XAYsw+/4FwPXOqq1h2OM7qFB/V0caheqtAcZhDxKWRoGfbxQH+esH9d/QB7+rd6OyOH
         2Ie6/cFSNw7hRlCOkKhc6++jd72KDQex2YodVmjiUJTYJaFPvLBZ/MrqyUKH7kZ+T6jV
         V2w6v/K8iCDGF24KDiF44c9NB16oD8Hs6Bu9j+qMHwbT4qlourTQ9CcERKm7QeiCIQFX
         O5hw==
X-Gm-Message-State: AHPjjUhT4D2xbN8lEcYpnnjVM0vnfEysu7u7CfEakr8kLE6ClOsX+MkB
	Nc3GLxzPDswzPv0Z
X-Google-Smtp-Source: AOwi7QAiRgLlmDBmXTv+nCCuf9i8N351IRcAhwINnpPmb8e2r554AnjnFQEArQp7LWKCruvslDVT6g==
X-Received: by 10.84.246.197 with SMTP id j5mr10275436plt.164.1505572485890;
        Sat, 16 Sep 2017 07:34:45 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.15.200])
        by smtp.gmail.com with ESMTPSA id k10sm5693743pgq.5.2017.09.16.07.34.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 07:34:45 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: lidza.louina@gmail.com
Cc: markh@compro.net,
	gregkh@linuxfoundation.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 0/2] Remove unused variables in structure definition
Date: Sat, 16 Sep 2017 20:04:39 +0530
Message-Id: <cover.1505572018.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch series attempts to remove unused variables in structure
variables and the comments associated with them.

Srishti Sharma (2):
  Staging: dgnc: Remove unused variables in structure definition
  Staging: dgnc: Remove unused variable in structure

 drivers/staging/dgnc/dgnc_driver.h | 15 ---------------
 1 file changed, 15 deletions(-)

-- 
2.7.4


