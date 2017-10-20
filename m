X-GM-THRID: 6478777723718205440
X-Received: by 10.37.170.102 with SMTP id s93mr1853727ybi.75.1508458012496;
        Thu, 19 Oct 2017 17:06:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.98.8 with SMTP id w8ls681020ywb.0.gmail; Thu, 19 Oct 2017
 17:06:51 -0700 (PDT)
X-Received: by 10.37.39.7 with SMTP id n7mr1843250ybn.55.1508458011748;
        Thu, 19 Oct 2017 17:06:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508458011; cv=none;
        d=google.com; s=arc-20160816;
        b=Yl5Ft299WMpBhLm3BzdCRkEioOhEv1fu+3xh6/Dcy1ptGFR29B0k1cOZKdxgZTU0wb
         NrXCPScNW9QuhVjX7zmDgH65z2Iw0W4jUSl9W3THZaSRJfznk4JdRiorTUmnmmxlEse9
         oRi/nRN4Ajf+7ltJHgWfoIVt5iX0DKFlC6vtbrORvtGqgsXcqIcQy2iNBP0Tw80NRjoC
         1JULRUowToM/0cXgXNGSaARhpNllgCJcBKVM9QDhtga3pCmJzKQhlX3zT0XKA8Xi8n8s
         N+NE69VRWG4mEkti0N/l3i1hOrCKCbZIevSzBLbZf22XhzKkOx/IUYLMn9mMoppN+5b2
         l8kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=ECUZU29RHoNIZpszmh6T5TTK4H9x/Xeywjm35vbx7H4=;
        b=CIXupc6CO74wacpUCHl8ntTuG+NHC04nbe+pLCAlN6gsWYMu26BqgoSX1grz1CelA+
         jHdUTrrSPgZ1ffm4l2DgsZEjFQzOouvzVvmxsNHTNaxaRwIdlBkB9SNzkSyqdyaXkX3e
         9NDWwlIIOl4ZonGDuwanQwoSmwlULO4loEIKcCBT9Iju25vUK2AME7Ui+hhgt+DeGncj
         4SNEXJCtXGmGho8PZgFElFEFZ7ueIE/Y/dxvrGG9g4bKK+5HbadN1Q6N3AlmxJTqRh0+
         9xj10kQD5I7fHmDvyCXQGC19REXrLlbhbY+jdFrMQ7Dy7Bgg6JO78uMjdU1tcK8g7aSg
         3qRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=HvyV7O4b;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x243.google.com (mail-ua0-x243.google.com. [2607:f8b0:400c:c08::243])
        by gmr-mx.google.com with ESMTPS id g13si1095993ybk.3.2017.10.19.17.06.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 17:06:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::243 as permitted sender) client-ip=2607:f8b0:400c:c08::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=HvyV7O4b;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x243.google.com with SMTP id f46so7255114uae.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Oct 2017 17:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ECUZU29RHoNIZpszmh6T5TTK4H9x/Xeywjm35vbx7H4=;
        b=HvyV7O4bfeNilO1cKBaANstnOzS+egVcMKGA2zDNkQmrLA6F9a9ANTvejCOsQy/ncs
         XIQBchx8BjpX6+mZuHFuzHoXbu0LWVbkrOlyhAI+GEmiidZ/1/z2t/6NvOj/FilQ1Chw
         UoPvMa/joG1fsi8eKZFfcfEK4byh0Zrth0MJklMOOoCVWb/RBJTT/Fv3IEsG4Wc1K+UQ
         S3cyBZgo1+CdWfp0u0vHnFgP9/4rEmxqIJeA184KqW7Ggx0UDBtze+3gs5lRhJ9+XpQ6
         diJfxO+jGZq690LYxI6YPw32K1gUlmwRkreTqvaqxcGEEEcGkiN/0jTPgYb2qNHzaUq5
         q/Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ECUZU29RHoNIZpszmh6T5TTK4H9x/Xeywjm35vbx7H4=;
        b=k/RxkchjZu3ilcjaxoJ8ljTnCFHqNMFE/tL9Doivb8WjkBtzC/Xqep6LyAyf7chyC3
         GDoN9MhEE97PJp07YKCweVkNI+TJJOnqbAtNME1/MhHsNOWO3Lg+6HBHaAqFc4SYPsnQ
         A9mifxrJj/QEgRZJICAM0cVWfQpecvXZm0zVdc9CdBLVXxa+WMEhmQw/3uA3DW/zEokQ
         Tv7S1vf0zow7iGiEXd9usgmApSnyKtnskQqDPDzGuXQFQn3ImzJw3UdEuCaBTR/bopdi
         lxUFsCRXga6NqDzUsySqDOR5QHfHRudSSl1EI7PH69vszIYo3NWLUgyuVKAyQuPSWJM4
         Qemw==
X-Gm-Message-State: AMCzsaVAgusFBkNMHOgdwLknv05AXdoD7F44sg3YwFO86FuDZCEY+Fws
	gpOjzMd6JXCPy9sdmMWAdObhC5xl
