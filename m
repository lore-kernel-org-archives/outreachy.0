X-GM-THRID: 6951125454126317568
X-Received: by 2002:a05:622a:18a:: with SMTP id s10mr101222qtw.237.1618435013197;
        Wed, 14 Apr 2021 14:16:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b990:: with SMTP id v16ls931789qvf.4.gmail; Wed, 14 Apr
 2021 14:16:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzNEN53v8UIGnk21x9LC8JL+wB1uBbAx5VdImY4e2+pNs6K1CA34dUtIBdbRyrWw6d8rb+o
X-Received: by 2002:ad4:5767:: with SMTP id r7mr276669qvx.27.1618435012220;
        Wed, 14 Apr 2021 14:16:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618435012; cv=none;
        d=google.com; s=arc-20160816;
        b=ZndStG4eyA2czBFaAs4zcIkmARGXtdAAG5VuRukpsVxEefXBSkfEijLTj/KyYR+OEQ
         Ba39KLgITNra6pKhqahimZ0QaNqV5chNISmWGWCSJEm1AY/t/EajUAyMQ63toqx0O3Bm
         MnSvz65RCHhEhiemvDYPAF3lhv2zvjox/+Br/IGqHhQyskl5zcuIreGm2nTBx0DCgNWb
         VTPEpTqzbyiLPMkeW2xYECxmjbugdwS9is+c9zJlqWpZJR4dlhOQwpHScoe6jQblTqgU
         Qz+ff7XGgIa9smHANzIUWprewCK/AVTxGTvtCqQHR9z+ASNBLyAjDWPrptfJ3bVotsVe
         Wshg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZtrTataqHYBm+bTknBrur/jT+tOHHcHrIEijoddlqo4=;
        b=BBAHADudlgc5ZNii2XJ1Ny7+QvARFl6hL7ZAHN3dnvR37dg4ENuHPL0KoVgrb9C67Z
         LkPbwRSMxdCopMZy0J4ljGLY8glbzDyGzACYkKKsuo2CXii8650B1lThlwbd3LHJAXso
         WCY1I7vY49R4IlA62TTHhdx0QfCBChSE8jxVwXLcGhOLr7qNqY54HiZhDqpB1RXayR+P
         T5BKcjoWqNLtaH3qaC3a36Evfijv1jIsPWtqPDisFwzKj8TNkhholZxUQXQpPZZa+7OC
         383U1utqXN1h5hyvmUXfemhkrJSgS9+UPnQn4pmbN4mVj5swzKAKgjViDmqhnL8YrvOt
         FUtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bnaq2q4q;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com. [2607:f8b0:4864:20::829])
        by gmr-mx.google.com with ESMTPS id n9si70386qkg.0.2021.04.14.14.16.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 14:16:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) client-ip=2607:f8b0:4864:20::829;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bnaq2q4q;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x829.google.com with SMTP id 18so3183479qtz.6
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 14:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZtrTataqHYBm+bTknBrur/jT+tOHHcHrIEijoddlqo4=;
        b=Bnaq2q4q4O0DV6iyvLyc590075VX6l6O4UROWwqBp9O+r8r58QtWI+brt59ak6aMzM
         KO1VNSHVEtP5w396beOzifCEjsmhfETLAzyShbl6YQmBDphbIRQm7smhlrqYqADCkxH9
         +fPWoO9qLuGMifPnBY3zsunlT5EupNMv6JmGQEVqmWle1PcdwAgQTWnGEYjxwRn2q8/r
         mjx8DRvVLh8t98bTMdgrZMugn8fwQN1K+ahgdLf6E0ECiv48+TaXKU5wJ75l2zATyA9l
         va3Qm2jFyoAo4dRbVQc+yxcrX4uLl+sdXn83GdOVBvbczqg7EFNki2NzwZJ3sZ2eab54
         EiLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZtrTataqHYBm+bTknBrur/jT+tOHHcHrIEijoddlqo4=;
        b=Hio7PcgbJvkT6UlVyIk3qMqN5rscoaBDX6jBIE4rU/SiwbGy0dUVBjUumHBl9gonAJ
         gcGNLQNvxU0Uq11AXca1eYoOlppt8nL4mAgc9Oi+SDZlUBPwxWB6VCadSxlFJjnb+E8Q
         8t0/Z8BMaQMD/kgcO28auJzozIFODGX6ZwHl0Lg6afjK8UNlHD2o2znTtVH457xKicZg
         dy3fXSZ9pul7Vzund4rXc9lvC0W28Ee30dBLJbuVgR0Nb7NYnP2GZw+sduawib8VrK7b
         DEJaSmBtOkepx+oyZnNMP9XuhqFjGQOc2AW3RIg25simQ2aeAj5YTKjpceorrJiLHNvq
         0Z/A==
