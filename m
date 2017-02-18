X-GM-THRID: 6388474275498557440
X-Received: by 10.200.44.199 with SMTP id 7mr3923531qtx.1.1487432577061;
        Sat, 18 Feb 2017 07:42:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.115 with SMTP id p48ls4141332otd.37.gmail; Sat, 18 Feb
 2017 07:42:56 -0800 (PST)
X-Received: by 10.13.203.14 with SMTP id n14mr4510247ywd.42.1487432576743;
        Sat, 18 Feb 2017 07:42:56 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 23si1413353pfw.4.2017.02.18.07.42.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 07:42:56 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o64so6355539pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 07:42:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ni4viEsDPXjuctbzqjhw07CAGFA69ypt62BUy9KneB0=;
        b=rZCLCTC6PIuhwOqlnICpMe+GPdU2b9kStYHGDT1Qk/O7dbJ0d3z1EHa3lBod4MRujB
         tK7l1w4OGyMiGX6GEu3brNXoTEtlnd7ylU4VoL41AcI0b3B1q75KTBWq1f82f5EfiWsE
         e45mLXRVf8nOiXBA4MCVOu/72OzbAETKTunlSg8RRqxULPIFLADKfbILAk8IgZ1CRfYX
         zbZDeEGlR/PSUMm59Ngl/RRhm59jrsVpQgekCjH0UOTABc4UPJqty+T7PQVm4t1JC54F
         ikpd1Aw3shmmAYo9vPSWHHIcuMQCeYn1zVA++P1oZXWAy9zDHTC2VicJhNP9J8gKw9GD
         wDWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ni4viEsDPXjuctbzqjhw07CAGFA69ypt62BUy9KneB0=;
        b=EHHhraLRr+6+xW51Jk0DMnLNhfefOFCwNbRo/bo/PiYgsnfE3vIkBtbe4P9iDNwHC8
         dpX5m+YKtGTYZ23+K96/0B7GYgW8Yn01uSnCLychm11mesZ0fKmvJBKuiej1ipf7WQLG
         mJ70u3XEi5PJl07aU7WwmVoe0tepCBaoqwnyMzSblkLDsglWiLggZNJAV+2fiZ5EE3D6
         zj55rE//bLRkQsLcEUwFsWGbY+hesUBz7aHdO2LEGy+NacoVR2d56ZN/GKNja69Q2cQr
         jHB+RcqbZPTYIe7Xmlegf2+HSkaMURHlIxsgqp645Lbg/ITbj/c6ONjKN7TYfhAxRY8F
         gqXg==
X-Gm-Message-State: AMke39mG1t1JbI9folDiv2PoojgEEr+6XpIRlQWEWJRk/R/7fGwmsxh19nCcswJgl+Mb3w==
X-Received: by 10.99.152.65 with SMTP id l1mr17108845pgo.28.1487432576511;
        Sat, 18 Feb 2017 07:42:56 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c64sm25997773pfa.45.2017.02.18.07.42.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 07:42:55 -0800 (PST)
Date: Sat, 18 Feb 2017 21:12:54 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: rtl8192e: Remove blank line after '{'
Message-ID: <20170218154254.GA16661@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove blank line after opening brace to fix the
checkpatch issue blank lines aren't necessary after
a open brace '{'.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_HT.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index 48d101a..f53903e 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -32,7 +32,6 @@ enum ht_extchnl_offset {
 };
 
 struct ht_capab_ele {
-
 	u8	AdvCoding:1;
 	u8	ChlWidth:1;
 	u8	MimoPwrSave:2;
@@ -187,7 +186,6 @@ struct rt_hi_throughput {
 } __packed;
 
 struct bss_ht {
-
 	u8				bdSupportHT;
 
 	u8					bdHTCapBuf[32];
-- 
2.7.4


