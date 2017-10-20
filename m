X-GM-THRID: 6478777723718205440
X-Received: by 10.55.71.146 with SMTP id u140mr2368351qka.7.1508458972090;
        Thu, 19 Oct 2017 17:22:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.34.181 with SMTP id f50ls3847321qta.6.gmail; Thu, 19 Oct
 2017 17:22:51 -0700 (PDT)
X-Received: by 10.200.40.80 with SMTP id 16mr2570836qtr.47.1508458971578;
        Thu, 19 Oct 2017 17:22:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508458971; cv=none;
        d=google.com; s=arc-20160816;
        b=hB2Iu5SpM2ffq5/LDx5/h6KHtqAnAE/clkbbKRGQpH1bsTdCkY5kCH5SYB1kYDB1YL
         apm9evMrr11jzWrA3PiIhiNjfHvmEVQeC83VURLXMEkfcvvC1RRkrwwGMz+NbCVAPk/d
         BAzEB4zqK89gBevPvk8Z11J0mZ3e+cOulIZcwAJTWEtgmVseS1iQ1X7KPKihVETrUwhE
         4sHVvKzK2VkkOXJfwdeZoUPic7ueZRzU2u2vmyggIu/ArNnk93fIMSi5E5p5ptVvf+tu
         lCWckPCN86Hb6sL92HOyclUQH/URfsrWw9Y8Z4U60sg4uQ38ZnyO22l71Usq4CeDTXIg
         mqBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=JlKOISE59RWzW1sCei3PclnSGLJjhs+wkaH8mQnghvc=;
        b=d9alXAY0pUwbA7Ij6auhhs6zmF1uKPF9btaLEGa5+iP/axGl6gXykj0hoc2nn8Jeuy
         YU14dVTJJ2RGz6jK92PaP8RfM5YYM7RHGI/BfdSsqLNtheDKx9ZCudZuM4GdwOplBmFv
         CNGDJBxNk94qfWirR6JrnRN9gX7N9335DD+BNUakGUm6MuHXlxacIPPxHNr1qrEZ+rvc
         kp7FHV8q6t8oJukTi7oks18rp9HTR+q07+C0AtDGnIMCf2uFQt9/b8Egyz3ADMyNsVh2
         99YRe14KQWyX/e0Nax2zCU/oaJFeHv0hOB3vGwK9FDBGc1eU5g9ObYYhOzY8J1vwaLAb
         c1cQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=XZ+Lg69Q;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::22f as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk0-x22f.google.com (mail-vk0-x22f.google.com. [2607:f8b0:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id d142si1009953qke.0.2017.10.19.17.22.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 17:22:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::22f as permitted sender) client-ip=2607:f8b0:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=XZ+Lg69Q;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::22f as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk0-x22f.google.com with SMTP id t203so6438692vke.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Oct 2017 17:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JlKOISE59RWzW1sCei3PclnSGLJjhs+wkaH8mQnghvc=;
        b=XZ+Lg69Qyo3O6YcPLyuRamTbrN89plwaA2SPRKBaHZL+CiySxW3WgqTYq2bE2hi02x
         mzzEFh98NapkijRr6tCiDh5BoJJ1f6shdOm2r5y8q2eBtwaKoU0mmrdlTIXwMshlL+B6
         +xE+zBVdwaPKaULxxE99YOq4Ibh0b/LgqgSY9+MLSllA4hL+NqI4QJLpOYSKuC/nnFtA
         1fTNE2Tpltgslw3pcMrqcuP6uHvfLgMEhM72Tt9c/BBeCJeU8Rs9QhvE50briXWN9H0G
         Vycqow6hGCh8LDJ2hfm3W+NidYdGQr8ftiKHVxOBwGw4KASZMsV2MU800+/bfXQelIg9
         FzIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JlKOISE59RWzW1sCei3PclnSGLJjhs+wkaH8mQnghvc=;
        b=J0GmbsAeFsnavHlwqp8r5r3pBwyZaE5DiMs0BWJaljxykG2xHu2uiy5YPHpDQpkNh3
         mS+NXK4BeAONILGl5irPK+0qUiIFI0i4AzNJ6tgC1umxeuzcXWRbqkeYNvhgjqFPxFsr
         99Air4UNBVgRwWrMCbQys0p/Et3bnjlJ+sjqYAkoLgAaCjvVkIiP7hApu2ms1M3a63GS
         MBXR3fmvqtTDomq+XFv8OY0rBTRbun+NmLuUjBWbcWKns1te1+KoNLE0PN5hM2g9jh0Z
         ccI9W9X6v9cmMI1GQfRzbPunPaDf9u8uP3eOVMz71MW6Umuh9wnF1d9+6Aax/2uPAsLm
         gIVg==
X-Gm-Message-State: AMCzsaU1NoKDxhMdWjzpXm6tWg/1WBmSVxQWgs2XRYdEPK15ujbRaV9e
	YTN4kt7yXNRlftO9BuPHGOt2qluq
X-Google-Smtp-Source: ABhQp+Skt2lEt7xHTs/tmBt3vlVF/NwSryTyB/vA/vReTEBKVSynEDiuztFCiLMFhRPG+x5QXPB43w==
X-Received: by 10.31.58.145 with SMTP id h139mr2235151vka.194.1508458970938;
        Thu, 19 Oct 2017 17:22:50 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id x30sm4197691uac.14.2017.10.19.17.22.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Oct 2017 17:22:50 -0700 (PDT)
Date: Thu, 19 Oct 2017 20:22:48 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: greybus: Use u32 instead of uint32_t
Message-ID: <691e868c06ed2bcd58d9b40ea22a582b43a9655a.1508457306.git.frank@generalsoftwareinc.com>
References: <cover.1508457306.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508457306.git.frank@generalsoftwareinc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Use 'u32' kernel types instead of 'uint32_t'.

Detected by checkpatch with the message:
CHECK: Prefer kernel type 'u32' over 'uint32_t'

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/greybus/audio_codec.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
index b5e4fe1..3b47d51 100644
--- a/drivers/staging/greybus/audio_codec.c
+++ b/drivers/staging/greybus/audio_codec.c
@@ -48,7 +48,7 @@ static int gbaudio_module_enable_tx(struct gbaudio_codec_info *codec,
 	int module_state, ret = 0;
 	u16 data_cport, i2s_port, cportid;
 	u8 sig_bits, channels;
-	uint32_t format, rate;
+	u32 format, rate;
 	struct gbaudio_data_connection *data;
 	struct gbaudio_stream_params *params;
 
@@ -183,7 +183,7 @@ static int gbaudio_module_enable_rx(struct gbaudio_codec_info *codec,
 	int module_state, ret = 0;
 	u16 data_cport, i2s_port, cportid;
 	u8 sig_bits, channels;
-	uint32_t format, rate;
+	u32 format, rate;
 	struct gbaudio_data_connection *data;
 	struct gbaudio_stream_params *params;
 
@@ -413,7 +413,7 @@ static int gbcodec_hw_params(struct snd_pcm_substream *substream,
 {
 	int ret;
 	u8 sig_bits, channels;
-	uint32_t format, rate;
+	u32 format, rate;
 	struct gbaudio_module_info *module;
 	struct gbaudio_data_connection *data;
 	struct gb_bundle *bundle;
-- 
2.7.4


