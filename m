X-GM-THRID: 6254163477603024896
X-Received: by 10.129.73.215 with SMTP id w206mr17095569ywa.6.1456160908470;
        Mon, 22 Feb 2016 09:08:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.34 with SMTP id 31ls332683qgy.28.gmail; Mon, 22 Feb
 2016 09:08:27 -0800 (PST)
X-Received: by 10.129.117.11 with SMTP id q11mr11159473ywc.3.1456160907895;
        Mon, 22 Feb 2016 09:08:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id yd9si3214481pab.1.2016.02.22.09.08.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 09:08:27 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id q63so95577493pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 09:08:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=b7AKKuE8q7BP0K4S9GzVra62VjpPPvdG41sk+/o9mg8=;
        b=VsPHM3D+HGgCl13JUaza/q95QFJxwaoKH2ZtG7a1Gl0fvFf6mQ5jgQXw9dj3/vpjfR
         Xd5ANo9MO53aOLYrVPiL9UOQBLixoYLYr3jSqlFfFI/5eghQmH0ZK+0pPtuTILSlv5Uv
         mn+0d8RSuEVEdsCLQrNVc0l7GvT4c6aVkI2HQT/WvLuPAfaU9C1MYPrzFpdUzJTEEC8G
         73vtRtJGNJecWVsBEoIRXtybvBsrcbn8IQHA6SZF2e7NtLyQuqBnL5doke+nd5tNIrRM
         9BZXbsZAxIIwZSXLrUwXwIp0PR296VUM9TEVFk0lappf19x5QvMiGAA2KrFriqApa56U
         2HgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=b7AKKuE8q7BP0K4S9GzVra62VjpPPvdG41sk+/o9mg8=;
        b=i7qKXYQB8547Q7u/hV7j/Ql502d8Ha9QKA44POoXjzz9DPOfVyKRL/o2EadmxNPyHm
         +bCRaPknJpufmtGHL41IURoBb69UgfCjuA0w5VqhgaDTvxPoLgSGrBIT1pQqaVjS/hYk
         LzKI5ELgZFkmhpKXxqAz/X8qtJpkljmC8OacdTgq4GzE0DI1NtiJtEOAtlXr2Lp//zUo
         v94LvDF4JqG8jjtiQh48fX2S7566dqrXsWDZEFBATn8sVMf+d1kY/xFW6eU90V0WEsW5
         eGz0nbGedxuZ3TtF1HrvRZTIM92CmANaE0XupFpY4HP4XooEzmb6rC4GiyCq7WzBUYbP
         TZBg==
X-Gm-Message-State: AG10YOQ/bXxa+ynZc3KYyZ1l+COkyt2hIfiemlhqXyuCzZVtVJdhfNIy0BkKMB9umU7Asw==
X-Received: by 10.98.10.149 with SMTP id 21mr39840739pfk.75.1456160907549;
        Mon, 22 Feb 2016 09:08:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 87sm38108446pfq.93.2016.02.22.09.08.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 09:08:27 -0800 (PST)
Date: Mon, 22 Feb 2016 22:39:00 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Remove unnecessary parantheses
Message-ID: <20160222170900.GA26149@Karyakshetra>
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
 drivers/staging/rtl8712/ieee80211.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
index 974ca02..d13b4d5 100644
--- a/drivers/staging/rtl8712/ieee80211.c
+++ b/drivers/staging/rtl8712/ieee80211.c
@@ -376,7 +376,7 @@ int r8712_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len,
 	uint cnt;

 	/*Search required WPA or WPA2 IE and copy to sec_ie[ ]*/
-	cnt = (_TIMESTAMP_ + _BEACON_ITERVAL_ + _CAPABILITY_);
+	cnt = _TIMESTAMP_ + _BEACON_ITERVAL_ + _CAPABILITY_;
 	while (cnt < in_len) {
 		authmode = in_ie[cnt];
 		if ((authmode == _WPA_IE_ID_) &&
--
2.1.4


