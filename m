X-GM-THRID: 6387794741064368128
X-Received: by 10.107.17.76 with SMTP id z73mr1419473ioi.98.1487277422262;
        Thu, 16 Feb 2017 12:37:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.154 with SMTP id v26ls2504420otf.0.gmail; Thu, 16 Feb
 2017 12:37:01 -0800 (PST)
X-Received: by 10.129.41.206 with SMTP id p197mr1441396ywp.28.1487277421891;
        Thu, 16 Feb 2017 12:37:01 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id z3si306428pfj.0.2017.02.16.12.37.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 12:37:01 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id a123so69542pgc.3
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 12:37:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=G+rlTJSkYcFFWIeKBkArRA1zCQpfOuypp8oNa3L1Gv4=;
        b=m+879vbmBtt/ll9bqm07+vaLC1YHeImMl0f4feumNRMHzRmnL4uV+6luS3nv2qAmVi
         BBZnSzs76yGEDd8DK/M41ujsAYU8E+BhZ+aXizgG6lcvlDpDdrMzXcBB08uQbNfyaZ3L
         notCArumaeySBG4cLZvCw824jlQMjvfrGQTXINt6HXVeS2WPOoC5jeoXnipQ+EpXzgnL
         TcaLnzXql5krpMiVVy14RKOk31neNMYP9Mk1GPkrfZ7TPCL3+tPVADr5h9bNIEFovHZu
         NfYwb8bKJSM+Gn/z1j/FMf4XsmP9FigPjL861SbqozDEBblJCnMS2BF++WHSvTyNxcmr
         57DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=G+rlTJSkYcFFWIeKBkArRA1zCQpfOuypp8oNa3L1Gv4=;
        b=HLOyNrOpZkE1uiZp9MOciSf+lRNj8L6GLhMYfAVmLyhlVW0gYXgAviMUGnqy40h75L
         HMHH5r5nulAMFCmDFZKh60T8lRF9vSBeRn4f4B1C/v7FTE5Z+rhuTrNiHuRqaiUIQyCH
         5+R55rf9DMeCsWaV0NTvPDNPKWXTyvqGuzE2PrZGRPJp/uVM1U/QwruyW1MF3qfnGxv7
         fCPMT0EhHxpD5A4HCbFxlHRnV6rkXNqayqYD+Q0kb2VRA0UJUSuXaOthu9ML6bnk3ajN
         ii/ycCaaLDId3StNH0IbY3aorBzx6O+cUhJB5O8xPp+GL8ugnFumcCAinLgxfPbjfC5v
         yI9g==
X-Gm-Message-State: AMke39kEz8zqXhAyv1grxJvWwFXrl7lnt8XIaE99ZzMLYbBDkcTD4ZLof6BxO7sdv008bg==
X-Received: by 10.99.48.68 with SMTP id w65mr5267238pgw.107.1487277421671;
        Thu, 16 Feb 2017 12:37:01 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y184sm15233707pfg.86.2017.02.16.12.36.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 12:37:00 -0800 (PST)
Date: Fri, 17 Feb 2017 02:06:56 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] staging: rtl8192u: Replace symbolic permissions with
 octal permissions
Message-ID: <20170216203656.GA9098@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Octal permissions should be used instead of symbolic ones for easier
reading.

WARNING: Symbolic permissions 'S_IRUGO | S_IWUSR' are not preferred.
Consider using octal permissions '0644'.
This warning is detected by checkpatch.pl

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 
 v2:
   -Added more information about patch
   -Reworked for putting proc_create() in one line
 
 drivers/staging/rtl8192u/ieee80211/ieee80211_module.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index a9a92d8..503ba7f 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -283,8 +283,7 @@ int __init ieee80211_debug_init(void)
 				" proc directory\n");
 		return -EIO;
 	}
-	e = proc_create("debug_level", S_IRUGO | S_IWUSR,
-			      ieee80211_proc, &fops);
+	e = proc_create("debug_level", 0644, ieee80211_proc, &fops);
 	if (!e) {
 		remove_proc_entry(DRV_NAME, init_net.proc_net);
 		ieee80211_proc = NULL;
-- 
2.7.4


