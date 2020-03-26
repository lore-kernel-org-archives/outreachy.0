X-GM-THRID: 6808660671532630016
X-Received: by 2002:a2e:8595:: with SMTP id b21mr6527470lji.184.1585264846016;
        Thu, 26 Mar 2020 16:20:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:41d5:: with SMTP id d21ls1415510lfi.11.gmail; Thu, 26
 Mar 2020 16:20:44 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuLhfOQnZ5LIl+miTmEwbcDdJaA6vfr6okcK2XcQoq/HX13/wYJS0DWCau58p+sTri1EU3V
X-Received: by 2002:ac2:4352:: with SMTP id o18mr7289663lfl.81.1585264844529;
        Thu, 26 Mar 2020 16:20:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585264844; cv=none;
        d=google.com; s=arc-20160816;
        b=NZNK6MABVFpa1NIZ5D5qLyzdnnA7MEJiTmwSRGyMz1SgFh+flKtiWlx1qqxslbDheF
         R4v+Mm+C8IiNSE6osLnTcFsS16LzzHbbkKfwHkJfBlFbUcAdZgo0a20xWtW6+fvyDCJc
         MpuYw8Fpoq3GN0wZNhbckEBP5eHa8omfPi8BpgKRNfFgrX6iMHlqpPijXDJZmhr/dZpR
         +U/HKzxjOM5pAnES/7uUwhOT74V45QJmr+9UU8OWgZPnUP+dzGlPEelWFD2NsXIDUpRm
         oAk3IpBVWOxeCrYp1JjD0aTnGsgHghZn0vDwUSh1yCE03iisGPctFo1iuE1mPUQpVClm
         cOww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=JIxdjLCyUEDjxNMQcB41jiVJLup2kEp8ZtymnfWBApQ=;
        b=rx6i4XK9qgKi8KmkpdUuAtcYjHYaBQXtnpy+e2GIzlLalFXe2Ahz801N0usrT5uzxT
         An7RAmsUP3zoTOlNuoFqe+pX6zudNzVDSv83Hebbyiiz8AKybAeVzM0IVnobmdIdOz4+
         MGOxSBiZbX5i3jNFiyJlu2z0w695CRi9QHuKFfc5MZJouIsX+VU8wpxTXHhIPzZgv9+d
         fxAvj10YZwKCxXhotICB1I8w8XBARKk0v/8vttgovl6mUdDweeNd/52EjfQtC95aZA7+
         poz4r6R4TUKknTVEbcRR7lu8CgP5o7EFQgAJLYk+qcoE717W0Wr0g+cSsqyzTcn+hSRE
         M/+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FICxry3m;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id w6si147279lfa.1.2020.03.26.16.20.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 16:20:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FICxry3m;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x143.google.com with SMTP id j188so6335088lfj.11
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 16:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JIxdjLCyUEDjxNMQcB41jiVJLup2kEp8ZtymnfWBApQ=;
        b=FICxry3mtU+lV5R57iLRp/hAl9nLzRa+l5gJBXnmdOxAkwYat6iKLTJhAWSLL6UX2Z
         rHWxQGzK0DFM0eEQCRTsVV/Fa0GOlfpx+TtLCYUgfShF8+w8htyCMvMTo+YwE2rLX+p2
         pp/iYofnSyboUh/qXd9KnAJZuo2vguq5TwqI5rldPpdzMSi7JqZN45+7pcuqh7teeNbB
         VbdpFSuXhtOfbO4wWhoG9ZWXTET97jZHbeCnD2dspzvrqDe03ioL+rIYWY6+L9Thvs+I
         o/Wv9T/ymBFI3mvB6X3c/hDp/bn4lwpMgFWRLyK8Tx09jLu0FuxlOVMFUHbyrLNdbFxn
         thDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JIxdjLCyUEDjxNMQcB41jiVJLup2kEp8ZtymnfWBApQ=;
        b=r2ZDuGzKwhXVPW91ufjS6R6KhEaRu6mgKhCPa49rwK1/Wz6ENXoN2lCJZhDWGqi44m
         /Wsf5HeIOAYtECfsEFUjxDlSWTiwhbq/BMGtle9o24xPPDHSt+cmcO4qOASuDiVE9kWB
         uaGtEkwWF5t68N6YUyHOy6/9Zpq/3dZgj8azpB9jbK1U5ZXslpRJ4yAuwy1j94jS3C3i
         Z0qc3YrANvacLsGdZFB5VBI1/iEennGdROFybvNsYR1fglXDTrcAFHzpQesd2fTeok8b
         P+/MKfur1eypnhi7e4td9wx0BIb7DLmmPTkNY1037H5Z/ftIaZITRmtnHPqE7As+tghN
         lXnA==
X-Gm-Message-State: ANhLgQ1+ZnyCXAkuv0vEh0YcQnlTEhWUzadTZ1pXkcr9lYl7f7uAfPJa
	XgmkTUG9CaWJwO4cDX56cpc=
X-Received: by 2002:a05:6512:3391:: with SMTP id h17mr7107019lfg.181.1585264844279;
        Thu, 26 Mar 2020 16:20:44 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.33])
        by smtp.gmail.com with ESMTPSA id l20sm1240098lji.74.2020.03.26.16.20.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Mar 2020 16:20:43 -0700 (PDT)
Date: Fri, 27 Mar 2020 02:20:41 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, teddy.wang@siliconmotion.com,
	sudipm.mukherjee@gmail.com
Subject: [PATCH] staging: sm750fb: no spaces before tabs
Message-ID: <20200326232041.GA29979@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Add a space to follow the Linux kernel coding conventions.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/sm750fb/sm750_cursor.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
index b67c545..94e9dd8c 100644
--- a/drivers/staging/sm750fb/sm750_cursor.c
+++ b/drivers/staging/sm750fb/sm750_cursor.c
@@ -117,7 +117,7 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor, u16 rop,
 
 				/* 2 stands for forecolor and 1 for backcolor */
 				data |= ((opr & (0x80 >> j)) ? 2 : 1) <<
-				       	(j * 2);
+				       	 (j * 2);
 			}
 		}
 		iowrite16(data, pbuffer);
-- 
2.7.4


