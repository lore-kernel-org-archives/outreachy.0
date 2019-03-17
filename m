X-GM-THRID: 6669430672000548864
X-Received: by 2002:aa7:83cd:: with SMTP id j13mr3838925pfn.133.1552847836236;
        Sun, 17 Mar 2019 11:37:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:430a:: with SMTP id j10ls5540498pgq.0.gmail; Sun, 17 Mar
 2019 11:37:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqypUv0WFkl2cIwne6zaef8KiKfhxleSRkeayOm1hWgpA9pOmb3foTVi3j1GHpbYTk3drW24
X-Received: by 2002:a63:d04a:: with SMTP id s10mr5410445pgi.141.1552847835407;
        Sun, 17 Mar 2019 11:37:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552847835; cv=none;
        d=google.com; s=arc-20160816;
        b=LiSPFNcpqkqaGv+/tVxvlocIw/biEahkYWvNVurEG2dew5U5S/2mpHXIuIf9LGEpAX
         +UkThOTJa35TvdNeuwEc+N9MlIpeOqxXRDKBufyHOKIvRRAIrBYTBfuDt6T83+TZKi9E
         63uC66t66Bk7zxouI53Bs7Bn+/IrXxgqKWd0XlCnwqCSxdA1wEyBDUhztSMbWyqfCC75
         rCuREmt7a4DSIklHAtR2EDxDwHdhZ+IK97gvrB061NPrjyST6iIz6LUz9olBjNP22iaI
         1+4nT80H1DIz3YHUBPrXzlx3Rt+GjfPSh6pp8FsEzFtAX8nLs6pGYUXwQXj/0hTThlLD
         6Ytw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=mjIG3pTIBD6h3ratgw5I0v5TmM+IReN/YrWBQEgoNj4=;
        b=n99UEzCsPwa9jrexHTFTcSNQJIWdMbXmNcx5633oJn+unG+fzf/GZHE2JR6s/qTGy5
         gQvwviZIptIHyexWS/zY7t5M7dg58ZId2y5zS68hF+KGJ7GiAxqETWMdWAN47tJTnSg5
         bxnKLj/QVCwoO0gb1bfB5fytwR3S4Sah/7j5rFbFato8pMY0x6tXAkHtS47qmazny7A5
         IkRmuuGmP25YV76aYpP7MOIfwLuyn47ADTiZRcXeR5CyQ7QNtStGW9XFnRTqeT1mDKAu
         S1gOA73gQS3FROup+d/2jiJYrBBX9nPA0uMJP3d5Od38My3HcKFpGoy9L/kCYuRkLppz
         gVmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fxGgLLB7;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id d62si325219pgc.5.2019.03.17.11.37.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 11:37:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fxGgLLB7;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id v64so9709702pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 11:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=mjIG3pTIBD6h3ratgw5I0v5TmM+IReN/YrWBQEgoNj4=;
        b=fxGgLLB7U3JKxI3UCaiCb5SHUkAODz6NVnliDDro3U313pcrXMMNzNBVRf3GCVXvOl
         qjQaK75/PX9FPgwLei3uz3fb38TeXy5QirrrNsweRm7AYwuK9lcHCY/p1NAU1aqEQn4A
         MYILLWIlv2r4EXxeiUPxwEmMdIUAx6mrN34g97OiLJRe+0qc7Bftax5R4P1In0S9v5Mr
         qHoZebVr8AZtUUzcb/ZCEP1yo4ZIgvQj9NK2DNLFcpRyWPfJukw9Xb6sb9+1YQ45setU
         y5DEpwjzC219wNtoCqb8ZqUOT1XsMMoCmxedPEhrL9MD1VTYJJYtffe5ucPuUKrXK2ce
         8ePg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mjIG3pTIBD6h3ratgw5I0v5TmM+IReN/YrWBQEgoNj4=;
        b=DvcYa+VezEKviK89StLTrbMxMXGB15ILmXbteCQ6Huke0cU0ZwpxNHx69IHFCl5xA1
         1ZPRt1IAZg3rkzfRh1nVzDntAUrnHqQcvTr+4KnZApEYi8EZQfAMMZGu3lJoRy3tmFVX
         bMCUZcMnEAtipve9DCprM83IsZswcDDttoBz9rT6IuUIfuBPnEeYBUAxIzzJOj8GjAhu
         zfN9c1OdiGcvCNPjAQ5znlPv1K/DyH5jyzL6BLkNwQdzidNKTRKdPYw3Di8BO/xUrVab
         q1ceupuU6EkIqlwCdhtMv5p+LADeiIPYuF95GGfbppWMeaoO3Yv89nIuWUbGzLTe2oHF
         0qwg==
