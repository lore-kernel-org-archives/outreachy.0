X-GM-THRID: 6393338025823174656
X-Received: by 10.99.185.77 with SMTP id v13mr4573384pgo.160.1488716668284;
        Sun, 05 Mar 2017 04:24:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.151 with SMTP id u23ls3804280iou.27.gmail; Sun, 05 Mar
 2017 04:24:27 -0800 (PST)
X-Received: by 10.99.109.203 with SMTP id i194mr4453991pgc.134.1488716667457;
        Sun, 05 Mar 2017 04:24:27 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id g82si866473pfb.5.2017.03.05.04.24.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 04:24:27 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 67so10263813pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 04:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fKWlN1uJ1mf/Me8HLqov+arrtTTq99dTObCI6C8oLAE=;
        b=PJnHZUYnF6nEXtYzEb8yCSVAC1KolsjWrgw6+d6Nj9USqEzx2bNYX7/oxKhOQNCb9V
         Qn6sTWHWIU9+5HKXmfaQOUU36L4pyV+vU8MPhGaZRQSU5XHgaJ0IZob1kdX6/OoaTkHL
         ohrbnihxyyAhwXMizb/30oTNCg2mSPUYUvB5yBWCeqzEvviwYYkwMMw8s687WvZrfHPz
         jS+7fgd6hNX8UTCbCzWQkyOrefqaz9JC2RWKYgR34482xECjwmsh01kQVK1Z7hkQSrIm
         GUqQBHBtgpgmg32PAvIM+c83N0dsN64/KI0s4eIF+bJj0S3c3H3rOyQOPKweC1fyQ9BE
         UX0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fKWlN1uJ1mf/Me8HLqov+arrtTTq99dTObCI6C8oLAE=;
        b=IGoB6equTnyA2eHKf++zOSLtz+iJGacAaywqCi96JzwhAZ1fjVkLWlcv8zY/4/GR/l
         EqEeJvfq57bVkORnc7m5/ZYZHXeyT1+T7HlrEZitq4z9xrmIefjdhSVwem8jJNZOE9nN
         nMUkfHCxwtnACCe4+IO8DNn3dS+/rYeWgNh6gS7bC7eK41HrAYwG63guEenMMVe/rlbT
         YWQydJWZ8xLd5D2NGNnqGcQ9jbkf95mbL7VTPBR6rNV4J7DeVFTnFHHqa7eI/OphC+mE
         YkFYCil48ezCONUtJp32+jFdCLNLUwk6HhUJk9Gi8X032+IPLXEw8vJZGkRjqjpYnTPh
         CPDw==
X-Gm-Message-State: AMke39k9pg8E3yIo81gODuhj+37Nh0VaJrZR/IeCQDg4AAvBfgKRV8xoGSgpOBmsQ0MA4Q==
X-Received: by 10.98.160.84 with SMTP id r81mr14623200pfe.71.1488716667170;
        Sun, 05 Mar 2017 04:24:27 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([157.49.0.166])
        by smtp.gmail.com with ESMTPSA id 127sm28127540pgg.11.2017.03.05.04.24.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 04:24:26 -0800 (PST)
Date: Sun, 5 Mar 2017 17:54:18 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: bcm2835-audio: match alignment with open
 parenthesis
Message-ID: <75d0207208a0e2ae968b760b750abf5f3f17ce40.1488716526.git.aishpant@gmail.com>
References: <cover.1488716526.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488716526.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Patch fixes the following warning issued by checkpatch on bcm2835-pcm.c
in bcm-audio driver: CHECK: Alignment should match open parenthesis

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 .../vc04_services/bcm2835-audio/bcm2835-pcm.c      | 47 +++++++++++-----------
 1 file changed, 24 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
index d60d702..6307b86 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
@@ -68,7 +68,7 @@ void bcm2835_playback_fifo(struct bcm2835_alsa_stream *alsa_stream)
 	audio_info(" .. IN\n");
 
 	audio_info("alsa_stream=%p substream=%p\n", alsa_stream,
-		alsa_stream ? alsa_stream->substream : 0);
+		   alsa_stream ? alsa_stream->substream : 0);
 
 	if (alsa_stream->open)
 		consumed = bcm2835_audio_retrieve_buffers(alsa_stream);
@@ -83,12 +83,13 @@ void bcm2835_playback_fifo(struct bcm2835_alsa_stream *alsa_stream)
 			new_period = 1;
 	}
 	audio_debug("updating pos cur: %d + %d max:%d period_bytes:%d, hw_ptr: %d new_period:%d\n",
-		alsa_stream->pos,
-		consumed,
-		alsa_stream->buffer_size,
-		(int) (alsa_stream->period_size * alsa_stream->substream->runtime->periods),
-		frames_to_bytes(alsa_stream->substream->runtime, alsa_stream->substream->runtime->status->hw_ptr),
-		new_period);
+		    alsa_stream->pos,
+		    consumed,
+		    alsa_stream->buffer_size,
+		    (int) (alsa_stream->period_size * alsa_stream->substream->runtime->periods),
+		    frames_to_bytes(alsa_stream->substream->runtime,
+				    alsa_stream->substream->runtime->status->hw_ptr),
+		    new_period);
 	if (alsa_stream->buffer_size) {
 		alsa_stream->pos += consumed & ~(1 << 30);
 		alsa_stream->pos %= alsa_stream->buffer_size;
@@ -261,7 +262,7 @@ static int snd_bcm2835_playback_close(struct snd_pcm_substream *substream)
 
 /* hw_params callback */
 static int snd_bcm2835_pcm_hw_params(struct snd_pcm_substream *substream,
-	struct snd_pcm_hw_params *params)
+				     struct snd_pcm_hw_params *params)
 {
 	struct snd_pcm_runtime *runtime = substream->runtime;
 	struct bcm2835_alsa_stream *alsa_stream = runtime->private_data;
@@ -314,8 +315,8 @@ static int snd_bcm2835_pcm_prepare(struct snd_pcm_substream *substream)
 		channels = alsa_stream->channels;
 
 	err = bcm2835_audio_set_params(alsa_stream, channels,
-		alsa_stream->params_rate,
-		alsa_stream->pcm_format_width);
+				       alsa_stream->params_rate,
+				       alsa_stream->pcm_format_width);
 	if (err < 0)
 		audio_error(" error setting hw params\n");
 
