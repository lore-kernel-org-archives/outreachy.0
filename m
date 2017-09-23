X-GM-THRID: 6469049838689320960
X-Received: by 10.129.229.67 with SMTP id c3mr1609124ywm.56.1506193095495;
        Sat, 23 Sep 2017 11:58:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.82.1 with SMTP id g1ls735275iob.20.gmail; Sat, 23 Sep 2017
 11:58:14 -0700 (PDT)
X-Received: by 10.107.78.6 with SMTP id c6mr1450641iob.139.1506193094700;
        Sat, 23 Sep 2017 11:58:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506193094; cv=none;
        d=google.com; s=arc-20160816;
        b=AfMxZO28Ci9qXfHYhNUp43eQXuF3/RiibssJKi8WshU6xmr9k44srzsDSK5W8U6X6D
         ht/r3lw1DfeZszQ6+LUvq6zJhCxueA4b84oj+132B+obUsIT4WqqfK8rStE56RWcgJOt
         q81Rb6uafalfGVYbUZqNt47RWGJh7gsG82d+FTimWjjKmZ0938fB1S5+N6KvpmRZhRe7
         15HXTxstNn+IurJ7tI8bAGOw4jNDfpSnlFxo5seYx7cJINy9XWH5Eie2EhKJ/MTHzu89
         fiG7IxmY+CJnWze8+nbaGW69M/aZfe0Py3UEMEn6cspK5PLsunUneYaneSBU//r3hd0j
         wlNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=iiwDyOCflhowXMhc4gescBkOq2N3W1uI1oIezzY5NRM=;
        b=T9peQYEmiojEn5FGBuI/uuq4qapl1tBE3GoHCe91i558+ou+R+UOsdxrE9lpglaFs1
         10WeE3DpRvz41rlevHN+03/9uxMUQE/O2vXSEZ9pGZYS3hzk2inTPBOFJWms1EXKfUf+
         jGdg0gK/fYi4Nt98xCc1kyRdnO/meHgDM8RBEQkx7Z3xZ3gdMAlCNgMgYzJeHa/83lQq
         +VIYkl/u+BADHqIjMysamFvVV1agm9Pd899Nn7DeVZqDj6w9zj/AD76clm9dd/NlFjfc
         Hqa1+O7x9jvKDPsq/uiUrqmyEMIHdpH+Z52SeQaiqUCOBn68e+t1XjAiz75BiHRCYzwz
         S1Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UGcUky8Y;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y18si173475pfj.18.2017.09.23.11.58.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 11:58:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UGcUky8Y;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id j16so2552044pga.2
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Sep 2017 11:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=iiwDyOCflhowXMhc4gescBkOq2N3W1uI1oIezzY5NRM=;
        b=UGcUky8YT2jp8ib3YpggfLiDSKIs8y84KLysVmEWgDm2bXci6QIVBu01bHQlL7XsqK
         tv29NItVREzzZX5OumnuvhV40haH7Ds95Eo2UrbwiY6zgMgqaKIbePY8TYnogMJDhzh/
         fySq5LL+sZNKjdCMcBSO/MZQFl8X+Lnf+diJ7EuArFteH8d0uIqr7BoR/mEKNspS//0/
         A+xws5YUEwjkg926++jxmIINTAE+ClJEHOy0ZuToaE0NW7Prh4c0hssRHm/qqSSZBB46
         8BDEKLAS2ZHtRlMsLsDp75kqu3dXOv3iHIBDZ03MLzlShIv600S8/3Pkqn/HBFMvnVOJ
         JkMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=iiwDyOCflhowXMhc4gescBkOq2N3W1uI1oIezzY5NRM=;
        b=RVwSxM6nYRLA6bPycakFvLfonplAgl30KsXLFZqEkqJp4hOEkfdvYuIXbB5mMlI1xp
         vnfG1lUavoBUifOiLCTEAsYNNhDv4eyjlrRNzt9/Y4jYll3+OwPGGboxHE8aowbMRdPL
         D5FZ8oRFT9VgD+eZHWEiOlChKkNFFwc87QSs1O1++wCwFwOHEnTFN17kbPAawdtFNyPp
         kVY14BBkJTpCVCOzv+yj3kPzGDRghPcwym+4v/apGBzwnLJ65zFbsZ9MfJ2V8V4umcdf
         keVb+Os9wQ+ul3++fZMRZfx6dri69439HLxe1b/6Ru4zpl8jkPApST9eHHbPMx0o/U2M
         quCg==
X-Gm-Message-State: AHPjjUhPEzxBU3G/9MTzkqFkqLEohZ9L2PRyXClxXMLjnC+NrxXQt6KV
	I/oWS8g6aMX3HIvHGUwfl51mGphj
X-Google-Smtp-Source: AOwi7QBzEL2GwO3MMSzOsCRAkeqZW9s1iloSRlBlds75i0zgkKCYE7KaXSNxjYt+IX3tMrgt6gsDdg==
X-Received: by 10.99.114.20 with SMTP id n20mr2853100pgc.448.1506193094301;
        Sat, 23 Sep 2017 11:58:14 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([14.139.122.139])
        by smtp.gmail.com with ESMTPSA id t76sm4981606pfj.43.2017.09.23.11.58.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 11:58:13 -0700 (PDT)
Date: Sun, 24 Sep 2017 00:28:12 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: wilc1000: Blank lines aren't necessary before a
 close brace '}'
Message-ID: <366b2ad7e1bbc454659e73fda48ec695826ad673.1506192874.git.keerthigd4990@gmail.com>
References: <cover.1506192874.git.keerthigd4990@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506192874.git.keerthigd4990@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Before closing the brace, the blank line is not needed. That blank
line has not meaning here. so remove it.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 36dc2a0..e7882b2 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1111,7 +1111,6 @@ static int del_key(struct wiphy *wiphy, struct net_device *netdev,
 		g_key_gtk_params.key = NULL;
 		kfree(g_key_gtk_params.seq);
 		g_key_gtk_params.seq = NULL;
-
 	}
 
 	if (key_index >= 0 && key_index <= 3) {
-- 
2.7.4


