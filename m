X-GM-THRID: 6251884349314039808
X-Received: by 10.140.136.135 with SMTP id 129mr21375019qhi.10.1455630257009;
        Tue, 16 Feb 2016 05:44:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.96 with SMTP id s93ls1733708ioe.86.gmail; Tue, 16 Feb
 2016 05:44:16 -0800 (PST)
X-Received: by 10.98.1.85 with SMTP id 82mr21409078pfb.1.1455630256722;
        Tue, 16 Feb 2016 05:44:16 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id ff2si3512629pad.2.2016.02.16.05.44.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:44:16 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id q63so105497513pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 05:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=gfluUFX0lmMNohpuWblNNhEmURDkrUo5d5kCy/poTrs=;
        b=Vk1ajhBhKvlhVD+ErObK1T+05y32DVJKOkaL11rj/hLsFTH/cJPnEldH0hWEn1WOpz
         jX2hKfaiBCfKTPhvNj09K6hH/h+amUgS6oc4AdQUvKY+kEX46mlXWzjLQbBTGQPCl0md
         88Wzv3Q58YioI1QZav5scF9ELpCNHZIeYIutcoJGBe8stvSn3O4dtKgsS5VNU59cb/NW
         p9UN7f7j/9SUvrZtsRn8mwtyYGrmzBs1uGGPcFQngia5JQOgEEBqLByPklurtl673JQu
         JFTrvjYAQjlnwtF6lWkanIL+f1aOSsU857vGdYx625QSGWTmlHlA1N8Nf3fUg/Tiz/1W
         ZGbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=gfluUFX0lmMNohpuWblNNhEmURDkrUo5d5kCy/poTrs=;
        b=SaPilJfevyy/WwY/VkiT90aFj3abDC3onduUfOWXD39DUm2ysfc2pLhZadsFvn9ezC
         vCXgeae6eFaEeo8UCtpZS7EG1tJTAYjsiZ+anrzfCN9q5PuWob0wU7TqjPdJmCF6N6KP
         iXFAyyt3prg/XfeGu4sBl1j9EzkGmOD4cDiLCnhx303FT2tQ9ngL7qUnLWlrqYLhazjZ
         tc++FD4IuwCBNQOysgLs6VVLoiScp3uaGKPwWrmhF5F/tcRDyotHOL5enzAI4VcRaZyQ
         ku7gUF6xnNnFHwqqnXroX8dEt3Kbw/0/XmUBPy4d4b6oT2V3SNTaixLNI//3KMqMqKUY
         4ebg==
X-Gm-Message-State: AG10YOQHOXdg1EN4tmz8sQlPnXj0n8SQ+n0ng9t3aTzPz75sOdBtZrguI7Sq+gf46RDePg==
X-Received: by 10.98.73.149 with SMTP id r21mr31408881pfi.140.1455630256555;
        Tue, 16 Feb 2016 05:44:16 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id n78sm46056609pfb.53.2016.02.16.05.44.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 05:44:16 -0800 (PST)
Date: Tue, 16 Feb 2016 19:14:12 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: osc: osc_request: Declare local function
 and structure as static
Message-ID: <20160216134412.GA18001@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Declare osc_cleanup() function and osc_obd_ops structure as static
since they are defined and called only in this file.

Removed osc_cleanup() function prototype since it wasn't required.

This fixes the following sparse warnings:
drivers/staging/lustre/lustre/osc/osc_request.c:3210:5: warning:
symbol 'osc_cleanup' was not declared. Should it be static?
drivers/staging/lustre/lustre/osc/osc_request.c:3259:16: warning:
symbol 'osc_obd_ops' was not declared. Should it be static?

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Modified subject
        -Removed unnecessary function prototype

 drivers/staging/lustre/lustre/osc/osc_request.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
index 3ae00fc..b6df68d 100644
--- a/drivers/staging/lustre/lustre/osc/osc_request.c
+++ b/drivers/staging/lustre/lustre/osc/osc_request.c
@@ -104,7 +104,6 @@ struct osc_enqueue_args {
 static void osc_release_ppga(struct brw_page **ppga, u32 count);
 static int brw_interpret(const struct lu_env *env,
 			 struct ptlrpc_request *req, void *data, int rc);
-static int osc_cleanup(struct obd_device *obd);
 
 /* Pack OSC object metadata for disk storage (LE byte order). */
 static int osc_packmd(struct obd_export *exp, struct lov_mds_md **lmmp,
@@ -3207,7 +3206,7 @@ static int osc_precleanup(struct obd_device *obd, enum obd_cleanup_stage stage)
 	return 0;
 }
 
-int osc_cleanup(struct obd_device *obd)
+static int osc_cleanup(struct obd_device *obd)
 {
 	struct client_obd *cli = &obd->u.cli;
 	int rc;
@@ -3256,7 +3255,7 @@ static int osc_process_config(struct obd_device *obd, u32 len, void *buf)
 	return osc_process_config_base(obd, buf);
 }
 
-struct obd_ops osc_obd_ops = {
+static struct obd_ops osc_obd_ops = {
 	.owner          = THIS_MODULE,
 	.setup          = osc_setup,
 	.precleanup     = osc_precleanup,
-- 
1.9.1


