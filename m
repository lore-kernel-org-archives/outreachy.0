X-GM-THRID: 6394409513300000768
X-Received: by 10.176.83.151 with SMTP id k23mr4758406uaa.20.1488814504097;
        Mon, 06 Mar 2017 07:35:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.173 with SMTP id r42ls7777978otb.26.gmail; Mon, 06 Mar
 2017 07:35:03 -0800 (PST)
X-Received: by 10.200.44.172 with SMTP id 41mr5573397qtw.30.1488814503720;
        Mon, 06 Mar 2017 07:35:03 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y90si79358pfa.6.2017.03.06.07.35.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:35:03 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so13537933pfg.2
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 07:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rJ7/cdrkqaMjZUYYZwcIAv5hPok9T6+kqjxQJUHXfOs=;
        b=SmWdxH8xlaLgobxWrsNATo3lGTTH3wjv7JoKINWxxSFdNNSpODqiz4Sw/00qHeUuM3
         jpl2umwAq+EDBjrMSP1sVWFWJQJrKMEq9ynO6XnF5tPY//BlW3vIK3Rm1KM/c/2Z4HdO
         FxX8PCfGNGKfJBs0rUSWiLDUHRUOAuBGjUaM+VmBoSRw4P0esmYtsD3IK4ixp4Y3FZst
         Ckdmzvemnci8n/9vei88b5f6skoN774CnHEk3bHhUpzYA7XlaSXMSLocmP43XidI0Q9Z
         cgJPOHcaj0NG3YRG/nuPHdDxKVhFu93NMFnO57uMBV2tI2qL/S/eqPDlfDWSL3wPjpJi
         AKUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rJ7/cdrkqaMjZUYYZwcIAv5hPok9T6+kqjxQJUHXfOs=;
        b=MRvquIjmTo6ANbaZWulqQgZB/Z4Vplu/wkzVkz7KfamZPBLnmHWC+i9d16kvSI6qEF
         H/Thc29DkrOWvE4B6zDZSdTpBu6G3biAem2buCSH83smVAG4KvJUkwaz0AO5/7ZdOLwj
         G1K3jSM1vpeaebMkE3LkKfOLVKaz/szGNuMZA9kkw5LvUNDheRVkBlD5aUDsionu7ci+
         I1TA1ceVLcKeSTv0txfRsckeSXNK/IZC221wjEFIS/HdFb6Rmo3boewqS+WHXfxhBQv3
         hjnTRobY1kfQMO8ACHhB8SQ4ROeYcTdf3ooaM9+dbdJDdmvv6IEKAY48Vjh2sLUVu6ZJ
         aDlA==
X-Gm-Message-State: AMke39lHpGI4J3bbod6O7XtIS9ODCMRQT78QFXFVgGP31BsEECsryGo64Qm6ac1HchnY7Q==
X-Received: by 10.84.141.129 with SMTP id 1mr26940657plv.166.1488814503456;
        Mon, 06 Mar 2017 07:35:03 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id e129sm40391770pfe.8.2017.03.06.07.34.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:35:02 -0800 (PST)
Date: Mon, 6 Mar 2017 21:04:52 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: bcm2835-audio: merge two if conditions into one
Message-ID: <e6a2881d03ee9414c462177f5b437bc1a1733679.1488814329.git.aishpant@gmail.com>
References: <cover.1488814329.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488814329.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Patch merges two if conditions doing the same work into one.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
index d60d702..f4ce4801dc 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
@@ -122,10 +122,8 @@ static int snd_bcm2835_playback_open_generic(
 	audio_info("Alsa open (%d)\n", substream->number);
 	idx = substream->number;
 
-	if (spdif && chip->opened) {
-		err = -EBUSY;
-		goto out;
-	} else if (!spdif && (chip->opened & (1 << idx))) {
+	if ((spdif && chip->opened) ||
+	    (!spdif && (chip->opened & (1 << idx)))) {
 		err = -EBUSY;
 		goto out;
 	}
-- 
2.7.4


