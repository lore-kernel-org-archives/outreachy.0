X-GM-THRID: 6342443752359985152
X-Received: by 10.157.24.44 with SMTP id b41mr7012114ote.9.1476715261754;
        Mon, 17 Oct 2016 07:41:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.212 with SMTP id f78ls12451532otf.43.gmail; Mon, 17 Oct
 2016 07:41:01 -0700 (PDT)
X-Received: by 10.200.52.204 with SMTP id x12mr7184803qtb.26.1476715261315;
        Mon, 17 Oct 2016 07:41:01 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id r142si719399vkf.2.2016.10.17.07.41.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 07:41:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id x79so27150849lff.2
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 07:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=k8VR6rD2jJOG1OnfIEn7bsTwQCzYCmf6kgz5ITxtIHA=;
        b=N7xkWxElQw7KoZSszt/eN1pR2+emTJHHdbO8L1Ze16FYQV/s9Mx+zAX6Z2yIzqItsh
         R6XqMNSHkFes48F5py4Jhs8uGqXS/a1pdWDDiiSbJR1VJWsMss523r6bmIyaF2NWpGMu
         myQoF+rz8Ig3E3E14Ks/wEWv8+oc4AofN+d0U4+a3Msc4QYOIu7vHzNnJClcjfZyWYDb
         k6b7KLcwfK/dDA7/Q71/pmfAP4p4372RvxLRWxUxZ+CiRH8UUGmbj3zMmABEcguvSrDr
         pgm/DKkHgAjhMJRW/j04f4TMYxaKMOW4Qw+bNuVHfESQlHxLR7G+WgjPpiHi4jPYzA4a
         NA8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=k8VR6rD2jJOG1OnfIEn7bsTwQCzYCmf6kgz5ITxtIHA=;
        b=L/d9YPrgj1GarkvCLdobr5dmd4iO3HF9dzHUjobvfoqN2EnhdXKDO41YdqhkDwDvfV
         nRzyS9GLMugpzaSvpLA1GMJGQG/V+ZUkERLt/UYagE9W0g9dFKKxlhVvzz3ce3679VJZ
         CJLRy2Tui4S/vEvP45BU1S62d8nE0Vy4qAQSD2N3VdMVleIMC74A61JbCBvA+dbNjwUq
         i/UmYqS0XEj08Z8qhMzwtG3v8Bt5FADK2MoMFN+lvE0horvBJYjSnuJOsBWvzAo9CJSV
         I8Y4Vz2Um81GNzGtpwDum3OTtji4OsdB/2T+EgHzhGlMohHu1F3342a64X0oekuXEqtQ
         6+XQ==
X-Gm-Message-State: AA6/9RnQAZEpIgYLZCS2W4PpkUE88QguqvD895eZmNZqwQr8goKoyHeGZJfCOmNlr9nTTA==
X-Received: by 10.28.63.6 with SMTP id m6mr9230301wma.22.1476715260584;
        Mon, 17 Oct 2016 07:41:00 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id h3sm53668103wjp.45.2016.10.17.07.40.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 17 Oct 2016 07:41:00 -0700 (PDT)
Date: Mon, 17 Oct 2016 17:40:59 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: gdm724x: Make a read-only structure
Message-ID: <20161017144059.GA14997@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch add const qualifier at the declaration of the structure.
The structure become a read-only data, this increase the security.

Found with Coccinelle:
@r disable optional_qualifier@
identifier s,i;
@@
* static struct s i ={...};

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/gdm724x/gdm_lte.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
index e72dfa9..edd9b98 100644
--- a/drivers/staging/gdm724x/gdm_lte.c
+++ b/drivers/staging/gdm724x/gdm_lte.c
@@ -52,7 +52,7 @@ static struct {
 	struct sock *sock;
 } lte_event;
 
-static struct device_type wwan_type = {
+static const struct device_type wwan_type = {
 	.name   = "wwan",
 };
 
-- 
2.7.4


