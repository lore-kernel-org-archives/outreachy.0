X-GM-THRID: 6805850934737895424
X-Received: by 2002:a19:7406:: with SMTP id v6mr1548484lfe.194.1584610653623;
        Thu, 19 Mar 2020 02:37:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8189:: with SMTP id e9ls167977ljg.4.gmail; Thu, 19 Mar
 2020 02:37:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuWDlb9UsKIt5ytrdOnZ//wPylg/ep9Gc8mf5QHG5sVnwh53XvJBG0Df/JBPxy9s/N9/sTK
X-Received: by 2002:a2e:9256:: with SMTP id v22mr1583462ljg.38.1584610652368;
        Thu, 19 Mar 2020 02:37:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584610652; cv=none;
        d=google.com; s=arc-20160816;
        b=BlcQDWnvvaOvlc7QuDi+IO4SCjG6z0V3xd3D7dVXjdkqQ2gICGPmwWtxIaZvv++SnW
         IiaJ5aKXQb/FpNXKgqHms5upWIJaBrkLYkYU6P4zSERrHsBymtFVrU85Kpr+4gPRZAnl
         Bgu+avlA1PYGD/LbKqq91QyFuQJqvPW/4XbDM2E2bsSbA3R1Gv/axcGwi86jSSlX5owY
         wHqYElHwpMcSpy8Q3npnEGkaVZLqWae67FbwddRSYyw3w5afb/AONNaO9Ih9xkgRVv+u
         Yvx872AAqvS+XWsM5faMEE8nmOtqxsUQTKrrgExt4442YpycHHpVG836Eix+VbqnOfpw
         sJyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=O9kZc/o9Jw7RdF7EonmqsGlawHI1Sj550RmL5aUPIVE=;
        b=APCff/eWNNT7eQ2TSfJQwWuTgwAbZucuUzKgB6HQUlpm7kN6OpkNMA/iOieZ+G8doA
         q9s8VywNcSTwMmkdYUySLvZ2JJ6aVwlYxg2w5kIlolG/1pV/rkw9v2Z0WvoxLiVEoWeQ
         hzCbjmq7cz+4kNnAD3RzKukvbRy8MN+W60cP6sUWtOixy1SEOJ5lss17NXnLQPMuF8cn
         D+tniRLdhN+oayNn4iL9wixS/aRADk+c+wttGTf+AFC4hzFcVvsLn6Rd8xYFEzk2madd
         ChD2zI5kzKuFYiX9MQ86gSlANq/jTigvoe8x+tdxvG3Ko3RmVRjDyJyyFi9H7io+AWFl
         XMfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id b26si91333ljk.4.2020.03.19.02.37.32
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 02:37:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26574 invoked from network); 19 Mar 2020 09:37:31 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 09:37:31 -0000
Date: Thu, 19 Mar 2020 15:07:24 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH] staging: rtl8188eu: include: Correct a typo in a
 comment
Message-ID: <20200319093715.GA2550@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Correct a single typo in a comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8188eu/include/rtw_xmit.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_xmit.h b/drivers/staging/rtl8188eu/include/rtw_xmit.h
index ba7e15fbde72..b9f11ef327e7 100644
--- a/drivers/staging/rtl8188eu/include/rtw_xmit.h
+++ b/drivers/staging/rtl8188eu/include/rtw_xmit.h
@@ -112,7 +112,7 @@ struct pkt_attrib {
 	u32	last_txcmdsz;
 	u8	nr_frags;
 	u8	encrypt;	/* when 0 indicate no encrypt. when non-zero,
-				 * indicate the encrypt algorith
+				 * indicate the encrypt algorithm
 				 */
 	u8	iv_len;
 	u8	icv_len;
-- 
2.20.1