X-Gm-Message-State: AOAM5326C7lJ0eBaIwFZUfk6nMFPKYqeEokn+Z03XtSODeRiTezGP4aK
	oiuIfweqGJc0bWo144btCfuGVAKXfkhiIRo6
X-Received: by 2002:ac8:5cd2:: with SMTP id s18mr133998qta.202.1618435011573;
        Wed, 14 Apr 2021 14:16:51 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([138.204.24.234])
        by smtp.gmail.com with ESMTPSA id q205sm533705qka.99.2021.04.14.14.16.50
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 14 Apr 2021 14:16:51 -0700 (PDT)
Date: Wed, 14 Apr 2021 18:16:48 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: media: atomisp: pci: Format comments according
 to coding-style in file atomisp_cmd.h
Message-ID: <1a8f8f0686ca2b8817cd07f9c99be8904f9be6b4.1618434875.git.alinesantanacordeiro@gmail.com>
References: <cover.1618434875.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618434875.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Format all comments according to the coding-style.
Issue detected by checkpatch.pl.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_cmd.h | 161 +++++++-----------------
 1 file changed, 43 insertions(+), 118 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.h b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
index 8c4fc2b..76117ae 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
@@ -49,9 +49,7 @@ struct ia_css_frame;
 /* FIXME: check if can go */
 extern int atomisp_punit_hpll_freq;
 
-/*
- * Helper function
- */
+/* Helper function */
 void dump_sp_dmem(struct atomisp_device *isp, unsigned int addr,
 		  unsigned int size);
 struct camera_mipi_info *atomisp_to_sensor_mipi_info(struct v4l2_subdev *sd);
@@ -65,9 +63,7 @@ bool atomisp_buffers_queued(struct atomisp_sub_device *asd);
 /* ISP2401 */
 bool atomisp_buffers_queued_pipe(struct atomisp_video_pipe *pipe);
 
-/*
- * Interrupt functions
- */
+/* Interrupt functions */
 void atomisp_msi_irq_init(struct atomisp_device *isp);
 void atomisp_msi_irq_uninit(struct atomisp_device *isp);
 void atomisp_wdt_work(struct work_struct *work);
@@ -82,15 +78,10 @@ int atomisp_get_frame_pgnr(struct atomisp_device *isp,
 			   const struct ia_css_frame *frame, u32 *p_pgnr);
 void atomisp_delayed_init_work(struct work_struct *work);
 
-/*
- * Get internal fmt according to V4L2 fmt
- */
-
+/* Get internal fmt according to V4L2 fmt */
 bool atomisp_is_viewfinder_support(struct atomisp_device *isp);
 
-/*
- * ISP features control function
- */
+/* ISP features control function */
 
 /*
  * Function to set sensor runmode by user when
@@ -105,9 +96,7 @@ int atomisp_set_sensor_runmode(struct atomisp_sub_device *asd,
 int atomisp_gdc_cac(struct atomisp_sub_device *asd, int flag,
 		    __s32 *value);
 
-/*
- * Function to enable/disable low light mode (including ANR)
- */
+/* Function to enable/disable low light mode (including ANR) */
 int atomisp_low_light(struct atomisp_sub_device *asd, int flag,
 		      __s32 *value);
 
@@ -120,91 +109,63 @@ int atomisp_xnr(struct atomisp_sub_device *asd, int flag, int *arg);
 int atomisp_formats(struct atomisp_sub_device *asd, int flag,
 		    struct atomisp_formats_config *config);
 
-/*
- * Function to configure noise reduction
- */
+/* Function to configure noise reduction */
 int atomisp_nr(struct atomisp_sub_device *asd, int flag,
 	       struct atomisp_nr_config *config);
 
-/*
- * Function to configure temporal noise reduction (TNR)
- */
+/* Function to configure temporal noise reduction (TNR) */
 int atomisp_tnr(struct atomisp_sub_device *asd, int flag,
 		struct atomisp_tnr_config *config);
 
