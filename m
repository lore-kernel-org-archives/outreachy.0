X-GM-THRID: 6948915129226362880
X-Received: by 2002:a92:c0c7:: with SMTP id t7mr8961525ilf.302.1617920382922;
        Thu, 08 Apr 2021 15:19:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:c911:: with SMTP id z17ls1117416iol.8.gmail; Thu, 08 Apr
 2021 15:19:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzJKbvsucjbCyGmp9FP2ufkIeNn+ToGx1l8BnmYiANHkgnTftdHgRLU88R0Uta25y7JnJg/
X-Received: by 2002:a5e:a519:: with SMTP id 25mr8279226iog.3.1617920382050;
        Thu, 08 Apr 2021 15:19:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617920382; cv=none;
        d=google.com; s=arc-20160816;
        b=Jpm9J/ONSGWhehUZsP+ibsAwaFkWvzq/Y4lu22YZMMWpnffQUOGCMbB54+ycjyxbge
         muPlYfFojtXXiihqtmMPT4iO3zA+YJVGHfXp4E3M+VRVkKFaTZ2Se+y1ZjlGsgRU9dZg
         6SmVTO1weqlEzgBGsi18jqanUS/GL/KFkF/pdDE1FMGOS3hBzZnNfg0maLNCZca+/Yjk
         /fQz8umvcbdoA3zCl6xoPyDOVySytyngJcEHwA6JZdMn/WWsi7lI8l18nnUqpniv091i
         9KvlCtTMuU4ix+vlkO0bGbBBpqVBNTaCrT+8MvYkGP0AS1E8BLD7+uZ2g2pNPidN3Bb8
         3upw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=LGRX6ULXaym2QnaLDDeOc3iQ2mdXQmSNVaooLdjGPVM=;
        b=Nq11CV6mImrF22WoJjLsBBIDrkO4Kl4ftuoOR8KdNjIM8kTdRoqn3pEfM/1vwFRekl
         ALpOZjgdq32zD/imMAy3ha2ujmDua/L9e86ESNbF+J1wwL7IjX6JmyWJhxpUYad7Rwe8
         FR1oMZMMCNX/Htr8AKkqH6pTBDahV5RlAkYz8Htu8hFxt8w2Zr5YOsdv4ZIu/8afpHiU
         ug1U21u7t2O5pW9emmrlpaLLtuBdWotg21aLHEuo4PlvpaMiBWoMGkbc/zV9k4Il5nWU
         iZn/ldwwbB4sEoRhjWDKDEHb2WNtIC4DGUf9+OyEe1Ql9W/9Eii9aoKvrp4GbXBYyFEF
         EBSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tH2IxDmB;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id h204si38502iof.0.2021.04.08.15.19.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 15:19:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tH2IxDmB;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id g15so2896191pfq.3
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 15:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=LGRX6ULXaym2QnaLDDeOc3iQ2mdXQmSNVaooLdjGPVM=;
        b=tH2IxDmBOhLU/kTmr7oFMXuhAZkMQkEVcuC3YB0XMuOIJ8iHkPwBS2FL2XFHazwwha
         2Hpn9u5JppW9li+KRfcGviHcat0Y/gcgl2nieQNrrDJQFZFHbQjbz0CULc3xnAt5Z8wc
         kj8IYGrohufRONIPulOK/8LMfEV5VrNNX45l7R+F2R7WERXmYipl4dyUl/IqtpqO8si9
         yisuU/ubykbl9JanCMEAlYPy73PKf2Rx5KZ8i77gf8AjFJOmidnAOemiay+xU+b63PUn
         /+1xU3hc7OfuEgYe4glzo1JuUsotL+gSJoxFogWfzMPgLCuEAQ/oY8S7y1qRqRi0ftdo
         bvyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=LGRX6ULXaym2QnaLDDeOc3iQ2mdXQmSNVaooLdjGPVM=;
        b=kQbP0eHQEyh4vzzdVSWdQJyWWPqXvLQcqGmh5yP3bOgqnQl7y0JiNDZRfYD4bJKBJb
         FiphbiY45vvs4vQP9xnTXS6QhfaMeCfAzp0jU1OoS0jw08ME4HBEp1udCzR8bAYNwFUL
         PnxHpInT9totysZnAQ+Wu8h7vAK20dZW9JmYDssHDz1ZhpAbI8IkMPSFZedpKMcqHUka
         5FWZ1EX4ftu/buMUY2ISywldM5xUXYvR+nTnpO+6EafxtNdJ6Bj1YtPIGNYLojjICU+D
         64oZ9HwVyktpVjl0VHgs3qrhddzCOxUl2AiMT63m99gXL/XD9O/dS6qH4W2GbNtd0qve
         rZ1Q==
X-Gm-Message-State: AOAM533PdNFGRl2e0aSbgZa/UDmKglWOUHvpgXi/3Vj41+bWDADWZhx1
	A2wie41hb2JBO0rTZ5AT36BxQ/Ib8S4J+LcT
X-Received: by 2002:a63:cc:: with SMTP id 195mr9911498pga.282.1617920381578;
        Thu, 08 Apr 2021 15:19:41 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([152.57.243.224])
        by smtp.gmail.com with ESMTPSA id w127sm387203pfc.51.2021.04.08.15.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 15:19:41 -0700 (PDT)
Date: Fri, 9 Apr 2021 03:49:30 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: narmstrong@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
	khilman@baylibre.com, jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH] staging: media: meson: vdec: matched alignment with
 parenthesis
Message-ID: <YG+Bcqxetfj98l6V@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Matched alignment with open parenthesis to meet linux kernel coding
style.
Reported by checkpatch

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/media/meson/vdec/codec_mpeg12.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/meson/vdec/codec_mpeg12.c b/drivers/staging/media/meson/vdec/codec_mpeg12.c
index 48869cc3d973..21e93a13356c 100644
--- a/drivers/staging/media/meson/vdec/codec_mpeg12.c
+++ b/drivers/staging/media/meson/vdec/codec_mpeg12.c
@@ -81,7 +81,7 @@ static int codec_mpeg12_start(struct amvdec_session *sess)
 	}
 
 	ret = amvdec_set_canvases(sess, (u32[]){ AV_SCRATCH_0, 0 },
-					(u32[]){ 8, 0 });
+				  (u32[]){ 8, 0 });
 	if (ret)
 		goto free_workspace;
 
-- 
2.30.2


