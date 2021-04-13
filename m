X-GM-THRID: 6950618792247427072
X-Received: by 2002:a17:906:6882:: with SMTP id n2mr31786428ejr.50.1618317047716;
        Tue, 13 Apr 2021 05:30:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:4c2:: with SMTP id n2ls3370998edw.2.gmail; Tue, 13
 Apr 2021 05:30:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxOyNxpKhZBFfZ94fZucNQIb7m5VhyNQj+MTC1ETWGa+JdOB9sCWr+OytLIOoTEOAv4+gVl
X-Received: by 2002:aa7:d9d7:: with SMTP id v23mr25989709eds.281.1618317046302;
        Tue, 13 Apr 2021 05:30:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618317046; cv=none;
        d=google.com; s=arc-20160816;
        b=nn4N/WsEJaAK+iTdElQpzFyZfAwiz3gjIsRyt9gMv7vcyC77ru6K0sSkjP6tLnMSot
         lrYD193dXKlTS1ZD+bIcevCuoRAlps6d4sVWymGA2wg03c9lB+qsaQDNj2EZv8ClmgW/
         DC3PDM4fbCUSHpIzPGqkhQ47kj6Py/tvj+3kw9mwOY2wW9wtYHz0AKh+zt/P8BKIUgH1
         alFAuunHva5me/UbdvnSvwkWggJNfyDkibTS1aNbAGMZmytiAooUR82gSFIPITlzrfvy
         /tSkoSlRb9C5pnv0GBFelNOtOtykld5pzyYF52dRjif9iJFts5/+4go1nATSYxlA3i/8
         xmMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=pAgxhBv5/NtB+cWLkX3BpIezGlDEtSC6ik2muIVW1Gc=;
        b=GVPD6Xj7S4wL3WyG72czvZ9/PrtxdF3dd2layxfSk9eP5OxUj3uGE78HgYHIrXbJ0P
         9r+yL3cqpDoXtNwFSWcZ2OaIRvd3dJb2JJyFc4JE1OzOlpSrfldL9VEgPZ+lXeF0eLD1
         +SCkiMlkbADtrIxcpZRKGmntP/UBNqNDAKoTZsYiCW51s73nT+IFzv+26kvhhyrmUOS0
         Ui9BuuONsKtAlwWKZecojTSNJvcyZrUTVtE1LDvQa/p8uZ10ede/fe2/xBZwSzJn0DEU
         h5eSwrtRPPNDAUlp0QEPlurnIGXaqMt665WHU1Z8raESFOJpTH/KK3qIb+d/uC9R4OX5
         vRhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CxyDwaoJ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com. [2a00:1450:4864:20::634])
        by gmr-mx.google.com with ESMTPS id y16si1189066edq.2.2021.04.13.05.30.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 05:30:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) client-ip=2a00:1450:4864:20::634;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CxyDwaoJ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x634.google.com with SMTP id g5so18926063ejx.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 05:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pAgxhBv5/NtB+cWLkX3BpIezGlDEtSC6ik2muIVW1Gc=;
        b=CxyDwaoJqNN/OwD7hAXxGSPuhJmXJM48x6CShyhYyO+l76LLtt8YRUsBDWgcCALiyR
         rO54kBHPYbvfVh7ohrqZD0xVFPDcNgfn7P86G/txg+UOmxlMRXisdxIsFHHXA1NCHvQA
         qmTm5tiEjL7F5dStR7q20BjNwsoQUGJJOEjqQahu84Snf6aqCP9RPi0C8q8YjhqsjjZ/
         AGRDtvpGaEByPOLwXAeFduUkkzXiPcnRzvori0VT57wE4v+FUQ0VBUpD7SjBW7MOD9QD
         U+RxaeaE62jBJ/OQV4clfralWwhWz2+wLXpsJ+2zhRJf/KXwGZaFh4KpuV+KIyL4Wx7Z
         KKGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pAgxhBv5/NtB+cWLkX3BpIezGlDEtSC6ik2muIVW1Gc=;
        b=JvNuhgCu0AH04K7dKjwxXOt/7U2LSpxD7f9/wsoWZpNSqkLB3hw1O6RBDoRTMvzEhN
         niWwHeOO6uU50hAi7jjGnD/4nUYIA/IENiY3PuJMalCzE5WC7Sn7Eo8OFEasjXu/GC5f
         b1BYA/sizbSrOU9soPn7V4Z7knnK6e8uacSufV+DPgDk3THCCYwPsCR3WtMCAwzZSg12
         Mw3driIR1TNkGRIDrWX4dRhO8JwRP8V1JerzlECy/+YBvjnfmN+QUTGcUiBs85Vo1zMV
         Q1uhTv/MqMRirj+85fkYLUpy6pin+5XDvfc1msiY/MrrfjGB3/6eDfX3l/lPwMW24rEK
         bZng==
X-Gm-Message-State: AOAM533/frRqvYZs+fTe0Ds7qCuoiTlJ7kk0mzYIn3ZpnirpWngzyiQ7
	5g6BFLD1YsV5VSUEAQkTdexdb119ctx/brbx
X-Received: by 2002:a17:906:1444:: with SMTP id q4mr32001626ejc.343.1618317045883;
        Tue, 13 Apr 2021 05:30:45 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id d22sm687391ejz.79.2021.04.13.05.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 05:30:45 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Replaced strncpy() with strscpy()
Date: Tue, 13 Apr 2021 14:30:41 +0200
Message-Id: <20210413123041.24260-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replaced strncpy() with strscpy() because of compilation time warnings
about possible truncation of output [-Wstringop-truncation].
Furthermore, according to the Linux official documentation, strscpy() is
preferred to strncpy.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 25ea8e1b6b65..aa58eedf5e86 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -1385,12 +1385,12 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
 			 * essid provided by the user.
 			 */
 			if (!ssidbroad) {
-				strncpy(tmp_ssid, ieee->current_network.ssid, IW_ESSID_MAX_SIZE);
+				strscpy(tmp_ssid, ieee->current_network.ssid, IW_ESSID_MAX_SIZE);
 				tmp_ssid_len = ieee->current_network.ssid_len;
 			}
 			memcpy(&ieee->current_network, net, sizeof(struct ieee80211_network));
 
-			strncpy(ieee->current_network.ssid, tmp_ssid, IW_ESSID_MAX_SIZE);
+			strscpy(ieee->current_network.ssid, tmp_ssid, IW_ESSID_MAX_SIZE);
 			ieee->current_network.ssid_len = tmp_ssid_len;
 			netdev_info(ieee->dev,
 				    "Linking with %s,channel:%d, qos:%d, myHT:%d, networkHT:%d\n",
-- 
2.31.1