-/*
- * Function to configure black level compensation
- */
+/* Function to configure black level compensation */
 int atomisp_black_level(struct atomisp_sub_device *asd, int flag,
 			struct atomisp_ob_config *config);
 
-/*
- * Function to configure edge enhancement
- */
+/* Function to configure edge enhancement */
 int atomisp_ee(struct atomisp_sub_device *asd, int flag,
 	       struct atomisp_ee_config *config);
 
-/*
- * Function to update Gamma table for gamma, brightness and contrast config
- */
+/* Function to update Gamma table for gamma, brightness and contrast config */
 int atomisp_gamma(struct atomisp_sub_device *asd, int flag,
 		  struct atomisp_gamma_table *config);
-/*
- * Function to update Ctc table for Chroma Enhancement
- */
+
+/* Function to update Ctc table for Chroma Enhancement */
 int atomisp_ctc(struct atomisp_sub_device *asd, int flag,
 		struct atomisp_ctc_table *config);
 
-/*
- * Function to update gamma correction parameters
- */
+/* Function to update gamma correction parameters */
 int atomisp_gamma_correction(struct atomisp_sub_device *asd, int flag,
 			     struct atomisp_gc_config *config);
 
-/*
- * Function to update Gdc table for gdc
- */
+/* Function to update Gdc table for gdc */
 int atomisp_gdc_cac_table(struct atomisp_sub_device *asd, int flag,
 			  struct atomisp_morph_table *config);
 
-/*
- * Function to update table for macc
- */
+/* Function to update table for macc */
 int atomisp_macc_table(struct atomisp_sub_device *asd, int flag,
 		       struct atomisp_macc_config *config);
-/*
- * Function to get DIS statistics.
- */
+
+/* Function to get DIS statistics. */
 int atomisp_get_dis_stat(struct atomisp_sub_device *asd,
 			 struct atomisp_dis_statistics *stats);
 
-/*
- * Function to get DVS2 BQ resolution settings
- */
+/* Function to get DVS2 BQ resolution settings */
 int atomisp_get_dvs2_bq_resolutions(struct atomisp_sub_device *asd,
 				    struct atomisp_dvs2_bq_resolutions *bq_res);
 
-/*
- * Function to set the DIS coefficients.
- */
+/* Function to set the DIS coefficients. */
 int atomisp_set_dis_coefs(struct atomisp_sub_device *asd,
 			  struct atomisp_dis_coefficients *coefs);
 
-/*
- * Function to set the DIS motion vector.
- */
+/* Function to set the DIS motion vector. */
 int atomisp_set_dis_vector(struct atomisp_sub_device *asd,
 			   struct atomisp_dis_vector *vector);
 
-/*
- * Function to set/get 3A stat from isp
- */
+/* Function to set/get 3A stat from isp */
 int atomisp_3a_stat(struct atomisp_sub_device *asd, int flag,
 		    struct atomisp_3a_statistics *config);
 
-/*
- * Function to get metadata from isp
- */
+/* Function to get metadata from isp */
 int atomisp_get_metadata(struct atomisp_sub_device *asd, int flag,
 			 struct atomisp_metadata *config);
 
