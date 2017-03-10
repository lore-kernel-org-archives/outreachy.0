X-GM-THRID: 6393318693588172800
X-Received: by 10.13.220.195 with SMTP id f186mr7554131ywe.121.1489151253425;
        Fri, 10 Mar 2017 05:07:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.200.209 with SMTP id y200ls2531400iof.26.gmail; Fri, 10
 Mar 2017 05:07:32 -0800 (PST)
X-Received: by 10.107.160.135 with SMTP id j129mr5700652ioe.20.1489151252474;
        Fri, 10 Mar 2017 05:07:32 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si1700207pfz.1.2017.03.10.05.07.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 05:07:32 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id b5so10299560pgg.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 05:07:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=enxHdxqOchHIhBXJa/zfEV98Ugc70Q7dzjcBf+Id2+Q=;
        b=EEJoSPBxee57Fnf5aYy/sSTsSH6E9+ocSUF1Gs0iOF51BxspF3GbvDW16ySZcesn9i
         e3zeUqVQgXBxM01Ck6puiglGPHpuSZUwSx7hQEbXt26c66tgY6Xu+RH+qPoVrVGlWW+u
         Iw6OyktW0y2llf2jn1LLRMmJY6AK5G0mdbfIBvR0cs9YzEJZ/QOfKCILFTC60vtJDMcu
         Jzdt4vgOUpRJDvckLRhhSPp6nkkUqHVmF5Orl5wALsue8Q2epGySGWJQjH7lym76IlzQ
         CF/z6Lxmp4o5yABVSuxUbc/F+WS2OeWkkpxKNasuRyJTv8SmYdbE4HzV/UjJfI/yGhFL
         VtHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=enxHdxqOchHIhBXJa/zfEV98Ugc70Q7dzjcBf+Id2+Q=;
        b=K+JgU+gkENBsJXzPU5bcv69hA1Co/4MYyJa+/6cc0+9wDdOB47ew7TsAPVEklssUCZ
         wXM+uvSHX7grbg6OIXtcz1iBv0PVHgOMkQhJz9C4sMt8XppYUzcwa2/Ax0PMLQ99ckiF
         egCOeB/SV8Z2UKoY5tEYB1xpnKjA5QtpPx8Cc6EsB/TEkN1+e5Tqzc8VmNlFb5Cx4Cr/
         TlG7fUE4zXLiztsCERQD5nzufqlSpQu2fhpV+2QR9kedi0jCYHYqMAtmWx6qoemRcjtA
         ShAetczTW/PzaNnq508fMINnGemGY3jDpnSh0kLp88R/GyKaaDjLPQc8BXN001wv6MXK
         R6mw==
X-Gm-Message-State: AMke39ki3gMFSpso5aKcfzmIhpWD1onozzLPoGZ+kni5AdiPzjxBwpOy+7e54JqH+oxKUQ==
X-Received: by 10.84.238.9 with SMTP id u9mr25739231plk.174.1489151251982;
        Fri, 10 Mar 2017 05:07:31 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h25sm18719831pfk.119.2017.03.10.05.07.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 05:07:30 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: css2400/sh_css: Remove parentheses from return arguments
Date: Fri, 10 Mar 2017 18:37:23 +0530
Message-Id: <1489151244-20714-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489151244-20714-1-git-send-email-singhalsimran0@gmail.com>
References: <1489151244-20714-1-git-send-email-singhalsimran0@gmail.com>

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
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
---
 .../media/atomisp/pci/atomisp2/css2400/sh_css.c      | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
index 0a1544d..c442d22 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
@@ -1989,7 +1989,7 @@ enum ia_css_err ia_css_suspend(void)
 	for(i=0;i<MAX_ACTIVE_STREAMS;i++)
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "==*> after 1: seed %d (%p)\n", i, my_css_save.stream_seeds[i].stream);
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "ia_css_suspend() leave\n");
-	return(IA_CSS_SUCCESS);
+	return IA_CSS_SUCCESS;
 }
 
 enum ia_css_err
@@ -2001,10 +2001,10 @@ ia_css_resume(void)
 
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
@@ -2018,7 +2018,7 @@ ia_css_resume(void)
 				if (i)
 					for(j=0;j<i;j++)
 						ia_css_stream_unload(my_css_save.stream_seeds[j].stream);
-				return(err);
+				return err;
 			}
 			err = ia_css_stream_start(my_css_save.stream_seeds[i].stream);
 			if (err != IA_CSS_SUCCESS)
@@ -2028,7 +2028,7 @@ ia_css_resume(void)
 					ia_css_stream_stop(my_css_save.stream_seeds[j].stream);
 					ia_css_stream_unload(my_css_save.stream_seeds[j].stream);
 				}
-				return(err);
+				return err;
 			}
 			*my_css_save.stream_seeds[i].orig_stream = my_css_save.stream_seeds[i].stream;
 			for(j=0;j<my_css_save.stream_seeds[i].num_pipes;j++)
@@ -2037,7 +2037,7 @@ ia_css_resume(void)
 	}
 	my_css_save.mode = sh_css_mode_working;
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "ia_css_resume() leave: return_void\n");
-	return(IA_CSS_SUCCESS);
+	return IA_CSS_SUCCESS;
 }
 
 enum ia_css_err
@@ -10226,7 +10226,7 @@ ia_css_stream_load(struct ia_css_stream *stream)
 						for(k=0;k<j;k++)
 							ia_css_pipe_destroy(my_css_save.stream_seeds[i].pipes[k]);
 					}
-					return(err);
+					return err;
 				}
 			err = ia_css_stream_create(&(my_css_save.stream_seeds[i].stream_config), my_css_save.stream_seeds[i].num_pipes,
 						    my_css_save.stream_seeds[i].pipes, &(my_css_save.stream_seeds[i].stream));
@@ -10235,12 +10235,12 @@ ia_css_stream_load(struct ia_css_stream *stream)
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
@@ -10381,7 +10381,7 @@ ia_css_stream_unload(struct ia_css_stream *stream)
 			break;
 		}
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,	"ia_css_stream_unload() exit, \n");
-	return(IA_CSS_SUCCESS);
+	return IA_CSS_SUCCESS;
 }
 
 #endif
-- 
2.7.4


