X-GM-THRID: 6660892236702547968
X-Received: by 2002:a25:3246:: with SMTP id y67mr975356yby.14.1551106872172;
        Mon, 25 Feb 2019 07:01:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:7ac3:: with SMTP id v186ls4413312ybc.8.gmail; Mon, 25
 Feb 2019 07:01:11 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYyYYsCSh3MxRqTcd3OaWLjUVpBIHSopp+5gkLz32X8QCEE1EFJR8v1DoXHsRKcgg7AVxEZ
X-Received: by 2002:a25:c407:: with SMTP id u7mr5923581ybf.59.1551106871129;
        Mon, 25 Feb 2019 07:01:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551106871; cv=none;
        d=google.com; s=arc-20160816;
        b=bgEnQXj6KmOofgQAOAo3dLC5yh1zOWfAkMJ1VMb6Mi60/eLbeQkFH4yPQUigBsAFnc
         Ap+ntz+cfvK3m322gbmwI8yMkpwKnOkXjeOozEzRfanHFvDJFDxWEBEUA3is4mmX41LC
         LHXcneCkpn+zINkFK46HWja1yGp//94Z5ZXAUlBDTiaN8Q7b7oLsWRgn1lkaItoK6v/V
         rJ2zehPNKmBR/PwBoCn/MPj7OIDLefq0ooQw4gFBnA+KVB00i1M/d4P3crHKAdpfX4Bi
         t4r/3wux6TGxFIEj3tIawqz500FwIL4pNeGBKz4vmbnyuU3371bBF8Xh6+T5bOdxaWys
         IcXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=sYa+QOqQEBzFwW9ajVpVyh0ur8DKY43IT+9qtI0f45Q=;
        b=EzMUj2bgcvTmUw1tAb5CAE0ZRcCiUbaFFfPYZvaQfigbvgBUJFtsATUtUe2GW18+yd
         PvbL6S3oxw/lRU7PaCTux08/d7MSSh6ZLsMSE5esMNGOakJCB33TmhSQudEoZbqGmRXE
         HyKwpHL/pEOYWnnMeBldh1U8DGSU3r0ooHIbtw33DrjTeHRZqNyEfl/KtmNMI/jVKW9J
         JJ+6gLA65EPpyiRaLPEMzaIbR19KGWLAC/wLJ6EwwZ05cZEysuJjDoBnkw+OzPToM8NK
         nq0eF5x9zfQ73ptwBQN5eOZksuozImIf+o9yXsMK1LIawGHcYQ0ejF7VIh4iwxQ4QsII
         0oIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VyEDsdt0;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id z185si415626ywa.3.2019.02.25.07.01.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:01:11 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VyEDsdt0;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id s1so4610335plp.9
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 07:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=sYa+QOqQEBzFwW9ajVpVyh0ur8DKY43IT+9qtI0f45Q=;
        b=VyEDsdt0FfAWWTPGiWugjHKiGbsOA73nwzFo+B4tiVH/5V8exkm2ZKr8jj7e3FHkyN
         EhGA9gkJw7AdBh/vZKrNrfoFt3iIVVoKXGu+EbBoGmIaq3ogKyA+T6OHYfMTQk7NfJ+A
         pQygnCL7sHRziDGMiYSnnjjqiLZjChD3eg6Wto01JPzsRGTRNSmeePjAcmGb2zFyyBCL
         /LyE5U5q9UQ1K+OyrWTSk92l1NpPJ7FKrMV6aTXtcUwykjVaab8VgjsEFfSTEqRz2yOb
         PN1wtDSwvM68USZGu+rUJ8neEdrkU9p22vF+CD0iZ3Y81XAOVl6QeVUAfQjLwodqd4RT
         /kRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=sYa+QOqQEBzFwW9ajVpVyh0ur8DKY43IT+9qtI0f45Q=;
        b=eQO+wfBEPVuz09Cq5YWQRwsftmNSN/XNrvtT0mCFrUjnl22TRWfKaWC1BwvxUt+scP
         1MXMxmfBrxf+N0YrFS1DQ4W5raU+9VOifzYlCejagNyLUUqtoWjuNJ/mtWAFjizR3zIC
         nZiswqNXjikJYgltyvCnfc3X9qvOL0v0iX2MpgGWGMsXOeY50lCr5P5I3BnUv7N8jQkY
         7PlHc5I/gvvPHTWtnZQIual63JsVw0tq2H9+5K71NxJggi00qxcoTa95UafZ+w+QAsvi
         M3v/7y/hkEJ4D8lBJcEL84qmWQpbPERVjf1mGR40wER309MPnRRC8znz6CUAWV5qTzLr
         Fmpw==
X-Gm-Message-State: AHQUAuaDW8LnVcz3WoPFj3z7kMQ2gxt3noJZ3G2qBGnMBRWpr5SVt4JG
	519IWGxX77U2Ry0dbnOG1NXOC/Q6sfs=
X-Received: by 2002:a17:902:b117:: with SMTP id q23mr21315501plr.160.1551106870198;
        Mon, 25 Feb 2019 07:01:10 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([2401:4900:16b1:6abd:a897:24ba:190d:c029])
        by smtp.googlemail.com with ESMTPSA id q5sm15228832pga.71.2019.02.25.07.01.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:01:09 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] Staging: fwserial: Add blank line after declarations
Date: Mon, 25 Feb 2019 20:30:51 +0530
Message-Id: <20190225150051.9355-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Add blank line after the structure declaration,
struct fwtty_port *port = tty->driver_data;
Issue found using checkpatch.pl

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

v2:
   Commit log modified to be imperative.
v3:
   Commit log modified.

 drivers/staging/fwserial/fwserial.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
index 3e416f5bbcba..a1b90ea7fcb8 100644
--- a/drivers/staging/fwserial/fwserial.c
+++ b/drivers/staging/fwserial/fwserial.c
@@ -1213,6 +1213,7 @@ static int get_serial_info(struct tty_struct *tty,
 			   struct serial_struct *ss)
 {
 	struct fwtty_port *port = tty->driver_data;
+
 	mutex_lock(&port->port.mutex);
 	ss->type =  PORT_UNKNOWN;
 	ss->line =  port->port.tty->index;
-- 
2.17.1


