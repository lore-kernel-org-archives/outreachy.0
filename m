X-GM-THRID: 6250414511846588416
X-Received: by 10.182.28.41 with SMTP id y9mr1723590obg.14.1455288033554;
        Fri, 12 Feb 2016 06:40:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.33.194 with SMTP id t2ls878180obi.5.gmail; Fri, 12 Feb
 2016 06:40:33 -0800 (PST)
X-Received: by 10.182.247.97 with SMTP id yd1mr1688992obc.9.1455288033235;
        Fri, 12 Feb 2016 06:40:33 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id tn7si1542435pac.1.2016.02.12.06.40.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 06:40:33 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id y7so698037paa.0
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 06:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=FcL8JN3f7/qSKVghcILOR95pe5+nUVmzgRlzTvVTmj4=;
        b=1Hg+TYyjYgX971KhJ0B9R7lgVyx8rOZwhvhiQkHO1+BPaLssHcc0IOEg6Ucea061bN
         2LBefSt4vdNvDSALcGAHHqgUebJnnklsVCctpqvETvX7Ev0wSidjAXAri0xNUtec985a
         He4ZT8rFjDOYkVsBYcqf7iVGBpOkrh0sT8H0ej+93/B213NQSRmV4t2BjCmf0Ndz8/Gh
         ugHGxr4eYBdkiIrjf6/vMpnqH77Xa05rkZ4y3OsVlzXP6Jqi++w0/4UYkESSQXFUkhzF
         ugCUjhgLsYv0R1HBaqmg+kPa2ZtXlRRJJFdy6WFfljHPV5uDq34oAWoO4WWabVuKP2dE
         M9hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=FcL8JN3f7/qSKVghcILOR95pe5+nUVmzgRlzTvVTmj4=;
        b=G2OQnems4XfyI+FUHyWqM53jj+ixms1ZPXrQTWbTAVMSesFnLE5qYIOtmp3O8Mp6TF
         oBa/1dGPwK9T/EFOCf8XzKqI08DVVmf0k99qV0y/z+0jylnDi1oSgoEub79JxOAmtCtS
         pf4JvzTTYAHIW5kZW4XM1U+mExUrX/hJPVvSILF+wtqcZlxmfAZQita+Wwfgl+gAo1ft
         5NCnyV2UA1OF6MN3Iy6LZWl+elxl1UTdBDsx4leuuBCZjb/NX6Ornzel9Oix4//ZCoOK
         AtRQoxybd8sMgEvvtfFODveXQCT/BKZumjZTTQidyhAguq13ySWIfaS4gUJbGc4BERF0
         KpuQ==
X-Gm-Message-State: AG10YOQ8/RoMf3NRbf8N3ExMUSgSnWEJUVmVGzz6vjcixnJv6XgN23ilMd3Kx1cFCCvXyA==
X-Received: by 10.66.225.177 with SMTP id rl17mr2647688pac.46.1455288033081;
        Fri, 12 Feb 2016 06:40:33 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id v29sm20033300pfa.31.2016.02.12.06.40.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 06:40:32 -0800 (PST)
Date: Fri, 12 Feb 2016 20:10:29 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: rtl8192u: ieee80211: ieee80211_rx: Replace
 MSECS with msecs_to_jiffies
Message-ID: <20160212144029.GA1317@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace driver specific macro MSECS with msecs_to_jiffies().

This was found using the following Coccinelle semantic patch:

//<smpl>
@@
expression e;
@@

- MSECS(e)
+ msecs_to_jiffies(e)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 28ad63a..9dfde07 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -761,7 +761,8 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		pTS->RxTimeoutIndicateSeq = pTS->RxIndicateSeq;
 		if(timer_pending(&pTS->RxPktPendingTimer))
 			del_timer_sync(&pTS->RxPktPendingTimer);
-		pTS->RxPktPendingTimer.expires = jiffies + MSECS(pHTInfo->RxReorderPendingTime);
+		pTS->RxPktPendingTimer.expires = jiffies +
+				msecs_to_jiffies(pHTInfo->RxReorderPendingTime);
 		add_timer(&pTS->RxPktPendingTimer);
 	}
 
-- 
1.9.1