X-Gm-Message-State: APjAAAU3GZseKgBDYrvdRtQoPtsGbgLWjzLsDu7h28jjdlGVvO3R4Q7k
	Tvd0Wk3ZNsffCmFk/n9BRFfOG7cH
X-Received: by 2002:a17:902:45a5:: with SMTP id n34mr15986282pld.127.1552847834794;
        Sun, 17 Mar 2019 11:37:14 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.84.34])
        by smtp.gmail.com with ESMTPSA id b15sm13744338pfj.167.2019.03.17.11.37.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 17 Mar 2019 11:37:14 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: greybus: remove extern prototypes
Date: Mon, 18 Mar 2019 00:06:55 +0530
Message-Id: <1552847815-14090-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Functions are implicitly declared with "extern". The compiler doesn't
need it.  extern removed from drivers/staging/greybus/audio_codec.h
file.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/greybus/audio_codec.h | 122 +++++++++++++++++-----------------
 1 file changed, 61 insertions(+), 61 deletions(-)

diff --git a/drivers/staging/greybus/audio_codec.h b/drivers/staging/greybus/audio_codec.h
index d36f8cd..9ba09ea 100644
--- a/drivers/staging/greybus/audio_codec.h
+++ b/drivers/staging/greybus/audio_codec.h
@@ -173,66 +173,66 @@ int gbaudio_register_module(struct gbaudio_module_info *module);
 void gbaudio_unregister_module(struct gbaudio_module_info *module);
 
 /* protocol related */
