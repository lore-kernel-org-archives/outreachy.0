X-GM-THRID: 6469049838689320960
X-Received: by 10.107.135.17 with SMTP id j17mr1550969iod.140.1506193071919;
        Sat, 23 Sep 2017 11:57:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.115.11 with SMTP id o11ls916227vkc.11.gmail; Sat, 23 Sep
 2017 11:57:51 -0700 (PDT)
X-Received: by 10.176.89.177 with SMTP id g46mr1804194uad.87.1506193071027;
        Sat, 23 Sep 2017 11:57:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506193070; cv=none;
        d=google.com; s=arc-20160816;
        b=MtCRqgbrV9iTUKpLjl5UlzrcdCamKhBPNcj9y5R8x/hCq00sehKHxs4KzD74bucIxw
         7YbNYq6Ruvm1D8g5jkmshnXngWsiHJVlxxbZYK4xzFWULSfao0FcbbHVffgxhfFxrpsq
         4LTA+9uhtiU+Qrro/w4h6zQvAiqRhIsTQzf+554VZ202iQHrLGJNcSH+tWHqsSEB2kgt
         ZmNAWlCloYnfnZ+GvFqiWgQ/Zh8M2goxyiqtGYMzLIuB8rPtrkgu4a23ClE1plqeNdbs
         3otrlFLLY48gilLgsqYW1+oF9pSdGaZ7Eoc9J9Dd0X7I+0RDyyzKl90gKttIR+vr524x
         Klww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=GvXxb1W6EldBp0JVx3rroHhpfErwQj2T5ymqUFnChWA=;
        b=ikW/UO05ekO4zgyf2M3rQgmxEiJLW01t5+Q+HNhrO2wekud8gVojLDyaLh3MIM0O00
         g15jARzGvmYYVJptW1YOGSgGVfD/XNNejzJOsirQk02Wv6AbHfHyZJjv3cJnp9vtOLW2
         IGXfVTEmBGCb8Ga9RZUyJBpBga/mnloHKmw+uYjDGFlwIPmMlbme9O1MfgzVJy3tlP/e
         Xzrk+AHr7A7YtilhE+dSj72NM/HXbljGATuFLXghzOnsUzdfS/MUxgKFyok7fA5xD1N6
         lrGiWJawzrPSHvDChBbGF4Li3AysCmoVkJyWvDkBCXjWF6GS93HXMwT540XOAKWBDbzv
         drGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fF0VEedg;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 82si185304pfz.6.2017.09.23.11.57.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 11:57:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fF0VEedg;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id v5so2540233pgn.4
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Sep 2017 11:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GvXxb1W6EldBp0JVx3rroHhpfErwQj2T5ymqUFnChWA=;
        b=fF0VEedgqWIehdAKsJ6Bi49LNc6ZQHd29Gtl8iFPD2s9rOyJ4AXIdK+Da5WT4swCXe
         NNFaWypdJbn/qf8bxQ55HeSgzcJu9Zbm/3n0i5hQHaZhZ4mJZY/wUiA2bLtJyAqjvi4j
         CL7AId3VUqCDnEtGfhYdEjXt0DPbxgIaat5lv0kZ4+Y69AI7/pfYjNyBRIM+6LiQMi5K
         3oFdz2JdP5HiKxeiYJtFN5TDGhc/wZPAO2PzB4Bpg1ho1s5oReVszhcX1hE7Mvp/0Ehv
         ltiVSElrEUuKC2GXVj59r7YvODcs6CqlfMSqw64at+6xYVKNjG7EOLIiEvqdTo5z54W7
         UPeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GvXxb1W6EldBp0JVx3rroHhpfErwQj2T5ymqUFnChWA=;
        b=hTk+5GgJuGZ2SALLp1TP9SFda7Ikk1MURedlo0kFT3jx2z4fI7jZcQmQ7GIm/nDrbw
         nIup3/0scOQIbQ9/qxe6+GaP7gCkER9LHCAa/jlg6M+ToADEhd7UW4jAzBj+vRJa2lx0
         HYKHN12HUsDDRAINO0e/CQNZOjX0RqhGNFJO3/83OjUjj+ufkz9c7oNHmS6AmiTWaYwb
         DUnH8i5sQAobJxMlYn5PaO9jGTFheRJbyajgP8Wq4rE5/P1sGvZt8Hy32eoVFQjP7JR0
         Q58Mx8PZ7WE0mUoxuTUpcNd6giw2Af3vMfpSMDuhfGtzgZIR30G3Av4VDhhQmv1fzUGR
         SIqQ==
X-Gm-Message-State: AHPjjUhvw2P29Pn3FcB6avr5MWTEFzXjN3wsImHbih8KLsjcxpr0z4ur
	WqFtRdlnPzdVeCGgBQOm0z2gcQCq
X-Google-Smtp-Source: AOwi7QCX3kZy5tqMg4vJX5CxU0Fj8KQkO6bFbxEfyTy3Z31+esh5FU9MTtG4PEEOIUr9sz9mRCQlWw==
X-Received: by 10.99.121.129 with SMTP id u123mr2972862pgc.246.1506193070641;
        Sat, 23 Sep 2017 11:57:50 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([14.139.122.139])
        by smtp.gmail.com with ESMTPSA id q23sm4767735pfk.182.2017.09.23.11.57.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 11:57:50 -0700 (PDT)
Date: Sun, 24 Sep 2017 00:27:48 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: wilc1000: No space is necessary after a cast
Message-ID: <0a42225d2ac8416a7b74f2c9cea55bfd4d0521e8.1506192874.git.keerthigd4990@gmail.com>
References: <cover.1506192874.git.keerthigd4990@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506192874.git.keerthigd4990@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

A space after type casting is not needed. All the other typecasts
in this file don't put space after typecast. so remove space
after typecast at this line.

checked with checkpatch.pl script

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index ac5aaaf..36dc2a0 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1617,7 +1617,7 @@ static int mgmt_tx(struct wiphy *wiphy,
 
 	*cookie = (unsigned long)buf;
 	priv->u64tx_cookie = *cookie;
-	mgmt = (const struct ieee80211_mgmt *) buf;
+	mgmt = (const struct ieee80211_mgmt *)buf;
 
 	if (ieee80211_is_mgmt(mgmt->frame_control)) {
 		mgmt_tx = kmalloc(sizeof(struct p2p_mgmt_data), GFP_KERNEL);
-- 
2.7.4


