X-GM-THRID: 6615237556487323648
X-Received: by 2002:a37:d453:: with SMTP id l80-v6mr37137084qki.0.1540230079082;
        Mon, 22 Oct 2018 10:41:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:9ecc:: with SMTP id h195-v6ls628917qke.2.gmail; Mon, 22
 Oct 2018 10:41:18 -0700 (PDT)
X-Google-Smtp-Source: AJdET5d9/P4/8SvOg+H6bTPDaa0MgR6GZ97KHmN2n7jFDG3xyOomrZVr1o02ZVb/RLYFVcJztVZL
X-Received: by 2002:a37:7ec1:: with SMTP id z184-v6mr14784820qkc.52.1540230078403;
        Mon, 22 Oct 2018 10:41:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540230078; cv=none;
        d=google.com; s=arc-20160816;
        b=F92jWf0QO7mLUCuE9XDsIxv/iW5WJbua/+hU1bNexW4+99TB7ZnAmTcfjNo7IqEgHF
         iMHHGemvhJ93sHofjrP6+/1LMXZiF618ksun4GcVjVIXEHoo1tON608RxWxxvNpCkCWR
         pQS4fq/LC6p+HsfJllb163PlohoabmERVGMUvKCydyTOa2wrzjC2A+IEqa/9LoSIItJP
         A336YpgTkIBfDdnbSGHECblw1zOu42H41VJo8PNxR8/e+ZFNSI5SUwTSnSMfvvV+v+3Q
         GgYEMD4uuebZ44K+JaZcPDgzQyEMJT/JCstz72BpC2px7ymkBZ3+2qh6lsSvGJAj0Pi4
         knjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZySTdCWiughQHdF8dskSvcvmNozjzbmaQzoADeoL/Hk=;
        b=Tb/6/vjIHVhWc4aXvTWRteDsvMMokrL9N7y4VO2muno/e9NI7uGObGYFEOkSXiWCAi
         WoRrncnWMPgdEudLQ4KIxv/tuoxfiPhXu9btV4ZinaIZGtphfF/dA7Y1/BhI3KygBPPP
         MdmwOXrtuEvhWZTLi5B30qDBqM4xzKGLOpK7oljp0UcLysFxBFDsHKL+1wBU2Mp0pBXW
         eprqll9UamXHKEHJPZZP6/QI/8MloUvQszz7BADQRvdnEudE1lc3toNCLqqRmgJ25eZd
         y1ZESNS9ECh97CyV2h/EU05i8ayZLSrkYwtdcVa08fQpWuHfGQQK5nORvFvPgtVr2p/m
         ZA7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XtrACE8A;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com. [2607:f8b0:4864:20::332])
        by gmr-mx.google.com with ESMTPS id 202-v6si1278192qkd.4.2018.10.22.10.41.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 10:41:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) client-ip=2607:f8b0:4864:20::332;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XtrACE8A;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x332.google.com with SMTP id c32so40892002otb.8
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Oct 2018 10:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZySTdCWiughQHdF8dskSvcvmNozjzbmaQzoADeoL/Hk=;
        b=XtrACE8AZVEyKW1vD9/iq8MaIV6/GOYd9LCvAX1lcikVSdumBmO/6L+8hiPtoUS/wz
         IN314Bk8kTIKP/fXWUN7PJ7mEESx+BdYBeviKEV0J1CSg+Ja4AumxXxx2kA8UxbKqCQu
         5ixAp+zEQLUkH5wPf8kN0K6uHDgE+QdTqwncjEFZZIZgd9kwCdzbUAgwiRdSx+4JEI9q
         b6+Gv2LPiyGA2RqAEoYdds1OcNlsGusC8pH43a7NLiT+tjieKpi7dcjYgF22kLwzfT5l
         HEGQAxj+p2V7vj7hTJ5L2i9MO6XNAUhVYafMVN+U3Ray78HFMHOPMKbQ2IazTJIwY5bJ
         dbUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZySTdCWiughQHdF8dskSvcvmNozjzbmaQzoADeoL/Hk=;
        b=Y5YP4JXYKGWCvFiCqq1CmxkOTv4C8objfRFvGNDp/k5iDTYbw33x1BhoWEQ0NLQ5yV
         7UuRwuuqSSVP3UFQhbyLzv/n57Eox1ykHnaN7scBDd71V7VhboRkGHsrgdSm1ouiNuZq
         mBXOkI0fNmplvqiTx5tvrB3xI49PlxRhyBJ0CtfM2j4k8ZYAXmBRA1XgZUN0G0+KBD+a
         t/aS6Zn4IRXbFkQCH2oJ+V772dgIdSv/VUCK0ink2Hy8r0uBhz1MXKMl+xws/IEOqcWN
         aaSdYh3p7hHfsopENHPPDNtFU5D1W94G9LNK4qZyojaNXJ77o0fsQ4fXiWXBYBGnglq9
         6aIg==
