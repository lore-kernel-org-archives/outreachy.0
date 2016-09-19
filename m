X-GM-THRID: 6332110016814776320
X-Received: by 10.107.7.205 with SMTP id g74mr4307465ioi.78.1474309350458;
        Mon, 19 Sep 2016 11:22:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.53.215 with SMTP id k84ls3336181ioo.47.gmail; Mon, 19 Sep
 2016 11:22:30 -0700 (PDT)
X-Received: by 10.66.87.99 with SMTP id w3mr15072245paz.12.1474309350126;
        Mon, 19 Sep 2016 11:22:30 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h124si6847023pfe.0.2016.09.19.11.22.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 11:22:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so7589991pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 11:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AzdyAUNnouC+Sf4pUohpAYMlQAVQACSTzpkgMJ/PHyI=;
        b=VHukJ5HaiUQ33CBpgnBOnJKDItAIYyPpZLc4Ewa4hrDTCA0FtmBvqhndapVBNpvjMP
         W6bNtv6NgplTNZYDS+UcoV9EgkYcVpz0v1K1zTR7HoNbWZS1Q4I+rYmdSHBLW6/Zmc+y
         ivdoRtI5+t+UdfArbQb8xpUb/z/CAYdoRLdoeVv5ypYhJZuohPVFwuIn6C2qgVNYbCJ6
         yvdxGT3wFqtghoYhiMQS1jANcBxvLP2y87sOtvnYV2AxqRKSkBWMXm9Si2CWvueYasuN
         mJzffzYccQ3i09b3K5fh5Kfz4Nc1cHmeVuh1+E7WY6o819WYfG+VmHT/3hg+VTdWGBDT
         JNIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AzdyAUNnouC+Sf4pUohpAYMlQAVQACSTzpkgMJ/PHyI=;
        b=KxKGOZV4aq9NoVNXruEVWPy6urTiagYk+cuTe0STJoXWZctOVYsVuCW3sPaaQCE+DU
         QOQQhnCcySnk/53wBpGrL05Zq29auJGuug5t5IV91DFL4yZNWzLfPk6yiYvQdv8S9+zp
         fD62CdjUs+/ypoLUiwac094SP6h8Szcq1OWpdCLuLCtgMuXn/ky0H1KB804zPrunpKdr
         wOX+sC5XWsQ/4lalTE5vOlD2zEjqCTcq5Dwo+qoMM1tlr6Sn50f36Tjf7onjTSZi8g/3
         1gg5VdLQDbNW1f+48ff/EbTHoXxtDbgzVtqBsYqilMmRc9Tb28yO2JDjdrw0d1IfoJA2
         UQOQ==
X-Gm-Message-State: AE9vXwNzOIW25LMHt1wvEIxNGUycHRkdsOgrqDzyoRQv+lepg5WSmS8K2cOQlCKVDmWeiA==
X-Received: by 10.98.156.193 with SMTP id u62mr7506990pfk.57.1474309349819;
        Mon, 19 Sep 2016 11:22:29 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.174.13])
        by smtp.gmail.com with ESMTPSA id h66sm73176977pfc.47.2016.09.19.11.22.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 11:22:29 -0700 (PDT)
Date: Mon, 19 Sep 2016 23:52:12 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 2/4] staging: i4l: act2000: Correct the spelling for resources
Message-ID: <50923df49e24858d5b9a6870e775a1068efcd4c4.1474308584.git.karniksayli1995@gmail.com>
References: <cover.1474308584.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474308584.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces 'ressources' with 'resources' as detected by
checkpatch.pl.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/i4l/act2000/act2000_isa.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/i4l/act2000/act2000_isa.c b/drivers/staging/i4l/act2000/act2000_isa.c
index c325fae9..bd45d18 100644
--- a/drivers/staging/i4l/act2000/act2000_isa.c
+++ b/drivers/staging/i4l/act2000/act2000_isa.c
@@ -175,7 +175,7 @@ act2000_isa_config_port(act2000_card *card, unsigned short portbase)
 }
 
 /*
- * Release ressources, used by an adaptor.
+ * Release resources, used by an adaptor.
  */
 void
 act2000_isa_release(act2000_card *card)
-- 
2.7.4


