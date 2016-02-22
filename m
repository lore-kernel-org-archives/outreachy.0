X-GM-THRID: 6254163233745141760
X-Received: by 10.140.153.23 with SMTP id 23mr833377qhz.18.1456160851305;
        Mon, 22 Feb 2016 09:07:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.85 with SMTP id 79ls269921qge.15.gmail; Mon, 22 Feb
 2016 09:07:30 -0800 (PST)
X-Received: by 10.140.39.229 with SMTP id v92mr446311qgv.25.1456160850691;
        Mon, 22 Feb 2016 09:07:30 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id ff2si3517043pad.2.2016.02.22.09.07.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 09:07:30 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id yy13so93954069pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 09:07:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Gou5+gel8Sbkf6yqWiE4h3XhRAmwQmB8S6hs2WZ4xtg=;
        b=sovzqteRoHbRVq7Kb6f3q1Yqo/gKaraJ0MwcREjSSPYWHDQI3S4rXWv1AWBSj7ELrz
         x0HTEYFagvggs/hWoXoyS0BCg3HEjuXAl6YyFWhw5CXF5h152+t6fh6verJbvzwLVMD5
         Rs6/fD6hA090jgv9soU86//8h96N2W8cKnp1XlIzV8tWemo4nSx78uyCLzkZruneLZdp
         oYeM0dGyRf/5v6cPGtw8cmTWGHCyRLSNRrPY4MmLpSQMD3GSw8aHaAMSEt9m1kovyPA/
         pI1cJcIDq/nVVqvzRNuOyHmgWRB6+ELwN859pHz5tbvHb6PTyIXNvQUEniRPzy1A7rd6
         YQdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Gou5+gel8Sbkf6yqWiE4h3XhRAmwQmB8S6hs2WZ4xtg=;
        b=j2WG4ipibX+KweH2kz9lwrqrXeUqwe8a0AKGpQcZHumpOqmoFDJ+1Yp6OgBYKV/DKV
         leVARofDiMHtkognyOofuNTRWM/RIiiHKkfjbZaob2ZUdDoulmvd9y8+A5nJgbaSwbVR
         za3pmBDNyaK4OQuqzNvhO276nzGjpT4yY3NSXAjmCvp6RzRTKSTN6K/Im5yZvRUd1e/i
         Kku/HFzXPg8biWzZ59SzA2xW8v+aYEWoZxKCVLYqIH0Vcs3wd65XBT9CY9cv9yIUnqRe
         rZM9K9zzY6mvRp+z/JgSlkAc+Qc0wqhNlOc1pw9g2skEbRoV6gcS7rQZeFvd4v+P2TP+
         taoA==
X-Gm-Message-State: AG10YOTIJlCasnT10jNS5SzN6rlY9oGhxZcxWNFi5GX+Z5hQ/XWxUT3Qwhkr19zNo15ewg==
X-Received: by 10.66.159.136 with SMTP id xc8mr39771077pab.71.1456160850556;
        Mon, 22 Feb 2016 09:07:30 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v7sm38138578pfi.56.2016.02.22.09.07.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 09:07:30 -0800 (PST)
Date: Mon, 22 Feb 2016 22:38:03 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: Remove unnecessary parantheses
Message-ID: <20160222170803.GA26114@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Removed parantheses on the right hand side of assignments as they are
not needed.

This was done with Coccinelle:

@@ expression a, b; @@

a =
- (
b
- )
;

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 79d326a..47a740e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -203,7 +203,7 @@ void rtw_add_bcn_ie(struct adapter *padapter, struct wlan_bssid_ex *pnetwork,
 		if (bmatch)
 			dst_ie = p;
 		else
-			dst_ie = (p+ielen);
+			dst_ie = p+ielen;
 	}

 	if (remainder_ielen > 0) {
--
2.1.4


