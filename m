X-GM-THRID: 6256430930767904768
X-Received: by 10.98.43.132 with SMTP id r126mr10025063pfr.5.1456688840869;
        Sun, 28 Feb 2016 11:47:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.52 with SMTP id m49ls2022901qgm.97.gmail; Sun, 28 Feb
 2016 11:47:20 -0800 (PST)
X-Received: by 10.140.108.182 with SMTP id j51mr27374881qgf.16.1456688840438;
        Sun, 28 Feb 2016 11:47:20 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id r75si1581689pfr.0.2016.02.28.11.47.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 11:47:20 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q129so1539341pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 11:47:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gRNzN7ZBUI2Qr+ERWxwqQMu/lwFkKKM4e+BZo8B9Q3Q=;
        b=RcxoNPggM6NMh6wtOc+JmRnq0bR9w29I+83JC0NKxgjYxrdadE3RiEg9OYFLS5jHJh
         IDveOh1IIb2RrbBSJ00DlAZ+wUxiCONh4KZh358Km6C0iV7FNb6cf6I3UI9IIyGLOL5n
         xcxBVX6hVnD36dfGEklAjmCMJ0USGDnBR7c6ZRXd3+r6uPgP+gNGjiORO2V85v2MKH8n
         szIYXvCBFDtY4u8uBUec1kWjq/elcEaP6YL6KpK7sivxqAL/Y/33bS3kkDOU0I3qa87g
         8dWqXEDRcTCiDPHOpHddIH5VV3vaZNHEDSDmokVdWwJ7q75VzQKxYae6vC9aJbNTu+Bm
         STkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gRNzN7ZBUI2Qr+ERWxwqQMu/lwFkKKM4e+BZo8B9Q3Q=;
        b=MPrAreOkB3Zh0A9HqdTk0G1V+Y6CvN91f7t8HOKukpxFlZl0ITGa+/VEwIQpiBrG4o
         deEsrnl+kdEAeTvn6iwmW2LzxUzKT0x4ht5tiCJBhmpRD9P2SZq1iJbFcc3cJYZu+Iqj
         S0wWnKffiUmeGMjTvYOh14CFWUi+0/L19iubgKQvQNMhLofnzxw8QgqIxm7js+V9TuSL
         QpMDfko1B5Ekjm+vPwOkDQzcNdnJnUKUI331zAnkUQFsCAEYOV9RzChsD5ZCdCMOYhMf
         5NDHGvDnjCWhhbiJYIumZOsBxuKfpnOTocOsPiJoqc2NWWDYz7umWyxL3e0rqzFReZZ2
         84Jg==
X-Gm-Message-State: AD7BkJLXd4X+O1TGLyYkf7LD+7C8na34QI8aIH09jBOkEcxk6lB0tuJPXJ9Qs6pPCV8opA==
X-Received: by 10.98.42.85 with SMTP id q82mr17069566pfq.18.1456688840256;
        Sun, 28 Feb 2016 11:47:20 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b63sm32825232pfj.25.2016.02.28.11.47.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 11:47:19 -0800 (PST)
Date: Mon, 29 Feb 2016 01:14:32 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: rtl8188eu: core: Remove NULL Test before vfree
Message-ID: <20160228194432.GA1761@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

vfree frees the virtually continuous memory area starting at addr.
If addr is NULL, no operation is performed. So NULL test is not needed
before vfree.

This was done using Coccinelle:

@@
expression x;
@@
-if (x != NULL)
    vfree(x);

@@
expression x;
@@

-if (x != NULL) {
    vfree(x);
    x = NULL;
-}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index ce655b6..c1abd5e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -172,8 +172,7 @@ u32	_rtw_free_sta_priv(struct	sta_priv *pstapriv)
 		spin_unlock_bh(&pstapriv->sta_hash_lock);
 		/*===============================*/

-		if (pstapriv->pallocated_stainfo_buf)
-			vfree(pstapriv->pallocated_stainfo_buf);
+		vfree(pstapriv->pallocated_stainfo_buf);
 	}

 	return _SUCCESS;
--
2.1.4