X-Gm-Message-State: ABuFfohdl15y64hw1bjpCMvc+RrjfHRs/q2rYsnFCV7JVpcoOBSOMyMq
	hbmvWC/F72tkZJTQ0+0rtf2yC964RBk=
X-Received: by 2002:a9d:5a83:: with SMTP id w3mr27988126oth.87.1540230077842;
        Mon, 22 Oct 2018 10:41:17 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from v (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id m5sm244336otb.49.2018.10.22.10.41.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 22 Oct 2018 10:41:16 -0700 (PDT)
Date: Mon, 22 Oct 2018 13:41:14 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/3] staging:rtl8192u: Fix misspelling in struct member name
 - Style
Message-ID: <4d1bd329f112fb50c5a234cfa12babf868f3b03c.1540229302.git.kimbrownkd@gmail.com>
References: <cover.1540229302.git.kimbrownkd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540229302.git.kimbrownkd@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix the spelling mistake in the name of struct member
'cmdpacket_frag_thresold'. 'thresold' should be 'threshold'. Issue found
by checkpatch.

This is a coding style change which should have no impact on runtime
code execution.

Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
---
 drivers/staging/rtl8192u/r8192U.h          | 2 +-
 drivers/staging/rtl8192u/r819xU_firmware.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
index e65a893fd084..ec4de86933ba 100644
--- a/drivers/staging/rtl8192u/r8192U.h
+++ b/drivers/staging/rtl8192u/r8192U.h
@@ -370,7 +370,7 @@ typedef struct _rt_firmare_seg_container {
 } fw_seg_container, *pfw_seg_container;
 typedef struct _rt_firmware {
 	firmware_status_e firmware_status;
-	u16               cmdpacket_frag_thresold;
+	u16               cmdpacket_frag_threshold;
 #define RTL8190_MAX_FIRMWARE_CODE_SIZE  64000
 	u8                firmware_buf[RTL8190_MAX_FIRMWARE_CODE_SIZE];
 	u16               firmware_buf_size;
diff --git a/drivers/staging/rtl8192u/r819xU_firmware.c b/drivers/staging/rtl8192u/r819xU_firmware.c
index c3ea906f3af3..153d4ee0ec07 100644
--- a/drivers/staging/rtl8192u/r819xU_firmware.c
+++ b/drivers/staging/rtl8192u/r819xU_firmware.c
@@ -24,7 +24,7 @@ static void firmware_init_param(struct net_device *dev)
 	struct r8192_priv	*priv = ieee80211_priv(dev);
 	rt_firmware		*pfirmware = priv->pFirmware;
 
-	pfirmware->cmdpacket_frag_thresold = GET_COMMAND_PACKET_FRAG_THRESHOLD(MAX_TRANSMIT_BUFFER_SIZE);
+	pfirmware->cmdpacket_frag_threshold = GET_COMMAND_PACKET_FRAG_THRESHOLD(MAX_TRANSMIT_BUFFER_SIZE);
 }
 
 /*
@@ -49,7 +49,7 @@ static bool fw_download_code(struct net_device *dev, u8 *code_virtual_address,
 
 	firmware_init_param(dev);
 	/* Fragmentation might be required */
-	frag_threshold = pfirmware->cmdpacket_frag_thresold;
+	frag_threshold = pfirmware->cmdpacket_frag_threshold;
 	do {
 		if ((buffer_len - frag_offset) > frag_threshold) {
 			frag_length = frag_threshold;
-- 
2.17.1


