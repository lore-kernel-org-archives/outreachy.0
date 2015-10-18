X-GM-THRID: 6207028887884398592
X-Received: by 10.67.3.71 with SMTP id bu7mr21324686pad.18.1445186531513;
        Sun, 18 Oct 2015 09:42:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.161 with SMTP id x1ls684096igl.29.canary; Sun, 18 Oct
 2015 09:42:11 -0700 (PDT)
X-Received: by 10.66.165.3 with SMTP id yu3mr21988142pab.15.1445186530977;
        Sun, 18 Oct 2015 09:42:10 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id pe1si2929145pac.2.2015.10.18.09.42.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 09:42:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id z6so5493852pas.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 09:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=VGYigDM2Pr2n+NIyhEDEBNtvrSzm9TNgIQG3YHeHz/k=;
        b=pzbttOoKH58syDy21DrJro5TqfuNoztIJC+bcPO5hufHH/TLGQUJptTDSBJFBc0esX
         h7REC7rjhDnHz6ZwFEMKDZZqcRXIPs+Qk67ciherhAslJ9lfKjE4RNZvUfbEdrBoVDb2
         BZ6TqFsD8qJSP7x5suhfOy0PNsVzD+h4pim9y1YQM0hjBaLks/vhyLH/c9mvBA7TFXwc
         xhqYQzxI4mcnw19rMeuKHIxLpm5ef0cAdWo+o+wwo91eO7UnysyYi+LOB6gLl7VAE2oF
         fjJwHdr7AQV3DmRtRTjc8BW8BMQUHXp4PtmkkgJ8te4HYK+vHoX0dy5dVAcoWw6UjblH
         fvbg==
X-Received: by 10.66.119.201 with SMTP id kw9mr29582498pab.64.1445186530843;
        Sun, 18 Oct 2015 09:42:10 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id tp6sm31701236pbc.81.2015.10.18.09.42.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 09:42:10 -0700 (PDT)
Date: Sun, 18 Oct 2015 22:11:56 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: lcommon_misc: Correct block comments
Message-ID: <20151018164156.GA31672@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Alignment of block comments should be correct.
Fix checkpatch WARNING: Block comments use a trailing */ on a separate
line

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/lclient/lcommon_misc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lclient/lcommon_misc.c b/drivers/staging/lustre/lustre/lclient/lcommon_misc.c
index 8389a0e..d80bcedd 100644
--- a/drivers/staging/lustre/lustre/lclient/lcommon_misc.c
+++ b/drivers/staging/lustre/lustre/lclient/lcommon_misc.c
@@ -48,7 +48,8 @@
 /* Initialize the default and maximum LOV EA and cookie sizes.  This allows
  * us to make MDS RPCs with large enough reply buffers to hold the
  * maximum-sized (= maximum striped) EA and cookie without having to
- * calculate this (via a call into the LOV + OSCs) each time we make an RPC. */
+ * calculate this (via a call into the LOV + OSCs) each time we make an RPC.
+ */
 int cl_init_ea_size(struct obd_export *md_exp, struct obd_export *dt_exp)
 {
 	struct lov_stripe_md lsm = { .lsm_magic = LOV_MAGIC_V3 };
@@ -74,7 +75,8 @@ int cl_init_ea_size(struct obd_export *md_exp, struct obd_export *dt_exp)
 	cookiesize = stripes * sizeof(struct llog_cookie);
 
 	/* default cookiesize is 0 because from 2.4 server doesn't send
-	 * llog cookies to client. */
+	 * llog cookies to client.
+	 */
 	CDEBUG(D_HA,
 	       "updating def/max_easize: %d/%d def/max_cookiesize: 0/%d\n",
 	       def_easize, easize, cookiesize);
-- 
2.1.0


