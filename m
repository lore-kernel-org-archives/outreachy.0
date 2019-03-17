X-GM-THRID: 6668981360875536384
X-Received: by 2002:a25:3b89:: with SMTP id i131mr6529902yba.26.1552820122448;
        Sun, 17 Mar 2019 03:55:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4095:: with SMTP id n143ls2960688yba.13.gmail; Sun, 17
 Mar 2019 03:55:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyaeEsNlK8dxRXuy0QtSaO5ZJ6reUxCf0375weFFpxqvptxWnXZXlj7Ygmb+MoQ53OyNtKi
X-Received: by 2002:a25:2411:: with SMTP id k17mr6011716ybk.45.1552820122004;
        Sun, 17 Mar 2019 03:55:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552820121; cv=none;
        d=google.com; s=arc-20160816;
        b=TlXRZdrSjzJatUiKYTlTFP+qjdezv9KqZu95iXGj77eCrMUiWV208Ozn/Vn1M+K9pY
         vIn3rhYpr/cgVKOMSGiB14BOuae00JTeIPHzEKbaWL21TPNUmHUmKpxH0qb7P25oW9ur
         RKzmCg1w2eqadmMxJuuK6+AjUecBc7VrqCx0t8JeHFThXqWDL3hLBACV1aCha93Qqjhw
         whv0SxDdLhmU4CdXATsXfEJAmCpDdNJOjDLKv9rlZaav6/1TXzQvExsa+UyIciRLUEOt
         BZcOL2ChgbgQO+n8TSIUQOK3S1oDgS6xEuspJG3YNvJNqvav88/tfFpArRsZXt9jdSAv
         jZxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ck/+Ly2tGzOyYO7r4GH5TgWB97RVncl/FFDrUHkwyUw=;
        b=M5g0j49J2VgEL5VBU3imk/qDRIhCcUOiUYSjWJvwgc81H4F6wuT6Jv5lHI40SESqCo
         rtW46EUIE5lPpCxjp0XN3lvs8k+f2ZdAh1sFjzKQ56i5FvO6brWDsoCeOh8vMyyImOUl
         8mwDN8KOR+aC93SoXQ2dipOyErjFs3+8f0yhOV5WJ70EaZ4B2UqLTbufAVyyoTto+hcy
         sLHmWy28lC1tIpJhhcVP5l/Ql4NE/kCDFM7/S2ohEBxTLV35u1XTSm9WIXM3qAaBoS7c
         2hOvLXxgKPgYB0me9qmJxCfHGc0v1uZDGg1C33CyBvgxy0EC+1b4tm47xvW0TOoRriB2
         r3Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CkNwwjN2;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id f23si348246yba.3.2019.03.17.03.55.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:55:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CkNwwjN2;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id h8so9408552pgp.6
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 03:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ck/+Ly2tGzOyYO7r4GH5TgWB97RVncl/FFDrUHkwyUw=;
        b=CkNwwjN2rrZyXuo+IPC8/qMoVU6OmHtan4N/sk6/anTjPGUPMNL8khAo+Irwg5U2x4
         BzRRNAUQKU1iqYLC+WBwCjZz1wqmoJh75/TswrpVkZCIHeqpA2TDe0ZjhfZmmE3RPEVQ
         rtovnVj1CnivdfNmlJHuDDxq0IjeyK2Gbboj5SPmMzyhf/j2DD3Z7B6n0VGLRtym36TA
         qXVQvHAUEMhf4K3dm94IahgTClnzxvLLMdqk+I18usB3MBBPrtfJ/iu29/AY1SuIhFhj
         ArN5AbghrpOehlwIVTd9LhC7uEYasE46/jw55NIjVzrXZJkFwAhehUrRxoa+933nb9Ku
         V3cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ck/+Ly2tGzOyYO7r4GH5TgWB97RVncl/FFDrUHkwyUw=;
        b=HzsuAyocHhM4psTS8Ff46Cyz6lhVxncbPh7K4Oye5RjUOM4caOGpuIK/PKhsFkYslP
         jvObCKMJYml64EH0aRx3zkkirx6VHlhnM7RtJg49fkWmnQou9aUkINgnfYXmp6K2kkYI
         VVOML+xpas7kB62fOmmYiJia8sTW/7GtrEbYfX6Gqbmua5K+QycKKeOMdFK4I72Ih7pF
         +H4nkzGmCqkJLFO5p1ne60ySeJRyk4nwqTgi16lBuYs1/vRNw+TPaFqjaNgCqSycqJ18
         /R1dHCcV7vV0T3wdf30xVMOjYfoSX4UzCFlT1t10HmyBJL8+4WuvjSg0KaQGTvb5bY18
         ndYQ==
X-Gm-Message-State: APjAAAX+N9BXMLYGBX8UcVIHoJlq+CCnpJHGRd63DEIWvcKfvhRoumSl
	sfLZsllpGOIUUoKU5W+cjPM=
X-Received: by 2002:a17:902:784c:: with SMTP id e12mr13991467pln.117.1552820121305;
        Sun, 17 Mar 2019 03:55:21 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.100])
        by smtp.googlemail.com with ESMTPSA id k3sm24167791pfc.59.2019.03.17.03.55.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:55:20 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 1/4] Staging: rtl8188eu: rtw_recv.c: fix a tab indent issue
Date: Sun, 17 Mar 2019 16:25:10 +0530
Message-Id: <20190317105510.3012-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316133306.8747-1-sanjana99reddy99@gmail.com>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com>

Fix a tab indent issue. Issue found by checkpatch.pl semantic patch results for
rtw_recv.c.

[WARNING]:No extra space at the beginning of a line.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 1d83affc08ce..0d04057e6cf6 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -24,11 +24,11 @@ static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80, 0xf3};
 
 /* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
 static u8 rtw_bridge_tunnel_header[] = {
-       0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
+	0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
 };
 
 static u8 rtw_rfc1042_header[] = {
-       0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
+	0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
 };
 
 static void rtw_signal_stat_timer_hdl(struct timer_list *t);
-- 
2.17.1


