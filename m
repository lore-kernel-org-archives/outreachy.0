X-GM-THRID: 6393318693588172800
X-Received: by 10.176.80.240 with SMTP id d45mr520228uaa.4.1488560506272;
        Fri, 03 Mar 2017 09:01:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.71 with SMTP id j68ls785437ita.12.canary-gmail; Fri, 03
 Mar 2017 09:01:45 -0800 (PST)
X-Received: by 10.99.174.70 with SMTP id e6mr1660945pgp.74.1488560505361;
        Fri, 03 Mar 2017 09:01:45 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 207si131527pfu.8.2017.03.03.09.01.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 09:01:45 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 77so448384pgc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 09:01:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9EZkxVN+HcGGzsJcijpgmay4rKZJBHxdU7QEr5ZRfTA=;
        b=QcAYPzWds1Rx09LKfKLYudLFmO6O+HaYILFDEALhjrweZ+L5utvA5ccSC2EuVpQmxl
         0FEluwSCzO2eduRq8AwR7egafUXWRRRrXoJMtSl2+l2ZDLndyCQaZdrFlTWcbVbBi/Z5
         A0NT3K7XOX18gCJg0u8bd5nukRPlLS5iZI7Z/IEOrqlGNyDQRUwC12R+kdYcJ51jbDnn
         mMnPN+XfGdqSQIBxl8SwK417CuBBmSuP1Mnh1qs7kEoEMe3q0146HwXunVqcbPVxvq81
         uLoBVYBnrloPUGdfOeLGUTZFHV1+Pqq1Q7kzQX/Wqt09sHb0xB4Sue7X0nLLO9ef1ZPx
         6Phg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9EZkxVN+HcGGzsJcijpgmay4rKZJBHxdU7QEr5ZRfTA=;
        b=TCfEmsFLCNzvkrtPgvk/2FpWB6u4h0z0psZVIM23/dUdb5zl/90MA2yqFd94NJBrAT
         NacH60iJVeVSSkrhddFt4YdCA5RhSKRjIIH51JSQT9YXeZiCeo33yLETnc8g/DLTbG0+
         1VGfDmBfnu29MtULrLRB04xVe6jC9GNrkLH8xDkwQs/3gc2a0ysCQVbJFA7JgIDeWD24
         KIkkkO0U78TLNZlfdtjhcPBQouQGC9dEJgohIVhT5HbC7WrqSpdKmDX2C0cKZZjuxxye
         PqKldigXuxDA6ilFZdnNdj1YQnx7omWFzkzAOs8EU1nl8jyOqvWKf3Ewo3oO9ttcDnQs
         GYAg==
X-Gm-Message-State: AMke39k1ckln2UQx6ckWvcUbgG+uh/gTZLNaZmrrSIG1pIqr8b3BrhS676jmOiuNmxidtA==
X-Received: by 10.84.175.132 with SMTP id t4mr5696001plb.38.1488560505146;
        Fri, 03 Mar 2017 09:01:45 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e70sm11557785pfh.84.2017.03.03.09.01.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 09:01:44 -0800 (PST)
Date: Fri, 3 Mar 2017 22:31:39 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: Remove parentheses from return arguments
Message-ID: <20170303170139.GA9887@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The sematic patch used for this is:
@@
identifier i;
constant c;
@@
return
- (
    \(i\|-i\|i(...)\|c\)
- )
  ;

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 .../media/atomisp/pci/atomisp2/css2400/sh_css.c      | 20 ++++++++++----------
 .../atomisp/pci/atomisp2/css2400/sh_css_firmware.c   |  2 +-
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
index f39d6f5..1216efb 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
@@ -2009,7 +2009,7 @@ enum ia_css_err ia_css_suspend(void)
 	for(i=0;i<MAX_ACTIVE_STREAMS;i++)
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "==*> after 1: seed %d (%p)\n", i, my_css_save.stream_seeds[i].stream);
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "ia_css_suspend() leave\n");
-	return(IA_CSS_SUCCESS);
+	return IA_CSS_SUCCESS;
 }
 
 enum ia_css_err
@@ -2021,10 +2021,10 @@ ia_css_resume(void)
 
 	err = ia_css_init(&(my_css_save.driver_env), my_css_save.loaded_fw, my_css_save.mmu_base, my_css_save.irq_type);
 	if (err != IA_CSS_SUCCESS)
-		return(err);
+		return err;
 	err = ia_css_start_sp();
 	if (err != IA_CSS_SUCCESS)
-		return(err);
+		return err;
 	my_css_save.mode = sh_css_mode_resume;
 	for(i=0;i<MAX_ACTIVE_STREAMS;i++)
 	{
@@ -2038,7 +2038,7 @@ ia_css_resume(void)
 				if (i)
 					for(j=0;j<i;j++)
 						ia_css_stream_unload(my_css_save.stream_seeds[j].stream);
-				return(err);
+				return err;
 			}
 			err = ia_css_stream_start(my_css_save.stream_seeds[i].stream);
 			if (err != IA_CSS_SUCCESS)
@@ -2048,7 +2048,7 @@ ia_css_resume(void)
 					ia_css_stream_stop(my_css_save.stream_seeds[j].stream);
 					ia_css_stream_unload(my_css_save.stream_seeds[j].stream);
 				}
-				return(err);
+				return err;
 			}
 			*my_css_save.stream_seeds[i].orig_stream = my_css_save.stream_seeds[i].stream;
 			for(j=0;j<my_css_save.stream_seeds[i].num_pipes;j++)
@@ -2057,7 +2057,7 @@ ia_css_resume(void)
 	}
 	my_css_save.mode = sh_css_mode_working;
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "ia_css_resume() leave: return_void\n");
-	return(IA_CSS_SUCCESS);
+	return IA_CSS_SUCCESS;
 }
 
 enum ia_css_err
@@ -10261,7 +10261,7 @@ ia_css_stream_load(struct ia_css_stream *stream)
 						for(k=0;k<j;k++)
 							ia_css_pipe_destroy(my_css_save.stream_seeds[i].pipes[k]);
 					}
-					return(err);
+					return err;
 				}
 			err = ia_css_stream_create(&(my_css_save.stream_seeds[i].stream_config), my_css_save.stream_seeds[i].num_pipes,
 						    my_css_save.stream_seeds[i].pipes, &(my_css_save.stream_seeds[i].stream));
@@ -10270,12 +10270,12 @@ ia_css_stream_load(struct ia_css_stream *stream)
 				ia_css_stream_destroy(stream);
 				for(j=0;j<my_css_save.stream_seeds[i].num_pipes;j++)
 					ia_css_pipe_destroy(my_css_save.stream_seeds[i].pipes[j]);
-				return(err);
+				return err;
 			}
 			break;
 		}
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,	"ia_css_stream_load() exit, \n");
-	return(IA_CSS_SUCCESS);
+	return IA_CSS_SUCCESS;
 #else
 	/* TODO remove function - DEPRECATED */
 	(void)stream;
@@ -10416,7 +10416,7 @@ ia_css_stream_unload(struct ia_css_stream *stream)
 			break;
 		}
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,	"ia_css_stream_unload() exit, \n");
-	return(IA_CSS_SUCCESS);
+	return IA_CSS_SUCCESS;
 }
 
 #endif
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
index b7db3de..d3567ac 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
@@ -74,7 +74,7 @@ static struct fw_param *fw_minibuffer;
 
 char *sh_css_get_fw_version(void)
 {
-	return(FW_rel_ver_name);
+	return FW_rel_ver_name;
 }
 
 
-- 
2.7.4


