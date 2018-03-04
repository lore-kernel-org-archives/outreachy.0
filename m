X-GM-THRID: 6529117174550757376
X-Received: by 2002:a25:3618:: with SMTP id d24-v6mr3977102yba.7.1520178560040;
        Sun, 04 Mar 2018 07:49:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.224.135 with SMTP id j129ls704716ywe.28.gmail; Sun, 04 Mar
 2018 07:49:18 -0800 (PST)
X-Google-Smtp-Source: AG47ELuAP7H01GiRnpNzPa1yK/KG/vD91HUwIa/Bzu0TEQSX+rY0Y8/liA4wLtbhjjoZpjhICeQV
X-Received: by 10.129.174.76 with SMTP id g12mr6000486ywk.194.1520178558846;
        Sun, 04 Mar 2018 07:49:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520178558; cv=none;
        d=google.com; s=arc-20160816;
        b=aiU5fMYNjYjyNgPhO4qdxQJWvv9/UzTpPoXFncZPMXOzDz5JexoSQMdcdZqDvK2L02
         Rw9kXlsJjks3NnXKq1Iqaz3hOxJo6T2612A6sE5/MNfdTrizcXDnIJZwBVJCeJxUHAYE
         SetZ84I9LTtvSjRENH/Yrgrth3FS3m9BmOE8c87QIh5fkS1ojUHzL75myzqQkCMM5eGv
         tIM3KC8RGdPdCCSwcSBo2UMI6GbP/cv6d1QFpgzJMIpF6D9WWUv4Qy4hot0dbxyheaZc
         rOrw1w/YnSR0oj/upJpGU+fYgfTntP19kwGoRl5cYCEUXc8SABX94B8nck5haewTESzO
         Kvkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=LGfE+H3m9sru881lzbDkOf10wEnlxVJnK/yDlbl0CMw=;
        b=zumlv1cKD6ez25wW9naW58ftimf08D9JHhHrzQQ9vkvSMAHaQpggeGkW1kmvjp/rKa
         P+rBdqaN7uVwsDmuPJSxeZo0PUCgy4CSGwKXcdNHTxy2aesFluUAgbf/3tieXkWGHMmS
         VbE8og749u7gNIDKWmduAMF/WzBCb5wrGiVBbHCJVtc5XyFIpB4x97lU8nckM9k5rQLd
         tKR4atDYevOWSdmUtR4gNKBqeUf7R1N8rlEkqjrCAcwWj5hAFyNUBJWF3oXUIgqkCqUY
         RaIwFMP7mtu1v1NmgqZpc5xKQt1bAWeYGH207l0vGznWaZq85nebN3u/IdoFg41m/35L
         1r4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Oz3I3j9L;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id s5-v6si567880ybk.4.2018.03.04.07.49.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 07:49:18 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Oz3I3j9L;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id u5so6157606pfh.6
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 07:49:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=LGfE+H3m9sru881lzbDkOf10wEnlxVJnK/yDlbl0CMw=;
        b=Oz3I3j9Lxd/w6NubtzTs5ffeyWRZkey5lNkjSnQV6FX6X6BpPfYmhE2eEx536SvK7m
         NN79vIZV7pikF6fejJjRpLGRCGj4IunLjd0qEzucZ+e8JzSgNxH8seh5TxKXQbK4EkzV
         laDhnQF7Uechbr3HhK7SybZi6BOsl0PFqwfl+T6MjEOx0QGHQ+CWyglwgpn7BIU3BvLQ
         rV2UtPoHPmUsE4DS+lbZ+SFVm5ccIXIg/Pl9jKAGYG6e0p84x+gGlOkTkqz4KP9uFaM5
         wotfMhNqWiSVniL4/q1K0Hl4S/w/ZpYw9G58Tu580onzAxf9ioduZcWyv60qaeZKnCBG
         /elA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=LGfE+H3m9sru881lzbDkOf10wEnlxVJnK/yDlbl0CMw=;
        b=Tdmp9In6AbpNsOp9e+Z0jHsYocgXIJPW7hnB0gtkdcD8POsOpNAadsW1S0Xf2qN/Be
         r1Ek8D/GWCK4lu64Qms5SHKTd7eyCYmes4Zvu/0LrTvVnh82c0Pfjy7sDdmQZvAwiXE3
         OYLT7rddwTVyEl6GmHQfUj4ywCssfeAqGlYw63EvxUMCBYKaZFbmFeqpeRHieP1K2YS6
         XmT01IU4YDBCXIg457YtUl67FkZtYxpJ7OHH0D55vumix6sKYJbEc025B1nqKofr7O6g
         bs9MqbOnqnLr3qdJlKhtMqGZm7MomLXH33L+6jmfyXxJyQhhCxxA1k4Yb2eBMZwkCI46
         4VFw==
X-Gm-Message-State: APf1xPAX+Eed/OS6TKeeECLLcpZBRtDNOuuVOCD8y2zUiffU/nJ2ygTj
	yXBl5EE+RC0/HaKktnkVUk8=
X-Received: by 10.99.44.22 with SMTP id s22mr9919144pgs.111.1520178557993;
        Sun, 04 Mar 2018 07:49:17 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id o82sm24847163pfj.163.2018.03.04.07.49.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 07:49:16 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: alan@linux.intel.com
Cc: sakari.ailus@linux.intel.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 1/3] staging: media: Replace "be be" with "be"
Date: Sun,  4 Mar 2018 21:18:25 +0530
Message-Id: <1520178507-25141-2-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520178507-25141-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520178507-25141-1-git-send-email-arushisinghal19971997@gmail.com>

This patch replace "be be" with "be".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp2/css2400/ia_css_pipe_public.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/ia_css_pipe_public.h b/drivers/staging/media/atomisp/pci/atomisp2/css2400/ia_css_pipe_public.h
index df0aad9..4057a5a 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/ia_css_pipe_public.h
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/ia_css_pipe_public.h
@@ -402,7 +402,7 @@ ia_css_pipe_set_isp_config(struct ia_css_pipe *pipe,
  exception holds for IA_CSS_EVENT_TYPE_PORT_EOF, for this event an IRQ is always
  raised.
  Note that events are still queued and the Host can poll for them. The
- or_mask and and_mask may be be active at the same time\n
+ or_mask and and_mask may be active at the same time\n
  \n
  Default values, for all pipe id's, after ia_css_init:\n
  or_mask = IA_CSS_EVENT_TYPE_ALL\n
-- 
2.7.4


