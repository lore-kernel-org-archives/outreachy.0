X-GM-THRID: 6260477384664809472
X-Received: by 10.66.146.10 with SMTP id sy10mr3468964pab.24.1457630979118;
        Thu, 10 Mar 2016 09:29:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.52 with SMTP id 49ls1836368qgo.79.gmail; Thu, 10 Mar
 2016 09:29:38 -0800 (PST)
X-Received: by 10.140.39.229 with SMTP id v92mr3441933qgv.25.1457630978647;
        Thu, 10 Mar 2016 09:29:38 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id 12si703670pfb.1.2016.03.10.09.29.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 09:29:38 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id 129so73773522pfw.1
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 09:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iWtTbjIbVxuFtRQjlCs7/UEp/2szHioolfDmzHIQml4=;
        b=EYM8zIZbWiMEvJJLpvYBbiPRVK/3OOoFlSvwN3djiN/Ph/Uk6VZQlj9RaCjlMrXBK/
         qw4SfXRPL5SJNDmitk6VmouqYyh7JTJeKIoS2PefLSNuLIFMD0LDIMvdMeyGidYa5kre
         xMWxq+3cNhc6heSKeV5/3ha3EF8aXf9Du+/aOaCXwhV5PfWyqta4PO9P2TNsI/u2mruP
         UOokJwhfKUQ79nyJhjT/92W0L7jeOznxfTiJpmVpVzNj3Da7gspw0NAoxdV8JJrnZQCF
         KPCKNYu9HCgek5jtcwZOUSXfwJAi/tHwlKkY3eyFCzkNgYSsgW1vkUPgghd3DlQ1m/Fd
         6Ctw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iWtTbjIbVxuFtRQjlCs7/UEp/2szHioolfDmzHIQml4=;
        b=ZA7Zhc9Z3Unsc6dxYevsevhqoKLK236JPvrRCjoTtr81mmgG/ylqLwT58DRXmOZBQU
         Bide7S2lSyS/o5TZb4FpyDgxhqYhqo7AUHjpa1VHy20GYvpfXLC6rMpYwyz4Ux1fxq3e
         iEsKJDBxJ/DBwxAI/ZMvifZkrF1eBGjGmBFsYpMUWCEcP/xxee71rPh/+zHnw9b/gNPO
         2z6+/DlO1ezola2NKMhEmQpmozyGzTG790jOlAGxEXDZmpH/oVm6VI5B2QQ654TgGzqa
         Xhi0XkuASYlB88axkL6WFd/ea44QzsqgU5E7J6ps/WV+g+cBG+rjwBv0exSNnin2jEdo
         w4cQ==
X-Gm-Message-State: AD7BkJJD5uNhDN2a6l/uGudqv3T0x17tx0puCC/DIpkRIYINYipL29QK1lTwqaP2LGPR/w==
X-Received: by 10.98.86.157 with SMTP id h29mr6657794pfj.105.1457630978456;
        Thu, 10 Mar 2016 09:29:38 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ux2sm6920130pac.46.2016.03.10.09.29.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 09:29:37 -0800 (PST)
Date: Thu, 10 Mar 2016 22:47:22 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: ieee80211_crypt: Remove unnecessary else
 after return
Message-ID: <20160310171722.GA19513@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the checkpatch warning that else is not generally
useful after a break or return.

This was done using Coccinelle:
@@
expression e2;
statement s1;
@@
if(e2) { ... return ...; }
-else
         s1

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 3995620..9cf90d0 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -176,8 +176,7 @@ struct ieee80211_crypto_ops *ieee80211_get_crypto_ops(const char *name)

 	if (found_alg)
 		return found_alg->ops;
-	else
-		return NULL;
+	return NULL;
 }


--
2.1.4


