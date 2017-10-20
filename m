X-GM-THRID: 6478777723718205440
X-Received: by 10.200.56.156 with SMTP id f28mr2478394qtc.15.1508459017086;
        Thu, 19 Oct 2017 17:23:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.212.144 with SMTP id s16ls3885854qks.0.gmail; Thu, 19 Oct
 2017 17:23:36 -0700 (PDT)
X-Received: by 10.200.52.154 with SMTP id w26mr2478456qtb.36.1508459016575;
        Thu, 19 Oct 2017 17:23:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508459016; cv=none;
        d=google.com; s=arc-20160816;
        b=ExJxRwLASNpARddmuQz0HhV3bPSWVn6efmzTx9DQom/XALiK2GfpvJKlZX6QI/6YEn
         DiRf1QObdqe+xIQx87LK0fCmuTD5ljBLg03yXcjfO73gSjDiq+3RROsXQ2Tt3PC1UovV
         ZTpbY380sN3SUxBOq8IkVk1nOh5036MORA9pKkqlnoNyuubXGuA9UyirQiVkf2b4Jwxp
         0/LZMqDJm1ClTkcmAEPOpAFJxz0QX3j8f9OgGT2klmLzSPG/ZKp4+lam9QBZN4KsrpbF
         Y3vqTNxo9mxC+NGEs8GUHscUf/gkp/PbqCfopOs0AMP9ZXquCIes4PnSDYt39BpZkjzJ
         9vUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=UTfKFsU2pHSxx9ehqJYuEm5xfxGFk3AebSZsuAcF/YQ=;
        b=M2JeeYtqEU6M2SdpaxEXwjpf2KnoGLPljpIfwa0RAsAopQdLwK5mzjSWM4LEesoVLg
         FW4Q85kMy0RCpSK68G/SmwKyzrgi+a+LoJ7rOQJh46xGmvojpjBQfIATS7p/DulAd7Il
         pKGYD1jkDrxXfV8dQMTS+P/2L07OZHwXGE28RpOm/vw7lnMSAEqqCq8cq6F02+4Zz9RM
         1rbd+aOL6srl/hR2QQ3OUU9ezLJLJxW3HcPpYo7uj2T6eURvY6cYqeB0GpN7F5mBDblN
         m+qnQYCLvitB6oHRc+rjAVUI7/lZg6XGjB6xyI75OVfnJZ3VleQrlTIRGQOhWFDei+a+
         UQtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=bQ6I757W;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::244 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x244.google.com (mail-ua0-x244.google.com. [2607:f8b0:400c:c08::244])
        by gmr-mx.google.com with ESMTPS id i8si1171830qta.1.2017.10.19.17.23.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 17:23:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::244 as permitted sender) client-ip=2607:f8b0:400c:c08::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=bQ6I757W;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::244 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x244.google.com with SMTP id n38so7232610uai.11
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Oct 2017 17:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=UTfKFsU2pHSxx9ehqJYuEm5xfxGFk3AebSZsuAcF/YQ=;
        b=bQ6I757WSmGCPcDvE6RvzhzROYgn6bV5BM4yC09MRCZbnpe+zdckljt8JcwvDB8CHU
         1ZVwakLI1XZdNiRLHi8YWeAUuGLBS+I4TulS/FzqgO4olN95+gAJqKlz3EalnzxAhlGX
         nBDCTQIaRqDL9tVBwhcJ/jt5PP6lb5xf937oIix1fO3JMrKvcttIE3x/nSYAhF15nyQC
         b3QrbuwNyG3neXfiaz6h5JN5g18XOVV4uj00oXUQEH23h3PcUdcQOgIYb6pMvWiOKM4E
         qnzvi+kdipZfVAfVjlVbF009so112RhwnRhyxfg0+bY3+qsS5DJVLdReI0ut3gwvZH07
         QJYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=UTfKFsU2pHSxx9ehqJYuEm5xfxGFk3AebSZsuAcF/YQ=;
        b=VP3R2+4CwC7908xO7bvbbCiJ0JJZo91ZpiA3hgAjqbj8mgyAnE2EKRASBTUUESl8uP
         zzOgSQ3fo69BC73+VlyA4afRDT+LibjBn/CTM6u9qjUR/hsMZ+qGXwgcpNN5Q1dEUTYh
         puYqnwKz4IKeWWSlT0CT7RxRYk59z9q/W2Imq+fGL/+Cq0jPWuOjjvOHVJ4QmKZRr2Ew
         VimQ43w9es7Rl+Ox8kx6wcRG8vMBHLRyO+0q5upF0Pfey3pi0tluB+j1FAoEBl9d4xf9
         oYOxH3gRgR2roAHV6zN6VXTjN+Ve4XUKwwfeMRdOgh1smWSJVwymztAfZgbG5BeLtSAI
         sStQ==
X-Gm-Message-State: AMCzsaU/ssBKGiffyEBe+8dc/TLwUR87ctTEzloclthSR0hL8M3qXT88
	nsZ2CqOMvIfLHQ/iHD85Sm4A4DKd
X-Google-Smtp-Source: ABhQp+RIei8c3ukcjFBfVfMoazMdMRzGaVUsAdJ8t3FZqK7BrP1GxT587iLh6K2jy7OebV44aK9Thw==
X-Received: by 10.176.71.130 with SMTP id v2mr2603409uac.72.1508459015903;
        Thu, 19 Oct 2017 17:23:35 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id m6sm4894686vkb.13.2017.10.19.17.23.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Oct 2017 17:23:35 -0700 (PDT)
Date: Thu, 19 Oct 2017 20:23:33 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: greybus: Add space around ternary operator
Message-ID: <14f755ec33faad60a713aad57be29747249a919f.1508457306.git.frank@generalsoftwareinc.com>
References: <cover.1508457306.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508457306.git.frank@generalsoftwareinc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Use one space around ternary operator to comply in with the preferred
coding style for the linux kernel. Detected by checkpatch with message:
CHECK: spaces required around that ':' (ctx:VxV)

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/greybus/audio_codec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
index 3b47d51..003a84a 100644
--- a/drivers/staging/greybus/audio_codec.c
+++ b/drivers/staging/greybus/audio_codec.c
@@ -320,7 +320,7 @@ int gbaudio_module_update(struct gbaudio_codec_info *codec,
 	char intf_name[NAME_SIZE], dir[NAME_SIZE];
 
 	dev_dbg(module->dev, "%s:Module update %s sequence\n", w->name,
-		enable ? "Enable":"Disable");
+		enable ? "Enable" : "Disable");
 
 	if ((w->id != snd_soc_dapm_aif_in) && (w->id != snd_soc_dapm_aif_out)) {
 		dev_dbg(codec->dev, "No action required for %s\n", w->name);
@@ -589,7 +589,7 @@ static int gbcodec_mute_stream(struct snd_soc_dai *dai, int mute, int stream)
 	struct gbaudio_stream_params *params;
 
 	dev_dbg(dai->dev, "Mute:%d, Direction:%s\n", mute,
-		stream ? "CAPTURE":"PLAYBACK");
+		stream ? "CAPTURE" : "PLAYBACK");
 
 	mutex_lock(&codec->lock);
 
-- 
2.7.4