@@ -213,84 +174,59 @@ int atomisp_get_metadata_by_type(struct atomisp_sub_device *asd, int flag,
 
 int atomisp_set_parameters(struct video_device *vdev,
 			   struct atomisp_parameters *arg);
-/*
- * Function to set/get isp parameters to isp
- */
+
+/* Function to set/get isp parameters to isp */
 int atomisp_param(struct atomisp_sub_device *asd, int flag,
 		  struct atomisp_parm *config);
 
-/*
- * Function to configure color effect of the image
- */
+/* Function to configure color effect of the image */
 int atomisp_color_effect(struct atomisp_sub_device *asd, int flag,
 			 __s32 *effect);
 
-/*
- * Function to configure bad pixel correction
- */
+/* Function to configure bad pixel correction */
 int atomisp_bad_pixel(struct atomisp_sub_device *asd, int flag,
 		      __s32 *value);
 
-/*
- * Function to configure bad pixel correction params
- */
+/* Function to configure bad pixel correction params */
 int atomisp_bad_pixel_param(struct atomisp_sub_device *asd, int flag,
 			    struct atomisp_dp_config *config);
 
-/*
- * Function to enable/disable video image stablization
- */
+/* Function to enable/disable video image stablization */
 int atomisp_video_stable(struct atomisp_sub_device *asd, int flag,
 			 __s32 *value);
 
-/*
- * Function to configure fixed pattern noise
- */
+/* Function to configure fixed pattern noise */
 int atomisp_fixed_pattern(struct atomisp_sub_device *asd, int flag,
 			  __s32 *value);
 
-/*
- * Function to configure fixed pattern noise table
- */
+/* Function to configure fixed pattern noise table */
 int atomisp_fixed_pattern_table(struct atomisp_sub_device *asd,
 				struct v4l2_framebuffer *config);
 
-/*
- * Function to configure false color correction
- */
+/* Function to configure false color correction */
 int atomisp_false_color(struct atomisp_sub_device *asd, int flag,
 			__s32 *value);
 
-/*
- * Function to configure false color correction params
- */
+/* Function to configure false color correction params */
 int atomisp_false_color_param(struct atomisp_sub_device *asd, int flag,
 			      struct atomisp_de_config *config);
 
-/*
- * Function to configure white balance params
- */
+/* Function to configure white balance params */
 int atomisp_white_balance_param(struct atomisp_sub_device *asd, int flag,
 				struct atomisp_wb_config *config);
 
 int atomisp_3a_config_param(struct atomisp_sub_device *asd, int flag,
 			    struct atomisp_3a_config *config);
 
-/*
- * Function to setup digital zoom
- */
+/* Function to setup digital zoom */
 int atomisp_digital_zoom(struct atomisp_sub_device *asd, int flag,
 			 __s32 *value);
 
-/*
- * Function  set camera_prefiles.xml current sensor pixel array size
- */
+/* Function  set camera_prefiles.xml current sensor pixel array size */
 int atomisp_set_array_res(struct atomisp_sub_device *asd,
 			  struct atomisp_resolution  *config);
 
-/*
- * Function to calculate real zoom region for every pipe
- */
+/* Function to calculate real zoom region for every pipe */
 int atomisp_calculate_real_zoom_region(struct atomisp_sub_device *asd,
 				       struct ia_css_dz_config   *dz_config,
 				       enum ia_css_pipe_id css_pipe_id);
@@ -371,9 +307,7 @@ void atomisp_css_flush(struct atomisp_device *isp);
 int atomisp_source_pad_to_stream_id(struct atomisp_sub_device *asd,
 				    uint16_t source_pad);
 
-/*
- * Events. Only one event has to be exported for now.
- */
+/* Events. Only one event has to be exported for now. */
 void atomisp_eof_event(struct atomisp_sub_device *asd, uint8_t exp_id);
 
 enum mipi_port_id __get_mipi_port(struct atomisp_device *isp,
@@ -389,34 +323,25 @@ void atomisp_free_css_parameters(struct atomisp_css_params *css_param);
 void atomisp_handle_parameter_and_buffer(struct atomisp_video_pipe *pipe);
 
 void atomisp_flush_params_queue(struct atomisp_video_pipe *asd);
-/*
- * Function to do Raw Buffer related operation, after enable Lock Unlock Raw Buffer
- */
+
+/* Function to do Raw Buffer related operation, after enable Lock Unlock Raw Buffer */
 int atomisp_exp_id_unlock(struct atomisp_sub_device *asd, int *exp_id);
 int atomisp_exp_id_capture(struct atomisp_sub_device *asd, int *exp_id);
 
-/*
- * Function to update Raw Buffer bitmap
- */
+/* Function to update Raw Buffer bitmap */
 int atomisp_set_raw_buffer_bitmap(struct atomisp_sub_device *asd, int exp_id);
 void atomisp_init_raw_buffer_bitmap(struct atomisp_sub_device *asd);
 
-/*
- * Function to enable/disable zoom for capture pipe
- */
+/* Function to enable/disable zoom for capture pipe */
 int atomisp_enable_dz_capt_pipe(struct atomisp_sub_device *asd,
 				unsigned int *enable);
 
-/*
- * Function to get metadata type bu pipe id
- */
+/* Function to get metadata type bu pipe id */
 enum atomisp_metadata_type
 atomisp_get_metadata_type(struct atomisp_sub_device *asd,
 			  enum ia_css_pipe_id pipe_id);
 
-/*
- * Function for HAL to inject a fake event to wake up poll thread
- */
+/* Function for HAL to inject a fake event to wake up poll thread */
 int atomisp_inject_a_fake_event(struct atomisp_sub_device *asd, int *event);
 
 /*
-- 
2.7.4