@@ -337,8 +338,8 @@ static int snd_bcm2835_pcm_prepare(struct snd_pcm_substream *substream)
 	alsa_stream->pos = 0;
 
 	audio_debug("buffer_size=%d, period_size=%d pos=%d frame_bits=%d\n",
-		alsa_stream->buffer_size, alsa_stream->period_size,
-		alsa_stream->pos, runtime->frame_bits);
+		    alsa_stream->buffer_size, alsa_stream->period_size,
+		    alsa_stream->pos, runtime->frame_bits);
 
 	mutex_unlock(&chip->audio_mutex);
 	audio_info(" .. OUT\n");
@@ -346,7 +347,7 @@ static int snd_bcm2835_pcm_prepare(struct snd_pcm_substream *substream)
 }
 
 static void snd_bcm2835_pcm_transfer(struct snd_pcm_substream *substream,
-	struct snd_pcm_indirect *rec, size_t bytes)
+				     struct snd_pcm_indirect *rec, size_t bytes)
 {
 	struct snd_pcm_runtime *runtime = substream->runtime;
 	struct bcm2835_alsa_stream *alsa_stream = runtime->private_data;
@@ -383,14 +384,13 @@ static int snd_bcm2835_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
 	switch (cmd) {
 	case SNDRV_PCM_TRIGGER_START:
 		audio_debug("bcm2835_AUDIO_TRIGGER_START running=%d\n",
-			alsa_stream->running);
+			    alsa_stream->running);
 		if (!alsa_stream->running) {
 			err = bcm2835_audio_start(alsa_stream);
 			if (!err) {
 				alsa_stream->pcm_indirect.hw_io =
 					alsa_stream->pcm_indirect.hw_data =
-					bytes_to_frames(runtime,
-					alsa_stream->pos);
+					bytes_to_frames(runtime, alsa_stream->pos);
 				substream->ops->ack(substream);
 				alsa_stream->running = 1;
 				alsa_stream->draining = 1;
@@ -435,9 +435,9 @@ snd_bcm2835_pcm_pointer(struct snd_pcm_substream *substream)
 	audio_info(" .. IN\n");
 
 	audio_debug("pcm_pointer... (%d) hwptr=%d appl=%d pos=%d\n", 0,
-		frames_to_bytes(runtime, runtime->status->hw_ptr),
-		frames_to_bytes(runtime, runtime->control->appl_ptr),
-		alsa_stream->pos);
+		    frames_to_bytes(runtime, runtime->status->hw_ptr),
+		    frames_to_bytes(runtime, runtime->control->appl_ptr),
+		    alsa_stream->pos);
 
 	audio_info(" .. OUT\n");
 	return snd_pcm_indirect_playback_pointer(substream,
@@ -446,12 +446,12 @@ snd_bcm2835_pcm_pointer(struct snd_pcm_substream *substream)
 }
 
 static int snd_bcm2835_pcm_lib_ioctl(struct snd_pcm_substream *substream,
-	unsigned int cmd, void *arg)
+				     unsigned int cmd, void *arg)
 {
 	int ret = snd_pcm_lib_ioctl(substream, cmd, arg);
 
 	audio_info(" .. substream=%p, cmd=%d, arg=%p (%x) ret=%d\n", substream,
-		cmd, arg, arg ? *(unsigned *) arg : 0, ret);
+		   cmd, arg, arg ? *(unsigned *) arg : 0, ret);
 	return ret;
 }
 
@@ -543,8 +543,9 @@ int snd_bcm2835_new_spdif_pcm(struct bcm2835_chip *chip)
 	/* pre-allocation of buffers */
 	/* NOTE: this may fail */
 	snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_CONTINUOUS,
-		snd_dma_continuous_data(GFP_KERNEL),
-		snd_bcm2835_playback_spdif_hw.buffer_bytes_max, snd_bcm2835_playback_spdif_hw.buffer_bytes_max);
+					      snd_dma_continuous_data(GFP_KERNEL),
+					      snd_bcm2835_playback_spdif_hw.buffer_bytes_max,
+					      snd_bcm2835_playback_spdif_hw.buffer_bytes_max);
 out:
 	mutex_unlock(&chip->audio_mutex);
 	audio_info(" .. OUT\n");
-- 
2.7.4


