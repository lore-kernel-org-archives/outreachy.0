X-GM-THRID: 4297638019072
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2d2e889246814652,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.166.77 with SMTP id ze13mr150154vdb.9.1425004960312;
        Thu, 26 Feb 2015 18:42:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.51.18.97 with SMTP id gl1ls71848igd.40.gmail; Thu, 26 Feb 2015
 18:42:40 -0800 (PST)
X-Received: by 10.42.102.135 with SMTP id i7mr8264769ico.20.1425004960043;
        Thu, 26 Feb 2015 18:42:40 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com. [209.85.220.48])
        by gmr-mx.google.com with ESMTPS id ri9si337235pdb.1.2015.02.26.18.42.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 18:42:40 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.220.48;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by padfb1 with SMTP id fb1so18923004pad.8
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 18:42:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=M3pWQWx0p6KEmcmeRTWcIR8mseyxzy56n0TyS091RE8=;
        b=WUGJ4f/pQUvlSSb/24bbDQeNgHmw4VS2Qswgx7+WZuyB9kHY5KMSLP18bS1kGl91it
         NUlB8Wqlg0ah8RyQspESJkwbsl9Pgzx0V6ghFm/JMjYAEI0QLAvOTF77GusK/QQTKRtE
         RnbnrTLB6KQWQPcG6YRb91dexmTcp8Mwd9sQaiXWRu+wwOIUBQXRjPDc5+bZD8kmRKE1
         jrCvb8QrOEoDzz0j4CwjWKQhZSHY+Rpfl8mxS5X3PlWPLSGfaiTNcqkOtoT3OEOjHOEs
         sFOrHkujb1cbT8ljI2KiBvFPED5LU6WhsCHQoCcJ7nw79b4A0qkshRA0LeH78eyuXiBd
         Gv8g==
X-Gm-Message-State: ALoCoQnVd44ZMB1ENHUsdkHUjPpKnrmgAuUtwSDuQnoWh46D+Lx73Zh6fweBoLAQ/GGQd7Ec0YaC
X-Received: by 10.70.95.166 with SMTP id dl6mr20010221pdb.140.1425004959861;
        Thu, 26 Feb 2015 18:42:39 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2601:9:8340:b6:85eb:9e48:ee52:c654])
        by mx.google.com with ESMTPSA id sf7sm2299341pbc.29.2015.02.26.18.42.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 18:42:39 -0800 (PST)
Date: Thu, 26 Feb 2015 18:42:36 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: speakup: Remove 'extern' keywords from .h prototypes
Message-ID: <20150227024236.GA9600@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Addresses checkpatch.pl check:
CHECK: Extern prototypes should be avoided in .h files

Removes the 'extern' keyword from function prototypes

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/speakup/spk_priv.h | 52 +++++++++++++++++++-------------------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/speakup/spk_priv.h b/drivers/staging/speakup/spk_priv.h
index 637ba67..1ef3795 100644
--- a/drivers/staging/speakup/spk_priv.h
+++ b/drivers/staging/speakup/spk_priv.h
@@ -44,34 +44,34 @@
 
 #define KT_SPKUP 15
 
-extern const struct old_serial_port *spk_serial_init(int index);
-extern void spk_stop_serial_interrupt(void);
-extern int spk_wait_for_xmitr(void);
-extern unsigned char spk_serial_in(void);
-extern unsigned char spk_serial_in_nowait(void);
-extern int spk_serial_out(const char ch);
-extern void spk_serial_release(void);
+const struct old_serial_port *spk_serial_init(int index);
+void spk_stop_serial_interrupt(void);
+int spk_wait_for_xmitr(void);
+unsigned char spk_serial_in(void);
+unsigned char spk_serial_in_nowait(void);
+int spk_serial_out(const char ch);
+void spk_serial_release(void);
 
-extern char synth_buffer_getc(void);
-extern char synth_buffer_peek(void);
-extern int synth_buffer_empty(void);
-extern struct var_t *spk_get_var(enum var_id_t var_id);
-extern ssize_t spk_var_show(struct kobject *kobj, struct kobj_attribute *attr,
-	char *buf);
-extern ssize_t spk_var_store(struct kobject *kobj, struct kobj_attribute *attr,
-	const char *buf, size_t count);
+char synth_buffer_getc(void);
+char synth_buffer_peek(void);
+int synth_buffer_empty(void);
+struct var_t *spk_get_var(enum var_id_t var_id);
+ssize_t spk_var_show(struct kobject *kobj, struct kobj_attribute *attr,
+		     char *buf);
+ssize_t spk_var_store(struct kobject *kobj, struct kobj_attribute *attr,
+		      const char *buf, size_t count);
 
-extern int spk_serial_synth_probe(struct spk_synth *synth);
-extern const char *spk_synth_immediate(struct spk_synth *synth, const char *buff);
-extern void spk_do_catch_up(struct spk_synth *synth);
-extern void spk_synth_flush(struct spk_synth *synth);
-extern int spk_synth_is_alive_nop(struct spk_synth *synth);
-extern int spk_synth_is_alive_restart(struct spk_synth *synth);
-extern void synth_printf(const char *buf, ...);
-extern int synth_request_region(u_long, u_long);
-extern int synth_release_region(u_long, u_long);
-extern int synth_add(struct spk_synth *in_synth);
-extern void synth_remove(struct spk_synth *in_synth);
+int spk_serial_synth_probe(struct spk_synth *synth);
+const char *spk_synth_immediate(struct spk_synth *synth, const char *buff);
+void spk_do_catch_up(struct spk_synth *synth);
+void spk_synth_flush(struct spk_synth *synth);
+int spk_synth_is_alive_nop(struct spk_synth *synth);
+int spk_synth_is_alive_restart(struct spk_synth *synth);
+void synth_printf(const char *buf, ...);
+int synth_request_region(u_long, u_long);
+int synth_release_region(u_long, u_long);
+int synth_add(struct spk_synth *in_synth);
+void synth_remove(struct spk_synth *in_synth);
 
 extern struct speakup_info_t speakup_info;
 
-- 
1.9.1


