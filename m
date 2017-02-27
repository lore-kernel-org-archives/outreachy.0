X-GM-THRID: 6391112880745349120
X-Received: by 10.99.113.76 with SMTP id b12mr6234252pgn.162.1488189834005;
        Mon, 27 Feb 2017 02:03:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.218 with SMTP id o87ls3216626ioi.23.gmail; Mon, 27 Feb
 2017 02:03:53 -0800 (PST)
X-Received: by 10.98.21.19 with SMTP id 19mr3937702pfv.29.1488189833476;
        Mon, 27 Feb 2017 02:03:53 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id h79si334356pfh.2.2017.02.27.02.03.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 02:03:53 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 25so470275pgy.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 02:03:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jGuwnSDi2SbPG+3ihNjRS35/QQLI/Iztir3vpcJaHv0=;
        b=cJyTS5tls/nxrAH6aqv6NKuks9EUfUuHxgqYjUdcPLAWhl707JwurvcJ2lQWsLVkIK
         MxtGfF7EGZkVmaUxjo1nD0bsqiXswGgl2gk+j0vj8lj1glKCG+UuhTeyLBFU/UsoD+Xk
         FMqgPfo0786zv9zWaXsJBnCb2tNUjFu4BOTb1hk23+i3mE2lUrgSsyTI2jit2lAtHsF6
         HmRw1emt+/hhnJeJEiTmhgaiUTFJxAdU6InFGtJZ7MjfjbgAyC0owjCpd71iLWCzB+95
         rnD/H3oV6Ksy3D3mJkQZ5BhVF+y7EUPcRddVL7O5XzQE269vphaVYvxEn2AHTRhNjoWU
         qtTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jGuwnSDi2SbPG+3ihNjRS35/QQLI/Iztir3vpcJaHv0=;
        b=Euyt/1kmqEKdlK5SUZIAYjcc5xFkvrmnpWST/1JoxEZbVFb6aSD/pnFqvlCbnu8OH0
         DaxxS9xscFMEwl9vhvn4NC6pl4SCJ5bab3pD0TX0uAQYytz3Rq1KwSIQCJxNfamaQzlL
         x5kbdaZ3T4nA4pCTwXkYaFH597VSCQVhPASW32/MqqO/Y0QoewVE80Y8TyWM+Xa3o9yu
         8JC4guNL1PELwx7E7QWVJ/z+DobgrlYqptiNYvOw2KO4AH4wZ3EORndfrZQ7ShwL9kEx
         cjhdm3tg5VhcP4d7QsVL/kd6uELODz1r760X+Vmq1J1gC0M4h0iH1BkjI4W2TJwKb0hf
         n7Dg==
X-Gm-Message-State: AMke39ktlhLG7R79zZupex/xU1iTiuIydot37AzYYbFjNLZ/OVTZ2CxiOVaTj1N4LGnfhA==
X-Received: by 10.84.143.203 with SMTP id 69mr22881981plz.68.1488189833172;
        Mon, 27 Feb 2017 02:03:53 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.161])
        by smtp.gmail.com with ESMTPSA id z74sm29510825pfd.70.2017.02.27.02.03.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 02:03:52 -0800 (PST)
Message-ID: <58b3f988.4d8d620a.8af7e.f91c@mx.google.com>
X-Google-Original-Message-ID: <20170227100344.GA2733@<rvarsha016@gmail.com>>
Date: Mon, 27 Feb 2017 15:33:45 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v5 1/7] staging: sm750fb: Add braces around if statement.
References: <cover.1488189320.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488189320.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Added braces around if statement. This patch fixes the following
checkpatch issue:

CHECK: braces {} should be used on all arms of this statement

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 10cf729..7948ca9 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -16,9 +16,9 @@ logical_chip_type_t sm750_get_chip_type(void)
 
 void sm750_set_chip_type(unsigned short devId, u8 revId)
 {
-	if (devId == 0x718)
+	if (devId == 0x718) {
 		chip = SM718;
-	else if (devId == 0x750) {
+	} else if (devId == 0x750) {
 		chip = SM750;
 		/* SM750 and SM750LE are different in their revision ID only. */
 		if (revId == SM750LE_REVISION_ID) {
-- 
2.9.3


