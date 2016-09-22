X-GM-THRID: 6333026531051307008
X-Received: by 10.98.97.193 with SMTP id v184mr65554pfb.10.1474524092597;
        Wed, 21 Sep 2016 23:01:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.133 with SMTP id g127ls5397333ioe.53.gmail; Wed, 21
 Sep 2016 23:01:32 -0700 (PDT)
X-Received: by 10.66.16.135 with SMTP id g7mr52341pad.27.1474524092080;
        Wed, 21 Sep 2016 23:01:32 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-yb0-x242.google.com (mail-yb0-x242.google.com. [2607:f8b0:4002:c09::242])
        by gmr-mx.google.com with ESMTPS id c75si13113ywh.0.2016.09.21.23.01.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 23:01:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c09::242 as permitted sender) client-ip=2607:f8b0:4002:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c09::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x242.google.com with SMTP id u125so2588936ybg.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 23:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xivCJoaPXHRljeGHXEQwdbIrvY7bLWKxtwFpMzqIXxA=;
        b=Okc62Wbrfo9yJVhRjaI2i+lMmPF82GbICafQK8cnpI2Jxzq99aecUoKfTKoUmGhLaF
         pFNqz7tfvTG20oLEzdb42ThC9+DqyyCYlch60idFe+WV7SB0ovIGFhUeFIbBG1igZVtg
         GNl+6bn+0Lm9YCeyEbOH+xPuwy4WjNkWKsuOEMKq6dte2uYHIWbfyexLO5sNogwQ59JO
         ZC+VwEXMLbihh1+YKmuP765PZmVdbtQsSzCKf6D9JFdQVTcjAg9ZhnAJvWeDWvQ2OKSF
         B5tH81SmDt6V+Bt/Mojf5m32bw8+WzabCuipK/epYPJuHBLnnB2TlhQIQMmu42mH5rn2
         rBvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xivCJoaPXHRljeGHXEQwdbIrvY7bLWKxtwFpMzqIXxA=;
        b=Zszkm9LQztcsaMJFixrvmKXmuMlyHmbAHRj1FqVKTjtgU3a9kojpjnyxUNZfM6N+Yt
         919RD9yveaja+lkg7NZ6rgg9thowmjVPQpvFfPMM/gsxoA1q8x4CRAIOJb5534SR2HFq
         FFDG44ndx9NkQf5E2UkKMzzm2+ADii+z1rkk9QKBt+jzW8aEYW8072WKWxV8UIwIJZyv
         Dqw8MV6bqp72i6+Dn4acfFMyPHMuFhREv9qEM8pBBK2Itfb8oZ5tbjxGtlQ2G/l6Nt/v
         5I7RGOfB/gavZoOkwjTxAdRiSzK3XlKOSsdO5MVIctT5+cXaZClNPbzCuIjAEnXKHx/W
         PH6A==
X-Gm-Message-State: AE9vXwOSd00AfeUjFp6GMtB3RVToZR3CjuTZaWIgkD78PpaPEoEpqKLrWXWy0HMKCCb1zQ==
X-Received: by 10.37.172.165 with SMTP id x37mr163891ybi.34.1474524091666;
        Wed, 21 Sep 2016 23:01:31 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id i9sm93983ywc.5.2016.09.21.23.01.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 23:01:30 -0700 (PDT)
Date: Thu, 22 Sep 2016 03:01:28 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: wlan-ng: fixed block comment trailing
Message-ID: <20160922060128.GA3313@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

Moved trailing */ to a new line and added * to subsequent lines on a
block comment.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
Changes in v2:
   - Fixed commit message line length
---
 drivers/staging/wlan-ng/hfa384x.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 87ceebe..4e6ea76 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1297,7 +1297,8 @@ typedef struct hfa384x {
 	int dbmadjust;
 
 	/* Group Addresses - right now, there are up to a total
-	   of MAX_GRP_ADDR group addresses */
+	 * of MAX_GRP_ADDR group addresses
+	 */
 	u8 dot11_grp_addr[MAX_GRP_ADDR][ETH_ALEN];
 	unsigned int dot11_grpcnt;
 
-- 
2.10.0


