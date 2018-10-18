X-GM-THRID: 6613551654020055040
X-Received: by 2002:a24:1fc8:: with SMTP id d191-v6mr4649574itd.24.1539851387840;
        Thu, 18 Oct 2018 01:29:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:610a:: with SMTP id v10-v6ls7965284iob.8.gmail; Thu, 18
 Oct 2018 01:29:47 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60Egj48DPw2IbHoe4tCz2v3HL14x554wixJxa+G8eveRLlNhEaO28Wiu1DZoh34Gt7FmHv1
X-Received: by 2002:a6b:9308:: with SMTP id v8-v6mr22294882iod.23.1539851386995;
        Thu, 18 Oct 2018 01:29:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539851386; cv=none;
        d=google.com; s=arc-20160816;
        b=NjXMbXXFBYoYZjjHib40XQ0/UYaOfdlTyVwvh2JObsvGRveef5Y7v42XC+LSsDAQ/J
         KOUR+yb22DtPvRCvzDBQgfIDodXsX66I+1GOD+wYTEy27szDKYJHdlcDOiFt5zK5OlzV
         JxxkznSnLesuKuLKnk+OmMBYmu/+NBs1DqFq58A45iInTJ55JgkM4ZAb41js2hUcaBe0
         sr4XObRPu5FtbciIeQ0gYxAeJzYBM0Np5UATI4o1/EXQNxial9cqIZCI25w+OJ/9A/Ll
         vhMl7Z8ffLr8T6vpz/eU94OHlEyR+nDQ0tgDulC1U2PcXsiMwbKOcdzSGMXx+8e4ncBQ
         ufjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=PMa6EUmk4tNmSu/CeIrsQWmfkuKYeNhGRkRstTuzmo4=;
        b=dfU32pCVQtnkCOuZweXPDyuYB+mAjZ20xkp2+Uuf6ueWPQWXVrXiVJbg4HfS1JaKmd
         J5KnXjFZrVoC7CJkJogoeOMo08gCQG01DGgY9hYY1OTWaje1Y5yBx1G4CBUe+jKb0TBt
         x9EQHtYw5ehu0AvHSxwl1JFi2TuIbtwOBvQ9M7JiLzheDIGSrKCiPpyr+qz9YBaXjtey
         exen2wL7Pegt6IdzubQT9VZHZVj1VwYaczB08wi1XMCOIVI26W6BK7AlK6tbCtBX86Ay
         Z/t7tHFUnT58us2Pzm1hKR6ywvvzPTRFifQYVyUbc4FZbDrkGA4WQP2Z6EqNWtZosoLB
         qSew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dkUvMFwB;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-it1-x143.google.com (mail-it1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id h10-v6si206574ith.2.2018.10.18.01.29.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Oct 2018 01:29:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dkUvMFwB;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x143.google.com with SMTP id c85-v6so5960652itd.1
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Oct 2018 01:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PMa6EUmk4tNmSu/CeIrsQWmfkuKYeNhGRkRstTuzmo4=;
        b=dkUvMFwBzpOEGj5UZM+whjvH56pav2hG6iaoIQaTluXjj27S/ouE6jb/2Foeqr7nty
         udeOG3JPIuBKgO88f6u2hsZlvjSCSAtbuQAco2SyC9Er4PIO5kKA0HCQv7KtAtnuLdFd
         pq6Vm4DmyHeCQTtA4xoMaHayE8XQVyFgDz6irXdUAZZLejda3bHw+815Y++epZGn/jBt
         N/sgCXNIQ1dFQ5BCX+cNuAqP/pKskUXyopP0NcsjkmfUt/fzZL+JxR2l5qc8l3sEcTcG
         HB5xDlX3sioEzN65d/uHak+xyMPrLhusFwyHik6l/AxMVx6jiGXqQRebTEVSTA7fSvsf
         Et5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PMa6EUmk4tNmSu/CeIrsQWmfkuKYeNhGRkRstTuzmo4=;
        b=Sd9WwbBhitzICQF+iFKqEk44nsfXgZp5RseI/uxD+OzVGcP8yKcniTEBa0Cb1CSwHU
         aWWJszUp/giHdHkuNmqhw+NpCe7c9cNCtU9lQuBpO4OhVxWE1tDToVPb2OmWpLrEj3Fe
         gU5jNJHJdELKnrMB+CPONNDUdU633fDIKhwsY7L2K9lM72W97KGNN6q2Rr28kiBb9Qjs
         6+hlBlZchzgFwWwfz1lBDaVJQ7Lmy3mIc8hQfMmdXXvwJJoPOY1BLpe8baVfBonk4IpP
         xLDbqJQXOekT59nMzf5OmtlQyHfj0mi5ZO5K/fCb4YTu/Bh2qaSCCGj3jhvI18yUjU5H
         GlUQ==
X-Gm-Message-State: ABuFfogAcMry8LXFAhpoKfNHbvvH69m1/fWLMXm00GcEF0Aknd8UrrOD
	YfMYLrP4XPOHutuq1UyQ+tQEzpQ5q5c=
X-Received: by 2002:a02:1e07:: with SMTP id m7-v6mr22825420jad.128.1539851386590;
        Thu, 18 Oct 2018 01:29:46 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id y7-v6sm1953589itb.40.2018.10.18.01.29.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 18 Oct 2018 01:29:46 -0700 (PDT)
Date: Thu, 18 Oct 2018 01:29:42 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: wlan-ng: Replace long int with long
Message-ID: <20181018082939.GA5847@k-vBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Replace long int with long as int is unnecessary according to the
checkpatch.pl warning. K&R write, 'The word int can be omitted... and
typically is.'

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
Change since v1:
 - Make the patch description clearer.
--- 
 drivers/staging/wlan-ng/p80211conv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
index 91debcf20646..0ff5fda81b05 100644
--- a/drivers/staging/wlan-ng/p80211conv.c
+++ b/drivers/staging/wlan-ng/p80211conv.c
@@ -430,7 +430,7 @@ int skb_p80211_to_ether(struct wlandevice *wlandev, u32 ethconv,
 			/* A bogus length ethfrm has been sent. */
 			/* Is someone trying an oflow attack? */
 			netdev_err(netdev, "DIXII frame too large (%ld > %d)\n",
-				   (long int)(payload_length -
+				   (long)(payload_length -
 				   sizeof(struct wlan_llc) -
 				   sizeof(struct wlan_snap)), netdev->mtu);
 			return 1;
-- 
2.17.1


