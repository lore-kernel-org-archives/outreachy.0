X-GM-THRID: 6664599067170963456
X-Received: by 2002:a37:a5c1:: with SMTP id o184mr11261855qke.42.1551722890626;
        Mon, 04 Mar 2019 10:08:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:aa9d:: with SMTP id f29ls2750991qvb.4.gmail; Mon, 04 Mar
 2019 10:08:10 -0800 (PST)
X-Received: by 2002:a0c:d4d6:: with SMTP id y22mr11295236qvh.61.1551722890113;
        Mon, 04 Mar 2019 10:08:10 -0800 (PST)
Received: by 2002:a37:a606:0:0:0:0:0 with SMTP id p6msqke;
        Mon, 4 Mar 2019 09:43:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqyhHweZD3aSMm8KgKdl9gDIN0zmrBALz9lmXMJ548arDeTNs3Dpvr65bJABjhoCLnWgQiu7
X-Received: by 2002:ac8:33d9:: with SMTP id d25mr11879433qtb.49.1551721418670;
        Mon, 04 Mar 2019 09:43:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551721418; cv=none;
        d=google.com; s=arc-20160816;
        b=yH7eiw3WRwNmJbGYcnf9535RO7S56yfS4JONKtwb5jYRLq3MABhSpA7f7xWTEbkLkQ
         QHjX3xRqA76vHgYZyglIBoHlLTrThUYeGBuK09jgdeBwxvYVIp0PQdvDidg5MHbeHy//
         TLwcgYjqXYq39bO3u8ZQEzcYGZDuLfm8QMoSNKtTFxHiaWgK5JlwVoKqYsns4T9oKYS8
         p6LE0Uzlc9xp8UkdCLZsBgDBiKx7NHViQenDrNWFWwIYjYQ3zAoD7I3/Bzl13E1Ib6Pt
         LuePG377IJ0tFtTAZSptSiwrfa8DNThp30l7gvDoBIdE6FTSw6k4wgVQxKsdl061NjPT
         fU+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=rIAWUpZkqlePfZJHXe06DaeRE9YddQV/dW1mcOh4eKc=;
        b=1Hn+SPCd7UgFfCez1Zq8z9/xeq0FpMBsjSPTcr/nplZB51sLFjDQqw6Dl7WvY9ytOL
         95WkyYe9bix7Ta3sB3U8Rq3v7ET9sDBVbkWWWXyf5rxza6IBAvmGSWMuT7rGiR8ch+Cz
         Wi2uCC9IO1kEprS4rifk0B57S71+bemxFWl2XrMquB9yNlgUAuKY8fPCAkLofbjT58Hz
         wrSND4OlRpAgYw6uYmhyOMaisGAPBpoNm5+DwzBhruY5gb19qIp/ntGO2kdG29pxKAUU
         IF4nA15XnfPewiD2nMfn0v5G7k7+14fFyq/TOU34mSYtOI/vEkVQ2fipH770YezxWRgU
         krSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=RQnaAs0+;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic304-20.consmr.mail.sg3.yahoo.com (sonic304-20.consmr.mail.sg3.yahoo.com. [106.10.242.210])
        by gmr-mx.google.com with ESMTPS id m1si266340qtc.2.2019.03.04.09.43.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 09:43:38 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.210 as permitted sender) client-ip=106.10.242.210;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=RQnaAs0+;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1551721415; bh=rIAWUpZkqlePfZJHXe06DaeRE9YddQV/dW1mcOh4eKc=; h=From:To:Cc:Subject:Date:From:Subject; b=RQnaAs0+5oh3pQSYbCt9GSHAKyH2JpxXPy09cfwmHDBXmZao2hOl5+u0Rk70j5eZngle7Z5sFyi1z1EKvR/cZ7w7eTwpYJgcUzCal38yiItb/tkhrashRZMFMJ+7rPEd3ASrRcUL2PfTz67T8+vqFKbRfnu0FbeDNhOmhMqlJaiGPv/WDdzw57h2tFHyFSozwPKoJqoET3i47mCFJo6VXQsVrDCw60DPHVuuwCQWnu8+sqfoX7Ixd2SbTb758NIWdDIzqKOR1e0gejOf3liMvhqH1qX5JJNzcR4w0+/DX5QdbDeCzHyJR98e2JEnu+/+/dspwlvH5JB1TwKiQ/VirQ==