X-Google-Smtp-Source: ABhQp+SJqryhTpYXaf5SzeVqvc/vdyocmkiFcTQPZEnf5w9oDecBqd5JEnZfrKeMO0VecS250x7LBA==
X-Received: by 10.176.11.2 with SMTP id b2mr2554770uak.80.1508458011124;
        Thu, 19 Oct 2017 17:06:51 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id 80sm3897602vkf.47.2017.10.19.17.06.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Oct 2017 17:06:50 -0700 (PDT)
Date: Thu, 19 Oct 2017 20:06:48 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: greybus: Remove unnecessary blank lines
Message-ID: <870ff7f2e00dcc63442173183383490a0adc3169.1508457306.git.frank@generalsoftwareinc.com>
References: <cover.1508457306.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508457306.git.frank@generalsoftwareinc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary blank lines to reduce file length and address
checkpatch messages:
CHECK: Please don't use multiple blank lines
CHECK: Blank lines aren't necessary before a close brace '}'

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/greybus/arche-apb-ctrl.c | 1 -
 drivers/staging/greybus/audio_codec.c    | 3 ---
 drivers/staging/greybus/audio_topology.c | 1 -
 drivers/staging/greybus/connection.c     | 4 ----
 drivers/staging/greybus/control.c        | 1 -
 5 files changed, 10 deletions(-)

diff --git a/drivers/staging/greybus/arche-apb-ctrl.c b/drivers/staging/greybus/arche-apb-ctrl.c
index 0412f3d..4d75f2e 100644
--- a/drivers/staging/greybus/arche-apb-ctrl.c
+++ b/drivers/staging/greybus/arche-apb-ctrl.c
@@ -21,7 +21,6 @@
 #include <linux/spinlock.h>
 #include "arche_platform.h"
 
-
 static void apb_bootret_deassert(struct device *dev);
 
 struct arche_apb_ctrl_drvdata {
diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
index a6d01f0..0ce0b8c 100644
--- a/drivers/staging/greybus/audio_codec.c
+++ b/drivers/staging/greybus/audio_codec.c
@@ -588,7 +588,6 @@ static int gbcodec_mute_stream(struct snd_soc_dai *dai, int mute, int stream)
 	struct gbaudio_codec_info *codec = dev_get_drvdata(dai->dev);
 	struct gbaudio_stream_params *params;
 
-
 	dev_dbg(dai->dev, "Mute:%d, Direction:%s\n", mute,
 		stream ? "CAPTURE":"PLAYBACK");
 
@@ -908,7 +907,6 @@ static void gbaudio_codec_clean_data_rx(struct gbaudio_data_connection *data)
 	data->state[1] = GBAUDIO_CODEC_SHUTDOWN;
 }
 
-
 static void gbaudio_codec_cleanup(struct gbaudio_module_info *module)
 {
 	struct gbaudio_data_connection *data;
@@ -924,7 +922,6 @@ static void gbaudio_codec_cleanup(struct gbaudio_module_info *module)
 
 		if (cap_state > GBAUDIO_CODEC_SHUTDOWN)
 			gbaudio_codec_clean_data_rx(data);
-
 	}
 }
 
diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 07fac39..be71124 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -924,7 +924,6 @@ static int gbaudio_tplg_create_wcontrol(struct gbaudio_module_info *gb,
 		break;
 	default:
 		return -EINVAL;
-
 	}
 
 	dev_dbg(gb->dev, "%s:%d DAPM control created, ret:%d\n", ctl->name,
diff --git a/drivers/staging/greybus/connection.c b/drivers/staging/greybus/connection.c
index 2cf6464..cb96877 100644
--- a/drivers/staging/greybus/connection.c
+++ b/drivers/staging/greybus/connection.c
@@ -12,17 +12,13 @@
 #include "greybus.h"
 #include "greybus_trace.h"
 
-
 #define GB_CONNECTION_CPORT_QUIESCE_TIMEOUT	1000
 
-
 static void gb_connection_kref_release(struct kref *kref);
 
-
 static DEFINE_SPINLOCK(gb_connections_lock);
 static DEFINE_MUTEX(gb_connection_mutex);
 
-
 /* Caller holds gb_connection_mutex. */
 static bool gb_connection_cport_in_use(struct gb_interface *intf, u16 cport_id)
 {
diff --git a/drivers/staging/greybus/control.c b/drivers/staging/greybus/control.c
index 5b30be3..590f540 100644
--- a/drivers/staging/greybus/control.c
+++ b/drivers/staging/greybus/control.c
@@ -16,7 +16,6 @@
 #define GB_CONTROL_VERSION_MAJOR	0
 #define GB_CONTROL_VERSION_MINOR	1
 
-
 static int gb_control_get_version(struct gb_control *control)
 {
 	struct gb_interface *intf = control->connection->intf;
-- 
2.7.4


