X-GM-THRID: 6528799857356832768
X-Received: by 10.200.20.154 with SMTP id l26mr6654650qtj.26.1520104673483;
        Sat, 03 Mar 2018 11:17:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.237.47.196 with SMTP id m62ls7592134qtd.7.gmail; Sat, 03 Mar
 2018 11:17:52 -0800 (PST)
X-Google-Smtp-Source: AG47ELtH7qgdaq/MpSzRKs2z1jPxKcPT1+NfOMY5Zz0LIwb4t8tJyhwk0CJIgmrZd+JsirevKcEY
X-Received: by 10.200.4.134 with SMTP id s6mr7230371qtg.9.1520104672166;
        Sat, 03 Mar 2018 11:17:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520104672; cv=none;
        d=google.com; s=arc-20160816;
        b=W/pObBgik6eMvHH2BXi42RKOBV5KkJl0aJysHQahpkoQCL5c6UgPCMuuuQokNJrUlL
         eWHP4FE0sWlInrwAanBl+fjP6BS5tgdupC73r9/FWiP9sWeF64Qq1vSyRIi8/vn8J7Y1
         s7uqOv0nGhW7bynYPnn27kf7Hhhf2bZcA17rxydCdeLublNRDf2uMi9pIOEyh/8YXqKZ
         GEoQdfnbZY623OYwSR4xPukp8SXM1MlF2eKeNcCvbzsvqNlD1R3pShctyjcCmhnSxSK1
         NU7RRQf5Jr3YSveeqTZ7gC4ZK+n0WzayDBGcZzR2SbQWKmReoVdEAyHyQ0b+Egr8A0ZU
         EMjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=whG8qONH6PPwVNCMWEJmpD3+AAaKh04oB5MWz/Dov3o=;
        b=BaO43VfuUHWQtjOXeMtTblsz642hrVQYxr3JjrneunwC0MXNP70zjZ2ABxbAVc+6/6
         sYjh/yL077zqXm68UbiBCxd97+UFyAXvwzNH076hztENRrLCROroEhzGNXfV05rx+D3C
         hwpo3nd+rxieQNkCGZr2f031g3GyxoY6DTWaAAkxIMStQ/jz+CzpPmo6qcAQDDHdwqep
         ovi3AlB2cVs/LRmdoyHYZNcuvNreBtCUkk7n7JdD4fQhEjjc7+VkVaoqbKN6MAhJwFS5
         5E8DifrgHNFo8YaOKJVOIQsNfsYcUEAbCSUSyxxZekMtx8/HB2i+GxOjbm/rWPMTvdSp
         0DZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AQDxdXC5;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::230 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x230.google.com (mail-pl0-x230.google.com. [2607:f8b0:400e:c01::230])
        by gmr-mx.google.com with ESMTPS id 44si753622qtu.1.2018.03.03.11.17.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 11:17:52 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::230 as permitted sender) client-ip=2607:f8b0:400e:c01::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AQDxdXC5;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::230 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x230.google.com with SMTP id 93-v6so7504975plc.9
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 11:17:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=whG8qONH6PPwVNCMWEJmpD3+AAaKh04oB5MWz/Dov3o=;
        b=AQDxdXC5bOH0D8m2ubxip22N0O8pN1D3nEilNb86Ra/8JU2cwGidZTk3p4QAy59JeP
         RsBRRTCHmUY3MGzhgWNqkI+fYtplkXYRD63+jqOMXN5GJ1n1t/5v/RIZ8VxfjgO/liJa
         aloqNGYRcWOUndoE5QxA9XJKCC2W43DZjxHjzH8IUt1X6cxUefvbPZ7bN/LkE9vtPyl/
         ZdwKqHCqDu30+O6mJjBwvU2og44kkeX8Tz5pqUfu/nq0QOZycEGHRZ+4Ft0TKNGGnKkF
         eRKpZ2lSZX0QPfAWHElo+JdwcdRzlF9AjoZ2DY6cUPmFjmO4Dwomb9/BULV7mWkYP9O0
         MCDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=whG8qONH6PPwVNCMWEJmpD3+AAaKh04oB5MWz/Dov3o=;
        b=nneXholdXvFUAUO2pjb0haVQGyxIa/HJ8FOeuAHfqaz7K8aaM51NeNYg/W09XJUCHl
         Wlbx5dIjCoXG62UA3WNzm8hezIoFg9en5HAVc7BQCL5ZR5Mhgnt244Eo/a/GnkPqaOe1
         GAD/EE8T5NUUdp/4orNy0alX8ijbLJW3v+DPR10yrxacAQEWIWFaRQjTxL8n/QfZiF6H
         iYxBnN3eIjQLon+hzNK80nGj/PmAszVDjx8JywBWs8KfoumeCzQgP3ydz1f7cp0+YftV
         I5nOuOR8GYovzDQOqwJCAYp2aBZigE+ZOyjIvzbvFhx6mINlPmvnuwIi8pLuZfgAQjrN
         NeyA==
X-Gm-Message-State: APf1xPDc0zJJ+lbPkHhOz4vb0TlC8RXzS+cVykpkFQ4tP/DbIQ/j1/Ok
	sRYAaqD9uGYpXdKyPizlNS472A==
X-Received: by 2002:a17:902:243:: with SMTP id 61-v6mr8633073plc.202.1520104671265;
        Sat, 03 Mar 2018 11:17:51 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id i186sm19271905pfg.25.2018.03.03.11.17.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Mar 2018 11:17:50 -0800 (PST)
Date: Sun, 4 Mar 2018 00:47:26 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Remove unnecessary semicolon.
Message-ID: <20180303191726.GA4986@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary semicolon using semicolon.cocci Coccinelle script.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c       | 2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 9c7c3be..86f995b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -1785,7 +1785,7 @@ static union recv_frame *recvframe_defrag(struct adapter *adapter,
 		pfhdr->attrib.icv_len = pnfhdr->attrib.icv_len;
 		plist = get_next(plist);
 
-	};
+	}
 
 	/* free the defrag_q queue and return the prframe */
 	rtw_free_recvframe_queue(defrag_q, pfree_recv_queue);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c b/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c
index a71b552..f6aeb26 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c
@@ -163,7 +163,7 @@ static int phy_RF6052_Config_ParaFile(struct adapter *Adapter)
 			break;
 		}
 
-		/*----Restore RFENV control type----*/;
+		/*----Restore RFENV control type----*/
 		switch (eRFPath) {
 		case RF_PATH_A:
 		case RF_PATH_C:
-- 
2.7.4