-extern int gb_audio_gb_get_topology(struct gb_connection *connection,
-				    struct gb_audio_topology **topology);
-extern int gb_audio_gb_get_control(struct gb_connection *connection,
-				   u8 control_id, u8 index,
-				   struct gb_audio_ctl_elem_value *value);
-extern int gb_audio_gb_set_control(struct gb_connection *connection,
-				   u8 control_id, u8 index,
-				   struct gb_audio_ctl_elem_value *value);
-extern int gb_audio_gb_enable_widget(struct gb_connection *connection,
-				     u8 widget_id);
-extern int gb_audio_gb_disable_widget(struct gb_connection *connection,
-				      u8 widget_id);
-extern int gb_audio_gb_get_pcm(struct gb_connection *connection,
-			       u16 data_cport, u32 *format,
-			       u32 *rate, u8 *channels,
-			       u8 *sig_bits);
-extern int gb_audio_gb_set_pcm(struct gb_connection *connection,
-			       u16 data_cport, u32 format,
-			       u32 rate, u8 channels,
-			       u8 sig_bits);
-extern int gb_audio_gb_set_tx_data_size(struct gb_connection *connection,
-					u16 data_cport, u16 size);
-extern int gb_audio_gb_activate_tx(struct gb_connection *connection,
-				   u16 data_cport);
-extern int gb_audio_gb_deactivate_tx(struct gb_connection *connection,
-				     u16 data_cport);
-extern int gb_audio_gb_set_rx_data_size(struct gb_connection *connection,
-					u16 data_cport, u16 size);
-extern int gb_audio_gb_activate_rx(struct gb_connection *connection,
-				   u16 data_cport);
-extern int gb_audio_gb_deactivate_rx(struct gb_connection *connection,
-				     u16 data_cport);
-extern int gb_audio_apbridgea_set_config(struct gb_connection *connection,
-					 __u16 i2s_port, __u32 format,
-					 __u32 rate, __u32 mclk_freq);
-extern int gb_audio_apbridgea_register_cport(struct gb_connection *connection,
-					     __u16 i2s_port, __u16 cportid,
-					     __u8 direction);
-extern int gb_audio_apbridgea_unregister_cport(struct gb_connection *connection,
-					       __u16 i2s_port, __u16 cportid,
-					       __u8 direction);
-extern int gb_audio_apbridgea_set_tx_data_size(struct gb_connection *connection,
-					       __u16 i2s_port, __u16 size);
-extern int gb_audio_apbridgea_prepare_tx(struct gb_connection *connection,
-					 __u16 i2s_port);
-extern int gb_audio_apbridgea_start_tx(struct gb_connection *connection,
-				       __u16 i2s_port, __u64 timestamp);
-extern int gb_audio_apbridgea_stop_tx(struct gb_connection *connection,
-				      __u16 i2s_port);
-extern int gb_audio_apbridgea_shutdown_tx(struct gb_connection *connection,
-					  __u16 i2s_port);
-extern int gb_audio_apbridgea_set_rx_data_size(struct gb_connection *connection,
-					       __u16 i2s_port, __u16 size);
-extern int gb_audio_apbridgea_prepare_rx(struct gb_connection *connection,
-					 __u16 i2s_port);
-extern int gb_audio_apbridgea_start_rx(struct gb_connection *connection,
-				       __u16 i2s_port);
-extern int gb_audio_apbridgea_stop_rx(struct gb_connection *connection,
-				      __u16 i2s_port);
-extern int gb_audio_apbridgea_shutdown_rx(struct gb_connection *connection,
-					  __u16 i2s_port);
+int gb_audio_gb_get_topology(struct gb_connection *connection,
+			     struct gb_audio_topology **topology);
+int gb_audio_gb_get_control(struct gb_connection *connection,
+			    u8 control_id, u8 index,
+			    struct gb_audio_ctl_elem_value *value);
+int gb_audio_gb_set_control(struct gb_connection *connection,
+			    u8 control_id, u8 index,
+			    struct gb_audio_ctl_elem_value *value);
+int gb_audio_gb_enable_widget(struct gb_connection *connection,
+			      u8 widget_id);
+int gb_audio_gb_disable_widget(struct gb_connection *connection,
+			       u8 widget_id);
+int gb_audio_gb_get_pcm(struct gb_connection *connection,
+			u16 data_cport, u32 *format,
+			u32 *rate, u8 *channels,
+			u8 *sig_bits);
+int gb_audio_gb_set_pcm(struct gb_connection *connection,
+			u16 data_cport, u32 format,
+			u32 rate, u8 channels,
+			u8 sig_bits);
+int gb_audio_gb_set_tx_data_size(struct gb_connection *connection,
+				 u16 data_cport, u16 size);
+int gb_audio_gb_activate_tx(struct gb_connection *connection,
+			    u16 data_cport);
+int gb_audio_gb_deactivate_tx(struct gb_connection *connection,
+			      u16 data_cport);
+int gb_audio_gb_set_rx_data_size(struct gb_connection *connection,
+				 u16 data_cport, u16 size);
+int gb_audio_gb_activate_rx(struct gb_connection *connection,
+			    u16 data_cport);
+int gb_audio_gb_deactivate_rx(struct gb_connection *connection,
+			      u16 data_cport);
+int gb_audio_apbridgea_set_config(struct gb_connection *connection,
+				  __u16 i2s_port, __u32 format,
+				  __u32 rate, __u32 mclk_freq);
+int gb_audio_apbridgea_register_cport(struct gb_connection *connection,
+				      __u16 i2s_port, __u16 cportid,
+				      __u8 direction);
+int gb_audio_apbridgea_unregister_cport(struct gb_connection *connection,
+					__u16 i2s_port, __u16 cportid,
+					__u8 direction);
+int gb_audio_apbridgea_set_tx_data_size(struct gb_connection *connection,
+					__u16 i2s_port, __u16 size);
+int gb_audio_apbridgea_prepare_tx(struct gb_connection *connection,
+				  __u16 i2s_port);
+int gb_audio_apbridgea_start_tx(struct gb_connection *connection,
+				__u16 i2s_port, __u64 timestamp);
+int gb_audio_apbridgea_stop_tx(struct gb_connection *connection,
+			       __u16 i2s_port);
+int gb_audio_apbridgea_shutdown_tx(struct gb_connection *connection,
+				   __u16 i2s_port);
+int gb_audio_apbridgea_set_rx_data_size(struct gb_connection *connection,
+					__u16 i2s_port, __u16 size);
+int gb_audio_apbridgea_prepare_rx(struct gb_connection *connection,
+				  __u16 i2s_port);
+int gb_audio_apbridgea_start_rx(struct gb_connection *connection,
+				__u16 i2s_port);
+int gb_audio_apbridgea_stop_rx(struct gb_connection *connection,
+			       __u16 i2s_port);
+int gb_audio_apbridgea_shutdown_rx(struct gb_connection *connection,
+				   __u16 i2s_port);
 
 #endif /* __LINUX_GBAUDIO_CODEC_H */
-- 
2.7.4