X-YMail-OSG: F2sXcpgVM1lfvD4yMktpkPTlZ93YVVWxw_uLumWgSYqGcjIlg3hrYdwBYZk3dey
 s0FZhNwM4dTTJF9k3401Wnq90khqwc6EhjQ1j1y985MlHYbTG4ye4TMqjSexE0bcNdfUEZxlqK3y
 .J14dqEoPiQMN4AiVHn06bcTvGD1eSEgZK20LEzPywfcUx_XHvzxnrdc2bNPZEwCqbXXjlbFp3ar
 7mAxGH0dzNd6q16IAulBzgByqD.dPnLraVagiqu3ZQBBb7u86EIGcqY7kyVf6smWF4DTpKMV.ASw
 GRQn5igm83LXmZZtBhbaxVwYO_ugHnttqA8DEYuxAeNmaXdXnQsr0uzI_wIqqhigdTHHH2jz_OVd
 SAn8CmZjYlTdcn9rwznTeb9MqyTHlF6OBN8xrPjQoU9HB5_au.DfDgpH3vksYwd6yqFX83CawdDI
 RyNx1O2nue.jQd7GaNiZ_WsPRBIwBYz4EXJXnk8SqzdRuEPkGddOzuDG.KFfZYPFzJQV5P7NsKF8
 m0HYmbjaHxjgabmF2yXy7QNS2bySyPBxXvsGRU7bUVjr.4NVFvXvVW8.tmT968_sM5sjQfjkuDur
 OGqBGyPFaa_imaYFLcOrcP0ybY706d3nJsIq0kc2rg_XrwJT7YDF9OxQ6lg2nVYgds9BDS4CKFBr
 _7j6sB6M8EvJ9wilfC_JezkO8JElSHXtE7O16Hbt_PdQywXfUNyaW.i_.kmVxZWXZCtIx5oseu4s
 H1E6i.IFkn9m5ECveFnzg.XwkQWrejyKT7fqdMZYNI6j2s81WcX5ZaoTNCDqFvAOe6b1NgdjIHmy
 A1xcot5bIjudS7z447GcE8RyqLaUsGzJ4GsolE6fZwXxmdYmWiyu7Z2lnZk3VjMMvQpZg_Z1dIMC
 kTkHUAnhnTxPiX7eB_Qy8PWUbDr.e9ISiUAyWI0w1A6okG49WKazQstTwCtazpRdcsZ5jiUHuWeI
 Lw51mE6UQ0L.fAs_GZTTXb71Eu4Jr2iYPg_mmcFRXwrvp9QwbzhaMhgk0_wjpP0jjbnKJ1NsVihr
 GgvVg_r9Kb6tSWMnbEo7rRNLQDuwB604QPiv4MvQyZIOSh6vLXYBcSxRFM1hrR2qlukyIZ1dVNmp
 07fUSITGv9K2A0CpUdO4-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.sg3.yahoo.com with HTTP; Mon, 4 Mar 2019 17:43:35 +0000
Received: from 157.40.35.255 (EHLO localhost.localdomain) ([157.40.35.255])
          by smtp411.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 816669004c14e300adf1dc1f0f268f1a;
          Mon, 04 Mar 2019 17:43:32 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: elder@kernel.org,
	johan@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: greybus: Change NULL comparison to Boolean Negation
Date: Mon,  4 Mar 2019 23:13:15 +0530
Message-Id: <20190304174315.30222-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change NULL comparison to boolean negation. Issue found by Checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/greybus/bundle.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/bundle.c b/drivers/staging/greybus/bundle.c
index e97b2b87ba47..376ca53f0d83 100644
--- a/drivers/staging/greybus/bundle.c
+++ b/drivers/staging/greybus/bundle.c
@@ -32,7 +32,7 @@ static ssize_t state_show(struct device *dev, struct device_attribute *attr,
 {
 	struct gb_bundle *bundle = to_gb_bundle(dev);
 
-	if (bundle->state == NULL)
+	if (!(bundle->state))
 		return sprintf(buf, "\n");
 
 	return sprintf(buf, "%s\n", bundle->state);
-- 
2.19.1


